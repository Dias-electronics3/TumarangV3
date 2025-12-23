  #include <WiFi.h>
  #include <Firebase_ESP_Client.h>

  // ========== KONFIGURASI WI-FI DAN FIREBASE ========== //
  #define WIFI_SSID "EIND-SMKN1Katapang"
  #define WIFI_PASSWORD "3l3ktr0-Nek@t"
  #define API_KEY "AIzaSyBqTijUtHSQtKKHf9BZPgZJXGyktII70OQ" // Password atau Code untuk akses akun ke Firebase
  #define DATABASE_URL "https://smart-gardeenn-default-rtdb.firebaseio.com" // URL dari Firebase

  // ========== UART UNTUK ARDUINO MEGA ========== //
  #define RX2 16
  #define TX2 17

  // ========== FIREBASE OBJECTS ========== //
  FirebaseData fbdoStream;  // Terima Data Realtime dari Firebase
  FirebaseData fbdoWrite;   // Kirim Data Realtime ke Firebase
  FirebaseAuth auth; // Cocokan dengan Firebase
  FirebaseConfig config; // Konfigurasi API & URL

  // ========== VARIABEL SENSOR & Mutex ========== //
  // Menggunakan TipeData "volatile" agar data dari sensor dan relay selalu update pada saat receive dan transfer
  volatile float suhu = 0.0;
  volatile int kelembaban = 0;
  volatile bool dataSiapKirim = false;

// Pengaman Data Agar Tidak Bentrok dengan Logika lain agar tidak bertabrakan antara logika Receive dan Transfer (Suhu dan Kelembaban)
  SemaphoreHandle_t dataMutex = NULL; 

  int lastRelayState = -1;

  // Watchdog / reconnect
  unsigned long lastWiFiOk = 0;
  const unsigned long WIFI_WATCHDOG_MS = 120000; // restart kalau 120s terus offline

  // ===== DEKLARASI FUNCTION YANG DIGUNAKAN =================
  void TerimaDatafromMEGA(void *pvParameters);
  void KomunikasiFirebase(void *pvParameters);
  void streamCallback(FirebaseStream data);
  void streamTimeoutCallback(bool timeout);

  // ===================== SETUP ===================== //
  void setup() {
    pinMode(2,OUTPUT);
    Serial.begin(115200);
    Serial2.begin(9600, SERIAL_8N1, RX2, TX2);

    // buat mutex untuk proteksi shared vars
    dataMutex = xSemaphoreCreateMutex();

    // Koneksi WiFi
    Serial.print("Connecting to WiFi");
    WiFi.begin(WIFI_SSID, WIFI_PASSWORD);
    unsigned long start = millis();
    // Menunggu Connect ke WiFi
    while (WiFi.status() != WL_CONNECTED && millis() - start < 15000) {
      delay(300);
      Serial.print(".");
    }
    // Berhasil Connect ke WiFi
    if (WiFi.status() == WL_CONNECTED) {
      Serial.println("\nWiFi Connected!");
      Serial.print("IP ESP32: ");
      Serial.println(WiFi.localIP());
      digitalWrite(2,1);
      lastWiFiOk = millis();
    } else {
      Serial.println("\nWiFi connect failed (will retry in task).");
    }

    // Firebase Setup
    config.api_key = API_KEY;
    config.database_url = DATABASE_URL;

    // anonymous sign-in (ok jika public read/write rules)
    Firebase.signUp(&config, &auth, "", "");
    Firebase.begin(&config, &auth);
    Firebase.reconnectWiFi(true);

    // Subscribe TUMARANG/relay dari Firebase untuk kontrol relay pada Arduino Mega Secara Realtime
    // Menggunakan Stream agar perubahan data lebih cepat membacanya dan tidak delay terlalu lama (Lambat)
    if (Firebase.RTDB.beginStream(&fbdoStream, "/TUMARANG/relay")) {
    // ===== CALLBACK = SISTEM DI MANA DIA AKAN BERJALAN SENDIRI TANPA KITA PERINTAHI KARENA AKAN BERJALAN SECARA OTOMATIS DARI LIBRARY ====== //
      Firebase.RTDB.setStreamCallback(&fbdoStream, streamCallback, streamTimeoutCallback);
      Serial.println("Stream mulai: /TUMARANG/relay");
    } else {
      Serial.printf("Stream start failed: %s\n", fbdoStream.errorReason().c_str());
    }


    // RTOS
    xTaskCreatePinnedToCore(TerimaDatafromMEGA, "ReceiveTask", 4096, NULL, 1, NULL, 1);
    xTaskCreatePinnedToCore(KomunikasiFirebase, "KomunikasiFirebase", 8192, NULL, 1, NULL, 1);
  }

  // ===================== LOOP ===================== //
  void loop() {
    // kosong — semua dijalankan di RTOS
    delay(1000);
  }

  // ========== TASK: Terima data dari Mega ==========
  void TerimaDatafromMEGA(void *pvParameters) {
    while (true) {
      // Bagian untuk menerima semua data yang di kirim dari Arduino Mega
      if (Serial2.available()) {
        String data = Serial2.readStringUntil('\n');
        data.trim();

        if (data.startsWith("TEMP:") && data.indexOf(";HUM:") != -1) {
          int splitIndex = data.indexOf(";HUM:");

          float tempVal = data.substring(5, splitIndex).toFloat(); // Data Suhu -> float
          int humVal = data.substring(splitIndex + 5).toInt(); // Data Kelembaban -> interger

          // proteksi penulisan variabel bersama
          if (xSemaphoreTake(dataMutex, (TickType_t)10) == pdTRUE) {
            suhu = tempVal;
            kelembaban = humVal;
            dataSiapKirim = true; // Siap untuk mengirim data
            xSemaphoreGive(dataMutex);
          }
        }
      }
      vTaskDelay(50 / portTICK_PERIOD_MS); // Delay setiap 0,05 detik
    }
  }

  // ========== FIREBASE STREAM CALLBACK (Realtime untuk relay) ==========
  void streamCallback(FirebaseStream data) {
    // data.path(), data.dataType(), data.stringData()
    Serial.println("Stream callback fired.");
    Serial.print("Path: "); Serial.println(data.streamPath());
    Serial.print("Value: "); Serial.println(data.stringData());

    String val = data.stringData(); // Terima Kendali Relay "False" or "True"
    if (val == "true" || val == "false") {
      int relayState = (val == "true") ? 1 : 0; // Konversi True = 1 & false = 0 
      if (relayState != lastRelayState) {
        lastRelayState = relayState;
        // langsung kirim ke Mega
        Serial2.println(relayState == 1 ? "RELAY:true" : "RELAY:false");
        Serial.printf("Relay -> %s (via stream)\n", val.c_str());
      }
    }
  }
    // ========== TASK UNTUK MEMULIHKAN KEMBALI SISTEM APABILA TERJADI EROR ATAU ESP32 TIDAK TERHUBUNG KE WIFI ========== //
  void streamTimeoutCallback(bool timeout) {
    Serial.printf("Stream timeout: %s\n", (timeout ? "true" : "false"));
    // coba restart stream kecil jika timeout
    if (timeout) {
      if (!Firebase.RTDB.beginStream(&fbdoStream, "/TUMARANG/relay")) {
        Serial.printf("Restart stream failed: %s\n", fbdoStream.errorReason().c_str());
      } else {
        Firebase.RTDB.setStreamCallback(&fbdoStream, streamCallback, streamTimeoutCallback);
        Serial.println("Stream restarted.");
      }
    }
  }

  // ========== TASK UTAMA FIREBASE (KIRIM DAN TERIMA DATA) ========== //
  void KomunikasiFirebase(void *pvParameters) {
    while (true) {
      // ------- Pastikan WiFi terhubung (auto reconnect) -------
      if (WiFi.status() != WL_CONNECTED) {
        Serial.println("WiFi lost, trying reconnect...");
        WiFi.reconnect();
        vTaskDelay(2000 / portTICK_PERIOD_MS);
        // ESP RESTART JIKA TIDAK CONNECT KE WIFI TERLALU LAMA
        if (millis() - lastWiFiOk > WIFI_WATCHDOG_MS) {
          Serial.println("WiFi dead for too long. Restarting...");
          ESP.restart();
        }
        continue;
      } else { // JIKA TERHUBUNG KE WiFi
        lastWiFiOk = millis();
      }

      // ====== KIRIM DATA SENSOR KE FIREBASE ======= //
      bool shouldSend = false;
      float suhuLocal = 0.0;
      int humLocal = 0;

      if (xSemaphoreTake(dataMutex, (TickType_t)10) == pdTRUE) {
        if (dataSiapKirim) {
          shouldSend = true;
          suhuLocal = suhu;
          humLocal = kelembaban;
          dataSiapKirim = false;
        }
        xSemaphoreGive(dataMutex);
      }

      if (shouldSend) {
        if (Firebase.ready()) {
          // KIRIM DATA KE FIREBASE
          if (Firebase.RTDB.setFloat(&fbdoWrite, "/TUMARANG/temperature", suhuLocal)) {
          } else {
            Serial.printf("Write temp failed: %s\n", fbdoWrite.errorReason().c_str());
          }
          if (Firebase.RTDB.setInt(&fbdoWrite, "/TUMARANG/humidity", humLocal)) {
            Serial.printf("Sent T:%.2f H:%d\n", suhuLocal, humLocal);
          } else {
            Serial.printf("Write hum failed: %s\n", fbdoWrite.errorReason().c_str());
          }
        }
      }

      // ==== BACKUP JIKA FIREBASE TIDAK TERHUBUNG KARENA TIDAK CONNECT WiFi
      if (!fbdoStream.httpConnected()) {
        if (Firebase.ready()) {
          if (Firebase.RTDB.getString(&fbdoWrite, "/TUMARANG/relay")) {
            String status = fbdoWrite.stringData();
            int relayState = (status == "true") ? 1 : 0;
            if (relayState != lastRelayState) {
              lastRelayState = relayState;
              Serial2.println(relayState == 1 ? "RELAY:true" : "RELAY:false");
              Serial.println("Relay changed (via polling fallback).");
            }
          } else {
            // jika gagal, cetak alasan
            Serial.printf("Polling relay failed: %s\n", fbdoWrite.errorReason().c_str());
          }
        }
        vTaskDelay(300 / portTICK_PERIOD_MS);
      } else {
        // stream aktif, cukup delay singkat
        vTaskDelay(800 / portTICK_PERIOD_MS);
      }
    }
  }
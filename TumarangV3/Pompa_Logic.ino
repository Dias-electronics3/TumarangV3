

////////////////////////////////////////////////////////////////////// BLOK UNTUK KONTROL STATE POMPA //////////////////////////////////////////////////////////////////////////////

// FUNGSI UNTUK MENENTUKAN SKALA PRIORITAS KONDISI UNTUK MENGONTROL STATUS POMPA
void updatePompaStatus() {
  bool statusAkhir = true;  //RELAY OFF

  // Prioritas 1: Kontrol Manual dari Button/TFT
  if (!pompaTFT) {
    statusAkhir = false;  // RELAY ON
    modePompa = MODE_MANUAL;
    if (buzzerActive) {
      buzzerActive = false;
      digitalWrite(Buzzer, LOW);
      Serial.println("Buzzer: MATI - Manual ON");
    }
  }
  // Prioritas 2: Kontrol dari ESP
  else if (!pompaESP) {
    statusAkhir = false;  // RELAY OLEH ESP ON
    modePompa = MODE_MANUAL;
    if (buzzerActive) {
      buzzerActive = false;
      digitalWrite(Buzzer, LOW);
      Serial.println("Buzzer: MATI - ESP ON");
    }
  }
  // Prioritas 3: Mode Jadwal
  else if (modePompa == MODE_JADWAL) {
    statusAkhir = KontrolPompaSesuaiJadwal();  // RELAY DIKONTROL SESUAI DENGAN JADWAL SETTING YANG SUDAH DITETAPKAN
  }
  // Prioritas 4: Default OFF Ketika Sistem berada di Menu Utama dan tidak kontrol apapun dari setiap perintah
  else {
    statusAkhir = true;  // RELAY OFF
    modePompa = MODE_UTAMA;
    // Matikan buzzer di mode sensor
    if (buzzerActive) {
      buzzerActive = false;
      digitalWrite(Buzzer, LOW);
    }
  }

  // Relay update jika ada perubahan pada mode yang sedang digunakan
  if (statusAkhir != pompaStatus) {
    pompaStatus = statusAkhir;
    digitalWrite(RELAY1, pompaStatus ? HIGH : LOW);

    Serial.print("Status Pompa: ");
    Serial.println(pompaStatus ? "OFF" : "ON");

    // Matikan buzzer ketika pompa menyala
    if (!pompaStatus) {
      buzzerActive = false;
      digitalWrite(Buzzer, LOW);
      Serial.println("Buzzer: MATI - Pompa ON dari jadwal");

      // Reset semua trigger status
      for (int i = 0; i < 3; i++) {
        buzzerAlreadyTriggered[i] = false;
      }
    }
  }
}

bool KontrolPompaSesuaiJadwal() {
  DateTime now = rtc.now();
  int nowSec = now.hour() * 3600 + now.minute() * 60 + now.second();

  for (int i = 0; i < 3; i++) {
    auto &j = jadwal[i];
    int onSec = j.jamON * 3600 + j.menitON * 60 + j.detikON;
    int offSec = j.jamOFF * 3600 + j.menitOFF * 60 + j.detikOFF;

    if (onSec <= offSec) {
      // Jadwal normal (tidak melintasi tengah malam)
      if (nowSec >= onSec && nowSec < offSec) {
        return false;  // Pompa ON
      }
    } else {
      // Jadwal melintasi tengah malam
      if (nowSec >= onSec || nowSec < offSec) {
        return false;  // Pompa ON
      }
    }
  }

  return true;  // Pompa OFF
}

//////////////////////////////////////////////////////////////////////////////// BLOK KONTROL BUZZER ////////////////////////////////////////////////////////////////////////////////

// === FUNGSI CEK JADWAL UNTUK BUZZER ===
void AlarmBuzzer() {

  if (modePompa != MODE_JADWAL || !pompaStatus) {
    if (buzzerActive) {
      buzzerActive = false;
      digitalWrite(Buzzer, LOW);
      Serial.println("Buzzer: MATI - Bukan mode jadwal atau pompa ON");
    }
    return;
  }

  DateTime now = rtc.now();
  int nowSec = now.hour() * 3600 + now.minute() * 60 + now.second();

  bool shouldBuzzerActive = false;
  int remainingSeconds = 0;

  // Cek semua jadwal
  for (int i = 0; i < 3; i++) {
    JadwalPompa &j = jadwal[i];
    int onSec = j.jamON * 3600 + j.menitON * 60 + j.detikON;

    // Kondisi Buzzer akan menyala sebelum waktu 10 detik penyiraman
    if (nowSec >= (onSec - AlarmBuzzerSebelumOn) && nowSec < onSec) {
      shouldBuzzerActive = true;
      remainingSeconds = onSec - nowSec;

      // Debug info hanya sekali
      if (!buzzerAlreadyTriggered[i]) {
        Serial.print("BUZZER ALARM! Jadwal ");
        Serial.print(i + 1);
        Serial.print(" ON dalam ");
        Serial.print(remainingSeconds);
        Serial.println(" detik");
        buzzerAlreadyTriggered[i] = true;
      }
      break;
    } else {
      // Reset trigger status jika sudah lewat waktu alarm
      if (buzzerAlreadyTriggered[i] && nowSec >= onSec) {
        buzzerAlreadyTriggered[i] = false;
        Serial.print("Buzzer reset untuk Jadwal ");
        Serial.println(i + 1);
      }
    }
  }

  // Update status buzzer
  if (buzzerActive != shouldBuzzerActive) {
    buzzerActive = shouldBuzzerActive;

    if (buzzerActive) {
      buzzerStartTime = millis();
      Serial.println("Buzzer: MULAI berkedip");
    } else {
      digitalWrite(Buzzer, LOW);
      Serial.println("Buzzer: BERHENTI");
    }
  }
}

// === FUNGSI UPDATE STATUS BUZZER ===
void updateBuzzer() {
  if (buzzerActive && pompaStatus && modePompa == MODE_JADWAL) {
    unsigned long currentTime = millis();

    // KONDISI BUZZER BERKEDIP
    if (currentTime - buzzerStartTime >= buzzerInterval) {
      buzzerState = !buzzerState;
      digitalWrite(Buzzer, buzzerState ? HIGH : LOW);
      buzzerStartTime = currentTime;

      // Debug occasional (setiap 10 kali flip)
      static int debugCount = 0;
      if (debugCount++ % 10 == 0) {
        Serial.println(buzzerState ? "Buzzer: BEEP" : "Buzzer: silence");
      }
    }
  } else {
    // KONDISI UNTUK MEMATIKAN PAKSA BUZZER APABILA POMPA SUDAH MENYALA
    if (buzzerState || digitalRead(Buzzer) == HIGH) {
      buzzerState = false;
      digitalWrite(Buzzer, LOW);
    }
  }
}
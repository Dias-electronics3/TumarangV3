// === LIBRARY YANG DIGUNAKAN ===
#include <SPI.h>                // KOMUNIKASI DENGAN TFT
#include <SD.h>                 // SD CARD
#include <OneWire.h>            // SENSOR SUHU (DS18B20) KARENA 1 WIRE DATA
#include <DallasTemperature.h>  // SENSOR SUHU (DS18B20)
#include <MCUFRIEND_kbv.h>      // TFT
#include <Adafruit_GFX.h>       // TFT (GRAFIS PADA DISPLAY)
#include <TouchScreen.h>        // TOUCHSCREEN TFT
#include <RTClib.h>             // RTC
#include <Wire.h>               // I2C RTC
#include <EEPROM.h>             // PENYIMPANAN MEMORY EEPROM
#include "Variabel.h"           // VARIABEL

// === FONT YANG DIGUNAKAN ===
#include <Fonts/FreeSerifItalic24pt7b.h>  // FONT TUMARANG
#include <Fonts/FreeSans9pt7b.h>          // FONT SMK
#include <Fonts/FreeSansBold24pt7b.h>     // FONT WAKTU UTAMA

// === OBJEK ===
RTC_DS3231 rtc;
MCUFRIEND_kbv tft;
ModePompa modePompa = MODE_UTAMA;
TouchScreen ts = TouchScreen(XP, YP, XM, YM, 300);

// === PEMBACAAN SENSOR DS18B20 ===
OneWire oneWire(ONE_WIRE_BUS);
DallasTemperature sensors(&oneWire);


void setup() {

  Serial.begin(9600);   // SERIAL MONITOR
  Serial1.begin(9600);  // KOMUNIKASI -> ESP32

  // INISIALISASI PIN I/O YANG DI GUNAKAN
  pinMode(PompaON, INPUT_PULLUP);
  pinMode(PompaOFF, INPUT_PULLUP);
  pinMode(KERING, OUTPUT);
  pinMode(LEMBAB, OUTPUT);
  pinMode(BASAH, OUTPUT);
  pinMode(RELAY1, OUTPUT);
  pinMode(Buzzer, OUTPUT);

  // MEMASTIKAN SEMUA OUTPUT MATI TERLEBIH DAHULU DI AWAL
  digitalWrite(RELAY1, HIGH);
  digitalWrite(Buzzer, LOW);
  digitalWrite(KERING, LOW);
  digitalWrite(LEMBAB, LOW);
  digitalWrite(BASAH, LOW);

  delay(200);  // MEMBERIKAN JEDA UNTUK ARDUINO STABIL

  Serial.println("=== INISIALISASI EEPROM ===");

  // KEMBALI MEMBACA DATA JADWAL POMPA YANG TERAKHIR DI SIMPAN KE EEPROM
  InisialisasiEEPROM()

    // SETUP SENSOR SUHU DS18B20
    sensors.begin();

  // SETUP RTC
  if (!rtc.begin()) {
    Serial.println("❌ RTC tidak ditemukan!");
  } else {
    if (rtc.lostPower()) {
      DateTime backup = readTimeFromEEPROM();
      rtc.adjust(backup);
      Serial.println("✅ RTC di-set dari EEPROM backup");
    }
  }

  // Setup TFT
  uint16_t ID = tft.readID();
  tft.begin(ID);
  tft.setRotation(3);
  tft.fillScreen(BLACK);

  // PADA SAAT AWAL MULA PROGRAM, MUNCULKAN SCREEN MENU AWAL
  showMenuAwal();

  // SYSTEM READY
  Serial.println("=== SYSTEM READY ===");

  // UNTUK MEMASTIKAN BAHWA KONTROL POMPA JADWAL 1 SUDAH TERSIMPAN KE EEPROM
  debugJadwal1();
}

// === LOOP ===
void loop() {

  // KONTROL POMPA MANUAL DENGAN BUTTON EKSTERNAL
  bool On = digitalRead(PompaON);
  bool Off = digitalRead(PompaOFF);
  if (On == 0) pompaTFT = false;  // BUTTON HIJAU (ON)
  if (Off == 0) pompaTFT = true;  // BUTTON MERAH (OFF)

  // MENENTUKAN STATUS POMPA SEDANG BERADA DI MODE MANA
  updatePompaStatus();

  // MEMASTIKAN BUZZER HANYA AKAN BEKERJA PADA SAAT COUNTER WAKTU JADWAL SUDAH BERJALAN MENDEKATI BATAS SETTING
  if (modePompa == MODE_JADWAL) {
    AlarmBuzzer();
  } else {
    // MEMASTIKAN JIKA DILUAR MODE JADWAL MAKA BUZZER AKAN OFF
    if (buzzerActive) {
      buzzerActive = false;
      digitalWrite(Buzzer, LOW);
    }
  }

  // TETAP MENJALANKAN BUZZER TANPA MENGANGGU PROGRAM LAINNYA
  updateBuzzer();

  // DATA & VISUAL APA YANG AKAN DITAMPILKAN DI MENU UTAMA TFT
  if (currentScreen == MENU_AWAL) {
    updateTime();
    updateTemperature();
    updateMoisture();
    tampilkanModePompa();
    serial();
  }

  // KETIKA MEMASUKI MENU SETTING WAKTU POMPA ON/OFF, MAKA JAM AKAN TETAP SESUAI DENGAN PADA DISPLAY UTAMA
  if (currentScreen == SET_WAKTU) {
    updateTimeInSetWaktu();
  }

  // SENSOR SUHU & KELEMBABAN
  sensors.requestTemperatures();
  temp = sensors.getTempCByIndex(0);
  int val = analogRead(MOISTURE_ANALOG_PIN);
  moist = map(val, 1023, 0, 0, 100);

  // KONFIGURASI TOUCHSCREEN PADA DISPLAY TFT (SET ROTASION "3") KARENA INI MIRROR LANDSCAPE)
  TSPoint p = ts.getPoint();
  pinMode(XM, OUTPUT);
  pinMode(YP, OUTPUT);
  if (p.z > MINPRESSURE && p.z < MAXPRESSURE) {
    int x = map(p.y, TS_TOP, TS_BOT, 0, tft.width());
    int y = tft.height() - map(p.x, TS_LEFT, TS_RT, 0, tft.height());
    LogikaSentuhanTFT(x, y);
  }

  // SERIAL KOMUNIKASI DENGAN ESP32
  serial();

  // DEBUGGING BAHWA SISTEM SEDANG BERADA PADA MODE APA?? KONDISI POMPA ON/OFF?? BUZZER ON/OFF??
  static unsigned long lastDebugTime = 0;
  if (millis() - lastDebugTime >= 30000) {
    lastDebugTime = millis();
    Serial.print("DEBUG - Mode: ");
    Serial.print(modePompa == MODE_JADWAL ? "JADWAL" : "OTHER");
    Serial.print(" | Buzzer: ");
    Serial.print(buzzerActive ? "ACTIVE" : "INACTIVE");
    Serial.print(" | Pompa: ");
    Serial.println(pompaStatus ? "OFF" : "ON");
  }
}

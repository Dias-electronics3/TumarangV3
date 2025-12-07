#ifndef VARIABEL_H
#define VARIABEL_H
#include <Arduino.h>

// === HASIL KALIBRASI TOUCHSCREEN TFT 3,5 Inch UNTUK ROTASI 3 ===
#define YP A1
#define XM A2
#define YM 7
#define XP 6
#define TS_LEFT 190
#define TS_RT 915
#define TS_TOP 200
#define TS_BOT 925
#define MINPRESSURE 10
#define MAXPRESSURE 1000

// === WARNA TFT ===
#define BLACK 0x0000
#define WHITE 0xFFFF
#define GRAY 0x8410
#define RED 0xF800
#define GREEN 0x07E0
#define BLUE 0x001F
#define YELLOW 0xFFE0
#define ORANGE 0xFD20
#define CYAN 0x07FF
#define DARKGREEN 0x03E0
#define BROWN 0xA145

// === BUTTON PANEL ===
#define PompaON  24
#define PompaOFF 26

// === INDIKATOR STATUS KELEMBABAN TANAH ===
#define KERING 37
#define LEMBAB 35
#define BASAH 33

// === PIN RELAY===
#define RELAY1 31
#define RELAY2 27
#define RELAY3 25
#define Buzzer 29

// === SENSOR DS18B20 ===
#define ONE_WIRE_BUS A11
// === SENSOR MOISTURE ===
#define MOISTURE_ANALOG_PIN A10

const int EEPROM_BASE = 20;  // ALAMAT PENYIMPANAN EEPROM DI ALAMAT KE 20
int selectedSchedule = 0;    // JADWAL YANG SEDANG DI EDIT

// === VARIABEL BACAAN TERAKHIR DARI SENSOR ===
int lastSecond = -1;
int lastMoisture = -1;
int moist;

// === VARIABEL BUTTON TERSAMBUNG KE GND (PULLUP) ===
int GNDPompaON = 0;
int GNDPompaOFF = 0;

// === VARIABLE BUZZER ===
bool buzzerActive = false;
unsigned long buzzerStartTime = 0;
const unsigned long buzzerInterval = 500;  // 500ms on, 500ms off
bool buzzerState = false;
const int AlarmBuzzerSebelumOn = 10;  // 10 DETIK BUZZER AKAN ON SEBELUM POMPA JADWAL ON
bool buzzerAlreadyTriggered[3] = { false, false, false };

// === UI POSITION DI TFT ===
int LebarTFT = 480;
int TinggiTFT = 320;
int hamburgerX = 10;
int hamburgerY = 10;
int touchOffsetX = -10;
int touchOffsetY = -8;

//PEMBATASAN PENGIRIMAN serial
unsigned long lastSend = 0;
const unsigned long intervalSend = 5000;

//SETTING WAKTU
int tempHour = 0;
int tempMinute = 0;
int tempSecond = 0;

//FLOAT SENSOR
float temp;
float lastTemperature = -1000.0;

// === SETTING TIMER ===
struct JadwalPompa {
  int jamON, menitON, detikON;
  int jamOFF, menitOFF, detikOFF;
  byte checksum;
  byte marker;
};

const byte DATA_MARKER = 0xAB;

// === FUNGSI HITUNG CHECKSUM (SEBAGAI DETEKSI ADANYA KESALAHAN PADA PENYIMPANAN JADWAL KE EEPROM) ===
byte hitungChecksum(JadwalPompa j) {
  return (j.jamON + j.menitON + j.detikON + j.jamOFF + j.menitOFF + j.detikOFF + j.marker) % 256;
}

//RTC
bool jadwalAktif[3] = { false, false, false };
char lastTimeStr[9] = "";

// === STATUS POMPA ===
bool pompaStatus = true;  // true = OFF, false = ON
bool pompaTFT = true;     // true = OFF, false = ON
bool pompaESP = true;     // true = OFF, false = ON
bool aktif;
bool editingON = true;  // sedang edit waktu ON atau OFF
bool button = true;
JadwalPompa jadwal[3];  // 3 jadwal setting ON / OFF pada pompa

// === MENU DAN MODE PADA LAYAR TFT ===
enum ScreenState { MENU_AWAL,       // int 0
                   PILIHAN_MENU,    // int 1
                   KONTROL_POMPA,   // int 2
                   SET_WAKTU,       // int 3
                   SET_RTC_TIME };  // int 4
ScreenState currentScreen = MENU_AWAL;
enum ModePompa { MODE_UTAMA,
                 MODE_JADWAL,
                 MODE_MANUAL };

// === DEKLARASI FUNCTION YANG DIGUNAKAN DALAM PROGRAM INI ===
void updateTemperature();
void updateMoisture();
void updateTime();
void tampilkanModePompa();
void updateTimeInSetWaktu();
void GambarAir(int x, int y, int size, uint16_t color);
void GambarPilihanJadwal();
void DisplayUI_Menu_SetTime();
void simpanJadwalKeEEPROM();
void bacaJadwalDariEEPROM();
void showSetRTCTime();
void resetAndRefreshMainScreen();
DateTime readTimeFromEEPROM();
void saveTimeToEEPROM(DateTime now);
void LogikaSentuhanTFT(int x, int y);
void updatePompaStatus();
bool KontrolPompaSesuaiJadwal();
void RefreshUI_MenuSetRTC();
void LogikaSentuhanTFT_MenuSetTime(int x, int y);
void perbaikiKhususJadwal1();
void resetJadwalKeDefault(int index);

#endif
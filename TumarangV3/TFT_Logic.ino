

/////////////////////////////////////////////// FUNCTION MENAMPILKAN, MENGGAMBAR ICON PADA LAYAR TFT BAIK DI SETIAP MENU DAN MENU AWAL /////////////////////////////////////////////

// MENAMPILKAN MENU UTAMA DI LAYAR TFT
void showMenuAwal() {
  tft.fillScreen(BLACK);
  tft.setTextSize(1);

  hamburgerX = 10;
  hamburgerY = 10;
  drawHamburgerIcon(hamburgerX, hamburgerY);

  tft.setFont(&FreeSerifItalic24pt7b);
  tft.setTextColor(BLUE);
  tft.setCursor(123, 45);
  tft.println("TUMARANG");
  tft.setFont(NULL);  // BIAR TEKS ATAU JAM SESUAI DENGAN DEFAULT DAN TIDAK EROR

  tft.setFont(&FreeSans9pt7b);
  tft.setTextColor(ORANGE);
  tft.setCursor(100, 65);
  tft.print("ELEKTRONIKA SMKN 1 KATAPANG");
  tft.setFont(NULL);  // BIAR TEKS ATAU JAM SESUAI DENGAN DEFAULT DAN TIDAK EROR

  currentScreen = MENU_AWAL;
}

// === GAMBAR BUTTON KEMBALI DI SETIAP MENUNYA ===
void drawBackButton() {
  tft.fillRect(10, TinggiTFT - 50, 100, 40, RED);
  tft.setTextColor(WHITE);
  tft.setTextSize(2);
  tft.setCursor(20, TinggiTFT - 40);
  tft.print("Kembali");
}

// === TAMPILAN KETIKA ICON HUMBERGER DITEKAN ===
void showPilihanMenu() {
  drawHamburgerIcon(hamburgerX, hamburgerY);

  int menuX = hamburgerX;
  int menuY1 = hamburgerY + 60;   // Jadwal
  int menuY2 = menuY1 + 40 + 10;  // Set Time

  tft.setTextColor(WHITE);
  tft.setTextSize(2);

  // Tombol Jadwal
  tft.fillRoundRect(menuX, menuY1, 130, 40, 6, BLUE);
  tft.setCursor(menuX + 28, menuY1 + 13);
  tft.print("Jadwal");

  // Tombol Set Time
  tft.fillRoundRect(menuX, menuY2, 130, 40, 6, BLUE);
  tft.setCursor(menuX + 20, menuY2 + 14);
  tft.print("Set Time");


  currentScreen = PILIHAN_MENU;
}

// === GAMBAR ICON KELEMBABAN DI MENU UTAMA ===
void GambarAir(int x, int y, int size, uint16_t color) {
  tft.fillCircle(x, y, size, color);
  int x1 = x, y1 = y - size * 2;
  int x2 = x - size, y2 = y;
  int x3 = x + size, y3 = y;
  tft.fillTriangle(x1, y1, x2, y2, x3, y3, color);
}

// === JUDUL DI MENU SET JADWAL POMPA ===
void showSetWaktu() {
  tft.fillScreen(BLACK);
  tft.setTextColor(WHITE);
  tft.setTextSize(2);
  tft.setCursor(145, 10);
  tft.println("SET WAKTU POMPA");

  drawBackButton();
  GambarPilihanJadwal();
  DisplayUI_Menu_SetTime();
  currentScreen = SET_WAKTU;
}

// === GAMBAR ICON MENU HUMBERGER DI SCREEN UTAMA ===
void drawHamburgerIcon(int x, int y) {
  tft.fillRoundRect(x, y, 50, 50, 8, GRAY);
  int lineX = x + 8;
  int lineY = y + 8;
  for (int i = 0; i < 3; i++) {
    tft.fillRoundRect(lineX, lineY, 34, 5, 2, WHITE);
    lineY += 17;
  }
}

// === GAMBAR ICON JADWAL 1-3 PADA MENU SET JADWAL POMPA ===
void GambarPilihanJadwal() {
  tft.setTextSize(2);
  for (int i = 0; i < 3; i++) {
    int x = 20 + i * 150;
    int y = 40;
    tft.fillRoundRect(x, y, 120, 30, 8, (i == selectedSchedule) ? CYAN : GRAY);
    tft.setCursor(x + 20, y + 8);
    tft.setTextColor(BLACK);
    tft.print("Jadwal ");
    tft.print(i + 1);
  }
}

// === FUNGSI UNTUK KONDISI ON / OFF JADWAL YANG KITA ATUR ===
void DisplayUI_Menu_SetTime() {
  JadwalPompa j = jadwal[selectedSchedule];
  int yBase = 90;
  tft.setTextColor(BLACK);
  tft.setTextSize(2);

  // STATUS KAPAN ON & KAPAN OFF
  tft.fillRoundRect(20, yBase, 80, 30, 5, editingON ? GREEN : RED);
  tft.setCursor(30, yBase + 8);
  tft.print(editingON ? "ON " : "OFF");

  // DISPLAY WAKTU
  tft.setTextColor(WHITE);
  int jam = editingON ? j.jamON : j.jamOFF;
  int menit = editingON ? j.menitON : j.menitOFF;
  int detik = editingON ? j.detikON : j.detikOFF;
  char buf[9];
  sprintf(buf, "%02d:%02d:%02d", jam, menit, detik);
  tft.fillRect(120, yBase + 8, 100, 20, BLACK);
  tft.setCursor(120, yBase + 8);
  tft.print(buf);

  // ICON UNTUK MENAMBAHKAN / MENGURANGI JAM/MENIT/DETIK UNTUK KONTROL ON/OFF POMPA
  int buttonY1 = 140;  // Tombol + row
  int buttonY2 = 180;  // Tombol - row

  // Tombol + (Tambah waktu)
  tft.fillRoundRect(20, buttonY1, 50, 30, 5, BLUE);   // Jam +
  tft.fillRoundRect(80, buttonY1, 50, 30, 5, BLUE);   // Menit +
  tft.fillRoundRect(140, buttonY1, 50, 30, 5, BLUE);  // Detik +

  // Tombol - (Kurang waktu)
  tft.fillRoundRect(20, buttonY2, 50, 30, 5, RED);   // Jam -
  tft.fillRoundRect(80, buttonY2, 50, 30, 5, RED);   // Menit -
  tft.fillRoundRect(140, buttonY2, 50, 30, 5, RED);  // Detik -

  // ICON +/-
  tft.setTextColor(WHITE);
  tft.setCursor(30, buttonY1 + 8);
  tft.print("+");
  tft.setCursor(90, buttonY1 + 8);
  tft.print("+");
  tft.setCursor(150, buttonY1 + 8);
  tft.print("+");

  tft.setCursor(30, buttonY2 + 8);
  tft.print("-");
  tft.setCursor(90, buttonY2 + 8);
  tft.print("-");
  tft.setCursor(150, buttonY2 + 8);
  tft.print("-");

  // Tombol KONFIRM
  tft.fillRoundRect(220, 150, 100, 40, 5, GREEN);
  tft.setCursor(230, 162);
  tft.setTextColor(BLACK);
  tft.print("KONFIRM");

  // Tombol STATUS
  tft.fillRoundRect(340, 150, 100, 40, 5, WHITE);
  tft.setCursor(350, 162);
  tft.setTextColor(BLACK);
  tft.print("STATUS");
}

// ===  MEREFRESH LAYAR KETIKA KELUAR DARI MENU DAN KEMBALI KE MENU UTAMA ===
void resetAndRefreshMainScreen() {
  lastTemperature = -1000.0;  // MEMAKSA TFT MENAMPILKAN DATA PEMBACAAN SUHU
  lastMoisture = -1;
  strcpy(lastTimeStr, "");

  // MENAMPILKAN SCREEN UTAMA
  showMenuAwal();

  delay(50);                      // JEDA STABIL
  sensors.requestTemperatures();  // UPDATE SUHU
  updateTemperature();            // SUHU
  updateMoisture();               // KELEMBABAN
  updateTime();                   // JAM

  // KEMBALI MENENTUKAN MODE POMPA MANA YANG SEDANG / AKAN DIGUNAKAN
  updatePompaStatus();
}

// === MENANDAKAN MODE POMPA DI SETIAP SCREENNYA ===
void tampilkanModePompa() {
  tft.setTextSize(2);
  tft.setCursor(10, TinggiTFT - 25);
  tft.setTextColor(WHITE, BLACK);

  if (modePompa == MODE_UTAMA) {
    tft.print("");
  } else if (modePompa == MODE_JADWAL) {
    tft.print("");
  } else if (modePompa == MODE_MANUAL) {
    tft.print("");
  }
}

////////////////////////////////////////////////////////////// FUNCTION SISTEM TFT BEKERJA (TOUCHSCREEN, LOGIKA) //////////////////////////////////////////////////////////////////

// SEMUA SENTUHAN KOORDINAT DAN AKSI YANG DI LAKUKAN DI TFT
void LogikaSentuhanTFT(int x, int y) {
  // 🟢 DEBUG: Tampilkan koordinat touch untuk verifikasi
  Serial.print("Touch - X: ");
  Serial.print(x);
  Serial.print(" Y: ");
  Serial.println(y);


  if (currentScreen == MENU_AWAL) {
    int touchX = x + touchOffsetX;
    int calibratedY = y + touchOffsetY;

    // BUTTON ICON MENU PADA SCREEN UTAMA
    if (touchX >= hamburgerX && touchX <= hamburgerX + 50 && y >= hamburgerY && y <= hamburgerY + 50) {
      showPilihanMenu();
      return;
    }
  } else if (currentScreen == PILIHAN_MENU) {
    updateTemperature();
    updateMoisture();

    int menuX = 10;
    int btnWidth = 130;
    int btnHeight = 40;
    int spacing = 10;
    int menuY1 = 70;   // Jadwal (hamburgerY + 60)
    int menuY2 = 120;  // Set Time (menuY1 + btnHeight + spacing)

    if (x >= menuX && x <= menuX + btnWidth) {
      // Tombol Jadwal
      if (y >= menuY1 && y <= menuY1 + btnHeight) {
        Serial.println("✅ Tombol Jadwal ditekan");
        showSetWaktu();
        return;
      }
      // Tombol Set Time
      if (y >= menuY2 && y <= menuY2 + btnHeight) {
        Serial.println("✅ Tombol Set Time ditekan");
        showSetRTCTime();
        return;
      }
    }

    // UNTUK KEMBALI KE SCREEN UTAMA JIKA BATAL UNTUK MASUK KE MENU LAIN
  }

  else if (currentScreen == SET_WAKTU) {
    // Tombol KEMBALI PADA MENU SETTING JADWAL
    if (x >= 10 && x <= 110 && y >= TinggiTFT - 50 && y <= TinggiTFT - 10) {
      resetAndRefreshMainScreen();
      return;
    }

    // SENTUHAN MEMILIH JADWAL 1 - 3
    for (int i = 0; i < 3; i++) {
      int xBtn = 20 + i * 150;
      if (x >= xBtn && x <= xBtn + 120 && y >= 40 && y <= 70) {
        selectedSchedule = i;
        GambarPilihanJadwal();
        DisplayUI_Menu_SetTime();
        return;
      }
    }

    // SETTING KONDISI ON / OFF
    if (x >= 20 && x <= 100 && y >= 90 && y <= 120) {
      editingON = !editingON;
      DisplayUI_Menu_SetTime();
      return;
    }

    // SETTING JADWAL ON / OFF POMPA
    JadwalPompa &j = jadwal[selectedSchedule];
    int *jam = editingON ? &j.jamON : &j.jamOFF;
    int *menit = editingON ? &j.menitON : &j.menitOFF;
    int *detik = editingON ? &j.detikON : &j.detikOFF;


    // Tombol + (Tambah waktu)
    if (x >= 20 && x <= 70 && y >= 140 && y <= 170) (*jam) = (*jam + 1) % 24;             // JAM
    else if (x >= 80 && x <= 130 && y >= 140 && y <= 170) (*menit) = (*menit + 1) % 60;   // MENIT
    else if (x >= 140 && x <= 190 && y >= 140 && y <= 170) (*detik) = (*detik + 1) % 60;  // DETIK

    // Tombol - (Kurang waktu)
    else if (x >= 20 && x <= 70 && y >= 180 && y <= 210) (*jam) = (*jam - 1 + 24) % 24;        // JAM
    else if (x >= 80 && x <= 130 && y >= 180 && y <= 210) (*menit) = (*menit - 1 + 60) % 60;   // MENIT
    else if (x >= 140 && x <= 190 && y >= 180 && y <= 210) (*detik) = (*detik - 1 + 60) % 60;  // DETIK

    // KONDISI KAPAN ON / OFF POMPA
    else if (x >= 340 && x <= 440 && y >= 150 && y <= 190) {
      editingON = !editingON;
      DisplayUI_Menu_SetTime();
      return;
    }

    // TOMBOL KONFIRM
    else if (x >= 220 && x <= 320 && y >= 150 && y <= 190) {
      Serial.println("💾 Tombol KONFIRM ditekan - Menyimpan semua jadwal ke EEPROM...");

      // MEMASTIKAN JADWAL SEBELUM DISIMPAN KE EEPROM
      for (int i = 0; i < 3; i++) {
        jadwal[i].jamON = constrain(jadwal[i].jamON, 0, 23);
        jadwal[i].menitON = constrain(jadwal[i].menitON, 0, 59);
        jadwal[i].detikON = constrain(jadwal[i].detikON, 0, 59);
        jadwal[i].jamOFF = constrain(jadwal[i].jamOFF, 0, 23);
        jadwal[i].menitOFF = constrain(jadwal[i].menitOFF, 0, 59);
        jadwal[i].detikOFF = constrain(jadwal[i].detikOFF, 0, 59);
      }

      // Simpan ke EEPROM
      simpanJadwalKeEEPROM();
      modePompa = MODE_JADWAL;

      // DEBUGGING JIKA JADWAL SUDAH TERSIMPAN KE EEPROM
      Serial.println("✅ Semua jadwal berhasil disimpan ke EEPROM!");

      // KETIKA KONFIRM DITEKAN, TEKS INI MUNCUL UNTUK INDIKASI SUDAH TERSIMPAN
      tft.fillRect(200, 200, 200, 40, BLACK);
      tft.setTextColor(GREEN, BLACK);
      tft.setCursor(210, 220);
      tft.print("Jadwal Tersimpan!");

      delay(1000);
      DisplayUI_Menu_SetTime();
      return;
    }

    DisplayUI_Menu_SetTime();
  } else if (currentScreen == SET_RTC_TIME) {
    // BUTTON KEMBALI PADA MENU SET RTC TIME
    if (x >= 10 && x <= 130 && y >= TinggiTFT - 60 && y <= TinggiTFT - 20) {
      resetAndRefreshMainScreen();
      return;
    }
    // Tombol SIMPAN
    if (x >= LebarTFT - 130 && x <= LebarTFT - 10 && y >= TinggiTFT - 60 && y <= TinggiTFT - 20) {
      DateTime now = rtc.now();
      rtc.adjust(DateTime(now.year(), now.month(), now.day(), tempHour, tempMinute, tempSecond));
      Serial.println("RTC updated.");
      resetAndRefreshMainScreen();
      return;
    }
    LogikaSentuhanTFT_MenuSetTime(x, y);
  }
}

// === UPDATE WAKTU RTC ===
void updateTime() {
  DateTime now = rtc.now();
  char timeStr[9];
  sprintf(timeStr, "%02d:%02d:%02d        ", now.hour(), now.minute(), now.second());
  if (strcmp(timeStr, lastTimeStr) != 0) {
    strcpy(lastTimeStr, timeStr);

    tft.fillRect(165, 72, 160, 40, BLACK);

    tft.setFont(&FreeSans9pt7b);
    tft.setTextColor(WHITE, BLACK);
    tft.setCursor(165, 97);
    tft.print(timeStr);
    tft.setFont(NULL);

    saveTimeToEEPROM(now);
  }
}

// === UPDATE WAKTU DI MENU SET JADWAL POMPA ===
void updateTimeInSetWaktu() {
  DateTime now = rtc.now();
  char timeStr[9];
  sprintf(timeStr, "%02d:%02d:%02d", now.hour(), now.minute(), now.second());

  tft.setTextSize(4);
  tft.setTextColor(WHITE, BLACK);
  tft.setCursor(LebarTFT - 260, TinggiTFT - 70);
  tft.print(timeStr);
  tft.setTextSize(2);
  tft.setTextColor(WHITE, BLACK);
  tft.setCursor(LebarTFT - 225, TinggiTFT - 30);
  tft.print("(Saat ini)");
}

// === UPDATE SUHU DAN ANIMASI ===
void updateTemperature() {
  sensors.requestTemperatures();
  temp = sensors.getTempCByIndex(0);

  if (abs(temp - lastTemperature) > 0.1) {
    float suhuTerkunci = constrain(temp, 20.0, 40.0);
    int tinggiCairanBaru = map(suhuTerkunci * 10, 200, 400, 0, 100);
    int yStart = 240 - tinggiCairanBaru;

    // Hapus area cairan lama
    tft.fillRect(150, 140, 15, 70, BLACK);

    // Gambar cairan baru
    if (tinggiCairanBaru > 0) {
      tft.fillRect(150, yStart, 15, tinggiCairanBaru, RED);
    }

    // Update teks suhu
    tft.fillRect(110, 270, 70, 20, BLACK);
    tft.setCursor(128, 250);
    tft.setTextColor(WHITE, BLACK);
    tft.setTextSize(2);
    tft.print(temp, 1);
    tft.print(" C");

    lastTemperature = temp;
  }

  tft.drawRoundRect(150, 140, 15, 100, 3, WHITE);

  for (int i = 0; i < 8; i++) {
    tft.drawFastHLine(150, 155 + i * 10, 8, WHITE);
  }

  String Suhu = "";
  uint16_t Warna = WHITE;

  if (temp < 25) {
    Suhu = "DINGIN";
    Warna = BLUE;
  } else if (temp >= 26 && temp <= 34) {
    Suhu = "NORMAL";
    Warna = GREEN;
  } else if (temp >= 35) {
    Suhu = " PANAS";
    Warna = RED;
  }

  tft.setTextSize(2);
  tft.setTextColor(Warna, BLACK);
  tft.setCursor(130, 280);
  tft.print(Suhu);
}

// === UPDATE KELEMBABAN DAN ANIMASI ===
void updateMoisture() {
  String status = "";
  uint16_t color = WHITE;
  int val = analogRead(MOISTURE_ANALOG_PIN);
  moist = map(val, 1023, 0, 0, 100);

  if (abs(moist - lastMoisture) >= 2) {
    int cx = 330;
    int cy = 190;
    int radius = 50;

    int tinggiAirLama = map(lastMoisture, 0, 100, 0, radius * 2);
    int tinggiAirBaru = map(moist, 0, 100, 0, radius * 2);

    // Hapus hanya bagian lama yang melebihi area baru
    if (tinggiAirBaru < tinggiAirLama) {
      for (int y = tinggiAirBaru; y < tinggiAirLama; y++) {
        for (int x = -radius; x <= radius; x++) {
          int realY = cy + radius - y;
          if ((x * x + (realY - cy) * (realY - cy)) <= radius * radius) {
            tft.drawPixel(cx + x, realY, BLACK);
          }
        }
      }
    }

    // Tambahkan bagian air yang baru
    for (int y = 0; y < tinggiAirBaru; y++) {
      for (int x = -radius; x <= radius; x++) {
        int realY = cy + radius - y;
        if ((x * x + (realY - cy) * (realY - cy)) <= radius * radius) {
          tft.drawPixel(cx + x, realY, BLUE);
        }
      }
    }

    tft.drawCircle(cx, cy, radius, WHITE);
    GambarAir(330, 200, 23, CYAN);

    tft.setTextSize(2);
    tft.setTextColor(WHITE, BLACK);
    tft.setCursor(323, 250);
    tft.print(moist);
    tft.print("%  ");

    // Indikator LED kelembaban
    if (moist < 30) {
      status = "KERING ";
      color = RED;
      digitalWrite(LEMBAB, LOW);
      digitalWrite(KERING, HIGH);
      digitalWrite(BASAH, LOW);
    } else if (moist <= 70) {
      status = "LEMBAB ";
      color = YELLOW;
      digitalWrite(LEMBAB, HIGH);
      digitalWrite(KERING, LOW);
      digitalWrite(BASAH, LOW);
    } else if (moist <= 100) {
      status = " BASAH ";
      color = GREEN;
      digitalWrite(LEMBAB, LOW);
      digitalWrite(KERING, LOW);
      digitalWrite(BASAH, HIGH);
    }

    tft.setTextSize(2);
    tft.setTextColor(color, BLACK);
    tft.setCursor(298, 280);
    tft.print(status);

    lastMoisture = moist;
  }
}

//////////////////////////////////////////////////////////////////////////////// MENU SETTING RTC /////////////////////////////////////////////////////////////////////////////////

// === UI SET TIME RTC ===
void showSetRTCTime() {
  tft.fillScreen(BLACK);
  tft.setTextColor(WHITE);
  tft.setTextSize(3);
  tft.setCursor(105, 20);
  tft.print("<SET WAKTU RTC>");

  DateTime now = rtc.now();
  tempHour = now.hour();
  tempMinute = now.minute();
  tempSecond = now.second();

  RefreshUI_MenuSetRTC();

  // Tombol + dan -
  tft.setTextSize(3);
  tft.setTextColor(BLACK);

  int btnWidth = 40;
  int btnHeight = 40;
  int spacing = 20;
  int centerX = tft.width() / 2;
  int startX = centerX - (btnWidth * 3 + spacing * 2) / 2;
  int btnYplus = 120;
  int btnYminus = btnYplus + btnHeight + 10;

  // Jam +
  tft.fillRoundRect(startX, btnYplus, btnWidth, btnHeight, 8, GREEN);
  tft.setCursor(startX + 13, btnYplus + 10);
  tft.print("+");

  // Menit +
  tft.fillRoundRect(startX + (btnWidth + spacing), btnYplus, btnWidth, btnHeight, 8, GREEN);
  tft.setCursor(startX + (btnWidth + spacing) + 13, btnYplus + 10);
  tft.print("+");

  // Detik +
  tft.fillRoundRect(startX + 2 * (btnWidth + spacing), btnYplus, btnWidth, btnHeight, 8, GREEN);
  tft.setCursor(startX + 2 * (btnWidth + spacing) + 13, btnYplus + 10);
  tft.print("+");

  // Jam -
  tft.fillRoundRect(startX, btnYminus, btnWidth, btnHeight, 8, RED);
  tft.setCursor(startX + 13, btnYminus + 10);
  tft.print("-");

  // Menit -
  tft.fillRoundRect(startX + (btnWidth + spacing), btnYminus, btnWidth, btnHeight, 8, RED);
  tft.setCursor(startX + (btnWidth + spacing) + 13, btnYminus + 10);
  tft.print("-");

  // Detik -
  tft.fillRoundRect(startX + 2 * (btnWidth + spacing), btnYminus, btnWidth, btnHeight, 8, RED);
  tft.setCursor(startX + 2 * (btnWidth + spacing) + 13, btnYminus + 10);
  tft.print("-");

  // Tombol KEMBALI di kiri bawah
  tft.setTextSize(2);
  tft.setTextColor(WHITE);
  tft.fillRoundRect(10, tft.height() - 60, 120, 40, 10, RED);
  tft.setCursor(30, tft.height() - 50);
  tft.print("KEMBALI");

  // Tombol SIMPAN di kanan bawah
  tft.fillRoundRect(tft.width() - 130, tft.height() - 60, 120, 40, 10, BLUE);
  tft.setCursor(tft.width() - 110, tft.height() - 50);
  tft.print("SIMPAN");

  currentScreen = SET_RTC_TIME;
}

// === SETTING TIME RTC ===
void LogikaSentuhanTFT_MenuSetTime(int x, int y) {
  bool updated = false;
  int btnWidth = 40;
  int btnHeight = 40;
  int spacing = 20;
  int centerX = tft.width() / 2;
  int startX = centerX - (btnWidth * 3 + spacing * 2) / 2;
  int btnYplus = 120;
  int btnYminus = btnYplus + btnHeight + 10;

  // "+" JAM
  if (x >= startX && x <= startX + btnWidth && y >= btnYplus && y <= btnYplus + btnHeight) {
    tempHour = (tempHour + 1) % 24;
    updated = true;
  }
  // "+" MENIT
  else if (x >= startX + (btnWidth + spacing) && x <= startX + (btnWidth + spacing) + btnWidth && y >= btnYplus && y <= btnYplus + btnHeight) {
    tempMinute = (tempMinute + 1) % 60;
    updated = true;
  }
  // "+" DETIK
  else if (x >= startX + 2 * (btnWidth + spacing) && x <= startX + 2 * (btnWidth + spacing) + btnWidth && y >= btnYplus && y <= btnYplus + btnHeight) {
    tempSecond = (tempSecond + 1) % 60;
    updated = true;
  }
  // "-" JAM
  else if (x >= startX && x <= startX + btnWidth && y >= btnYminus && y <= btnYminus + btnHeight) {
    tempHour = (tempHour - 1 + 24) % 24;
    updated = true;
  }
  // "-" MENIT
  else if (x >= startX + (btnWidth + spacing) && x <= startX + (btnWidth + spacing) + btnWidth && y >= btnYminus && y <= btnYminus + btnHeight) {
    tempMinute = (tempMinute - 1 + 60) % 60;
    updated = true;
  }
  // "-" DETIK
  else if (x >= startX + 2 * (btnWidth + spacing) && x <= startX + 2 * (btnWidth + spacing) + btnWidth && y >= btnYminus && y <= btnYminus + btnHeight) {
    tempSecond = (tempSecond - 1 + 60) % 60;
    updated = true;
  }

  if (updated) {
    RefreshUI_MenuSetRTC();
  }
}

// === MENAMPILKAN JAM DI TENGAH MENU SETTING TIME RTC ===
void RefreshUI_MenuSetRTC() {
  String timeStr =
    (tempHour < 10 ? "0" : "") + String(tempHour) + ":" + (tempMinute < 10 ? "0" : "") + String(tempMinute) + ":" + (tempSecond < 10 ? "0" : "") + String(tempSecond);

  int16_t x1, y1;
  uint16_t w, h;
  tft.setTextSize(4);
  tft.getTextBounds(timeStr, 0, 0, &x1, &y1, &w, &h);
  int centerX = tft.width() / 2;
  tft.fillRect(centerX - w / 2 - 5, 65, w + 10, 40, BLACK);  // Hapus area teks lama
  tft.setTextColor(WHITE);
  tft.setCursor(centerX - w / 2, 70);
  tft.print(timeStr);
}

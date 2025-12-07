

/////////////////////////////////////////////////////////////////////////////// EEPROM ////////////////////////////////////////////////////////////////////////////////////////////
void bacaJadwalDariEEPROM() {
  int addr = EEPROM_BASE;

  Serial.println("=== MEMBACA JADWAL DARI EEPROM ===");

  for (int i = 0; i < 3; i++) {
    // Baca data dari EEPROM
    EEPROM.get(addr, jadwal[i]);

    Serial.print("Baca Jadwal ");
    Serial.print(i + 1);
    Serial.print(" | ON: ");
    Serial.print(jadwal[i].jamON);
    Serial.print(":");
    Serial.print(jadwal[i].menitON);
    Serial.print(":");
    Serial.print(jadwal[i].detikON);
    Serial.print(" | OFF: ");
    Serial.print(jadwal[i].jamOFF);
    Serial.print(":");
    Serial.print(jadwal[i].menitOFF);
    Serial.print(":");
    Serial.print(jadwal[i].detikOFF);
    Serial.print(" | Marker: 0x");
    Serial.print(jadwal[i].marker, HEX);
    Serial.print(" | Checksum: ");
    Serial.println(jadwal[i].checksum);

    jadwal[i].jamON = constrain(jadwal[i].jamON, 0, 23);
    jadwal[i].menitON = constrain(jadwal[i].menitON, 0, 59);
    jadwal[i].detikON = constrain(jadwal[i].detikON, 0, 59);
    jadwal[i].jamOFF = constrain(jadwal[i].jamOFF, 0, 23);
    jadwal[i].menitOFF = constrain(jadwal[i].menitOFF, 0, 59);
    jadwal[i].detikOFF = constrain(jadwal[i].detikOFF, 0, 59);

    addr += sizeof(JadwalPompa);
  }
}

void resetJadwalKeDefault(int index) {
  jadwal[index].jamON = 0;
  jadwal[index].menitON = 0;
  jadwal[index].detikON = 0;
  jadwal[index].jamOFF = 0;
  jadwal[index].menitOFF = 0;
  jadwal[index].detikOFF = 0;
  jadwal[index].marker = DATA_MARKER;
  jadwal[index].checksum = hitungChecksum(jadwal[index]);

  Serial.print("🔄 Reset Jadwal ");
  Serial.print(index + 1);
  Serial.println(" ke default");
}


void simpanJadwalKeEEPROM() {
  int addr = EEPROM_BASE;

  Serial.println("=== MENYIMPAN JADWAL KE EEPROM ===");

  for (int i = 0; i < 3; i++) {

    jadwal[i].jamON = constrain(jadwal[i].jamON, 0, 23);
    jadwal[i].menitON = constrain(jadwal[i].menitON, 0, 59);
    jadwal[i].detikON = constrain(jadwal[i].detikON, 0, 59);
    jadwal[i].jamOFF = constrain(jadwal[i].jamOFF, 0, 23);
    jadwal[i].menitOFF = constrain(jadwal[i].menitOFF, 0, 59);
    jadwal[i].detikOFF = constrain(jadwal[i].detikOFF, 0, 59);

    jadwal[i].marker = DATA_MARKER;
    jadwal[i].checksum = hitungChecksum(jadwal[i]);

    // SIMPAN KE ALAMAT EEPROM 20
    EEPROM.put(addr, jadwal[i]);

    // DELAY UNTUK MEMASTIKAN PENYIMPANAN JADWAL
    delay(20);

    Serial.print("✅ Jadwal ");
    Serial.print(i + 1);
    Serial.print(" tersimpan | ON: ");
    Serial.print(jadwal[i].jamON);
    Serial.print(":");
    Serial.print(jadwal[i].menitON);
    Serial.print(":");
    Serial.print(jadwal[i].detikON);
    Serial.print(" | OFF: ");
    Serial.print(jadwal[i].jamOFF);
    Serial.print(":");
    Serial.print(jadwal[i].menitOFF);
    Serial.print(":");
    Serial.println(jadwal[i].detikOFF);

    addr += sizeof(JadwalPompa);
  }

  Serial.println("✅ SEMUA JADWAL BERHASIL DISIMPAN!");
}

void perbaikiKhususJadwal1() {
  Serial.println("🔧 PERBAIKI KHUSUS JADWAL 1...");

  int addr = EEPROM_BASE;
  JadwalPompa jadwal1;

  // Baca data saat ini dari EEPROM
  EEPROM.get(addr, jadwal1);

  Serial.print("Data EEPROM Jadwal 1 - ON: ");
  Serial.print(jadwal1.jamON);
  Serial.print(":");
  Serial.print(jadwal1.menitON);
  Serial.print(":");
  Serial.print(jadwal1.detikON);
  Serial.print(" | OFF: ");
  Serial.print(jadwal1.jamOFF);
  Serial.print(":");
  Serial.print(jadwal1.menitOFF);
  Serial.print(":");
  Serial.print(jadwal1.detikOFF);
  Serial.print(" | Marker: 0x");
  Serial.print(jadwal1.marker, HEX);
  Serial.print(" | Checksum: ");
  Serial.println(jadwal1.checksum);

  bool perluPerbaikan = false;
  String alasan = "";

  // Cek marker
  if (jadwal1.marker != DATA_MARKER) {
    perluPerbaikan = true;
    alasan = "Marker invalid";
  }
  // Cek checksum
  else if (jadwal1.checksum != hitungChecksum(jadwal1)) {
    perluPerbaikan = true;
    alasan = "Checksum invalid";
  }
  // Cek range nilai
  else if (jadwal1.jamON < 0 || jadwal1.jamON > 23 || jadwal1.menitON < 0 || jadwal1.menitON > 59 || jadwal1.detikON < 0 || jadwal1.detikON > 59) {
    perluPerbaikan = true;
    alasan = "Waktu ON out of range";
  } else if (jadwal1.jamOFF < 0 || jadwal1.jamOFF > 23 || jadwal1.menitOFF < 0 || jadwal1.menitOFF > 59 || jadwal1.detikOFF < 0 || jadwal1.detikOFF > 59) {
    perluPerbaikan = true;
    alasan = "Waktu OFF out of range";
  }

  if (perluPerbaikan) {
    Serial.print("⚠️ Perlu perbaikan Jadwal 1: ");
    Serial.println(alasan);

    // 🟢 STRATEGI PERBAIKAN YANG LEBIH CERDAS
    bool offMasihBaik = (jadwal1.jamOFF >= 0 && jadwal1.jamOFF <= 23 && jadwal1.menitOFF >= 0 && jadwal1.menitOFF <= 59 && jadwal1.detikOFF >= 0 && jadwal1.detikOFF <= 59);

    bool onKorupTotal = (jadwal1.jamON == 0 && jadwal1.menitON == 0 && jadwal1.detikON == 0);

    if (onKorupTotal && offMasihBaik) {
      // 🟢 KASUS 1: ON korup tapi OFF masih baik -> set ON = OFF
      Serial.println("🔄 Set ON = OFF (karena ON korup total)");
      jadwal1.jamON = jadwal1.jamOFF;
      jadwal1.menitON = jadwal1.menitOFF;
      jadwal1.detikON = jadwal1.detikOFF;
    } else if (!offMasihBaik) {
      // 🟢 KASUS 2: OFF juga korup -> reset ke default yang reasonable
      Serial.println("🔄 Reset ke default (OFF juga korup)");
      jadwal1.jamON = 8;
      jadwal1.menitON = 0;
      jadwal1.detikON = 0;
      jadwal1.jamOFF = 8;
      jadwal1.menitOFF = 1;
      jadwal1.detikOFF = 0;
    } else {
      // 🟢 KASUS 3: Coba perbaiki dengan constrain saja
      Serial.println("🔄 Perbaiki dengan constrain values");
      jadwal1.jamON = constrain(jadwal1.jamON, 0, 23);
      jadwal1.menitON = constrain(jadwal1.menitON, 0, 59);
      jadwal1.detikON = constrain(jadwal1.detikON, 0, 59);
      jadwal1.jamOFF = constrain(jadwal1.jamOFF, 0, 23);
      jadwal1.menitOFF = constrain(jadwal1.menitOFF, 0, 59);
      jadwal1.detikOFF = constrain(jadwal1.detikOFF, 0, 59);
    }

    // 🟢 UPDATE MARKER DAN CHECKSUM
    jadwal1.marker = DATA_MARKER;
    jadwal1.checksum = hitungChecksum(jadwal1);

    // Simpan perbaikan
    EEPROM.put(addr, jadwal1);
    delay(100);  // Delay untuk memastikan tersimpan

    Serial.print("✅ Setelah perbaikan - ON: ");
    Serial.print(jadwal1.jamON);
    Serial.print(":");
    Serial.print(jadwal1.menitON);
    Serial.print(":");
    Serial.print(jadwal1.detikON);
    Serial.print(" | OFF: ");
    Serial.print(jadwal1.jamOFF);
    Serial.print(":");
    Serial.print(jadwal1.menitOFF);
    Serial.print(":");
    Serial.println(jadwal1.detikOFF);
  } else {
    Serial.println("✅ Jadwal 1 dalam kondisi baik, tidak perlu perbaikan");
  }
}

void saveTimeToEEPROM(DateTime now) {
  EEPROM.update(0, now.second());
  EEPROM.update(1, now.minute());
  EEPROM.update(2, now.hour());
  EEPROM.update(3, now.day());
  EEPROM.update(4, now.month());
  EEPROM.update(5, now.year() - 2000);
}

DateTime readTimeFromEEPROM() {
  int second = EEPROM.read(0);
  int minute = EEPROM.read(1);
  int hour = EEPROM.read(2);
  int day = EEPROM.read(3);
  int month = EEPROM.read(4);
  int year = EEPROM.read(5) + 2000;
  return DateTime(year, month, day, hour, minute, second);
}

void InisialisasiEEPROM() {
  Serial.println("🔧 Inisialisasi EEPROM...");
  perbaikiKhususJadwal1();
  bacaJadwalDariEEPROM();

  // Verifikasi akhir
  Serial.println("=== STATUS AKHIR JADWAL ===");
  for (int i = 0; i < 3; i++) {
    Serial.print("Jadwal ");
    Serial.print(i + 1);
    Serial.print(": ON ");
    Serial.print(jadwal[i].jamON);
    Serial.print(":");
    Serial.print(jadwal[i].menitON);
    Serial.print(":");
    Serial.print(jadwal[i].detikON);
    Serial.print(" | OFF ");
    Serial.print(jadwal[i].jamOFF);
    Serial.print(":");
    Serial.print(jadwal[i].menitOFF);
    Serial.print(":");
    Serial.println(jadwal[i].detikOFF);
  }
}


void debugJadwal1() {
  int addr = EEPROM_BASE;
  JadwalPompa jadwal1;
  EEPROM.get(addr, jadwal1);

  Serial.println("=== DEBUG JADWAL 1 ===");
  Serial.print("EEPROM Address: ");
  Serial.println(addr);
  Serial.print("ON: ");
  Serial.print(jadwal1.jamON);
  Serial.print(":");
  Serial.print(jadwal1.menitON);
  Serial.print(":");
  Serial.println(jadwal1.detikON);
  Serial.print("OFF: ");
  Serial.print(jadwal1.jamOFF);
  Serial.print(":");
  Serial.print(jadwal1.menitOFF);
  Serial.print(":");
  Serial.println(jadwal1.detikOFF);
  Serial.print("Marker: 0x");
  Serial.println(jadwal1.marker, HEX);
  Serial.print("Checksum: ");
  Serial.println(jadwal1.checksum);
  Serial.print("Checksum Calculated: ");
  Serial.println(hitungChecksum(jadwal1));
  Serial.println("======================");
}
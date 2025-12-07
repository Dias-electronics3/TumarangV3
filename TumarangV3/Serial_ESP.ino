

void serial() {
  if (Serial1.available()) {
    char buffer[50];
    int len = Serial1.readBytesUntil('\n', buffer, sizeof(buffer));
    buffer[len] = '\0';
    String perintah(buffer);
    perintah.trim();

    if (perintah == "RELAY:true") {
      pompaESP = false;  // ON
      Serial.println("Pompa ON dari ESP");
    } else if (perintah == "RELAY:false") {
      pompaESP = true;  // OFF
      Serial.println("Pompa OFF dari ESP");
    }
  } else {
    // Kirim data hanya setiap 5 detik
    if (millis() - lastSend >= intervalSend) {
      lastSend = millis();
      Serial1.print("TEMP:");
      Serial1.print(temp, 1);
      Serial1.print(";HUM:");
      Serial1.println(moist);
      Serial1.println(pompaStatus ? "RELAY:false" : "RELAY:true");
    }
  }
}
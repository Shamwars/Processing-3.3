import processing.io.*;

// 0.96" 128x64 OLED display ("SKU 346540")
SSD1306 oled;

void setup() {
  size(128, 64);

  // the display can be set to one of these two addresses: 0x3c (default) or 0x3d
  // (they might be listed as 0x7a and 0x7b on the circuit board)
  oled = new SSD1306(I2C.list()[0], 0x3c);
}

void draw() {
	line(0, 0, 127, 63);
	line(0, 63, 127, 0);
	oled.sendImage(get());
}

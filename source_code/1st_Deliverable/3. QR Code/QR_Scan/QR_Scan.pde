import processing.video.*;
import qrcodeprocessing.*;

Capture Image;

Decoder decoder;
PImage scan;
 
void setup() {
  size(400, 600);
  
  scan=loadImage("MyQr.png");
  decoder = new Decoder(this);
  decoder.decodeImage(scan);
}



void decoderEvent(Decoder decoder) {
 String statusMsg = decoder.getDecodedString(); 
  println(statusMsg);
}




void draw() {
  background(0);
  image(scan, 0, 0);
}

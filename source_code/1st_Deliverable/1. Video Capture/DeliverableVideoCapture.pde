// Vhma prwto syndew thn vivliothikh
import processing.video.*;

// Vhma deytero lew ti tha kanw Capture
Capture video;

void setup() {
  size(1280, 720); //thetw to megethos poy tha doylevw
  println(Capture.list());
  
  video = new Capture(this,1280, 720); //kanw save to video poy vghke
  video.start();
}
void captureEvent(Capture video) {
  video.read();
}

void draw() {
  image(video, 0, 0); //paizw to periexomeno ths metavlhths video
}

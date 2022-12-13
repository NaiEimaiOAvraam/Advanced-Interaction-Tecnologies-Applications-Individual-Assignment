import gab.opencv.*;
import processing.video.*;

Capture video;

OpenCV opencv;

void setup() {

  size(480, 520);
  video = new Capture(this, 720, 480);
  video.start();

  opencv = new OpenCV(this, 720, 480);
  opencv.startBackgroundSubtraction(5, 3, 0.5);
}

void captureEvent(Capture video) {
  video.read();
}

void draw() {
  image(video, 0, 0);

  if (video.width == 0 || video.height == 0)
    return;

  opencv.loadImage(video);
  opencv.updateBackground();

  opencv.dilate();
  opencv.erode();

  noFill();
  stroke(0,0, 120);
  strokeWeight(3);
  for (Contour contour : opencv.findContours()) {
    contour.draw();
  }
}

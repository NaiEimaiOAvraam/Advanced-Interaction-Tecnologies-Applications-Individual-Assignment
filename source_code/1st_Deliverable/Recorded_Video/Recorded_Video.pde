// Example 16-4: Display QuickTime movie

import processing.video.*;

// Step 1. Declare Movie object
Movie movie; 

void setup() {
  size(1920, 1080);

  // Step 2. Initialize Movie object
  // Movie file should be in data folder
  movie = new Movie(this, "MyMovie.mov"); 

  // Step 3. Start movie playing
  movie.loop();
}

// Step 4. Read new frames from movie
void movieEvent(Movie movie) {
  movie.read();
}

void draw() {
  background(255);

 float ratio = mouseX / (float) width*2 ;
 movie.speed(ratio);

  translate(width/2,height/2);
  imageMode(CENTER);
  image(movie, 0, 0);
}

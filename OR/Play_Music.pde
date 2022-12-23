float songBarX, songBarY, song1BarWidth, song2BarWidth, songBarHeight;

void song1Bar() {
  if (song1.isPlaying()) {
    fill(blue);
    rect(songBarX, songBarY, song1BarWidth, songBarHeight);
    noFill();
  }
  if (song2.isPlaying()) {
    fill(red);
    rect(songBarX, songBarY, song2BarWidth, songBarHeight);
  }
}

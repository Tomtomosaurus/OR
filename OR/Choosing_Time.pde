float PS5ButtonX, PS5ButtonY, PS5ButtonWidth, PS5ButtonHeight;
void choosingTime() {
  fill(choosingButtonColour);
  image(PS5, 0, 0, appWidth/6, appHeight/3);
  image(XSX, appWidth/6, 0, appWidth/6, appHeight/3);
  rect(PS5ButtonX, PS5ButtonY, PS5ButtonWidth, PS5ButtonHeight);
}

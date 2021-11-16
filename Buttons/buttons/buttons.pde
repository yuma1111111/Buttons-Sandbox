// Global Variables
float buttonX, buttonY, buttonWidth, ButtonHeight;
color buttonColour, yellow=#F3FC03, purple=#FC03FC, white=#FFFFFF, reset=white;

void setup() {
  size(500, 600);
  //Population
  buttonX = width*1/4;
  buttonY = height*1/3;
  buttonWidth = width*1/2;
  ButtonHeight = height*1/3;
}//End setup()

void draw() {
  background(white);
  //println(mouseX, mouseY);
  if ( mouseX >= buttonX && mouseY >= buttonY && mouseX <= buttonX+buttonWidth && mouseY <= buttonY+ButtonHeight ) {
    buttonColour = yellow;
  } else {
    buttonColour = purple;
  }//End IF Button Colour
  fill(buttonColour);
  rect(buttonX, buttonY, buttonWidth, ButtonHeight);
  fill(reset);
}//End draw()

void mousePressed() {
  if (mouseX >= buttonX && mouseY >= buttonY && mouseX <= buttonX+buttonWidth && mouseY <= buttonY+ButtonHeight) exit();
}//End mousePressed()

void keyPressed() {
}//End keyPressed()

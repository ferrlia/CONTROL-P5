# CONTROL-P5
## INTAN FERRLIA BINTI IKRAM SHAH 1141327595

import controlP5.*;

ControlP5 cp5;
    int v1;

float x;
float y;
float easing = 0.03; 
int ln; 
int radius = 10; 
int edge = 56; 
int inner = edge + radius; 


void setup() {
  size(640, 360); 
  noStroke(); 
  cp5 = new ControlP5(this);
      cp5.addSlider("v1")
         .setPosition(40, 40)
         .setSize(200, 20)
         .setRange(100, 300)
         .setValue(250)
         .setColorCaptionLabel(color(20,20,20));
    }


void draw() { 
  background(51);
  

  ellipse(x, y, 66, 66);
  if (keyPressed && (key == CODED)) { 
    if (keyCode == LEFT) { 
      x -= (x--)*easing; 
    } 
    else if (keyCode == RIGHT) { 
      x += (x++)*easing; 
    } 
    else if (keyCode == UP) { 
      y -= (y--)*easing; 
    } 
    else if (keyCode == DOWN) { 
      y += (y++)*easing; 
    } 
    x = constrain(x, inner, width-inner); 
    y = constrain(y, inner, height-inner); 
  } 
} 

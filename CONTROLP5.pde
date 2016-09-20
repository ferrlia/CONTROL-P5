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
         
  cp5 = new ControlP5(this);
      cp5.addSlider("v2")
         .setPosition(100, 80)
         .setSize(100, 20)
         .setRange(500, 300)
         .setValue(150)
         .setColorCaptionLabel(color(30,0,20)); 
         
   cp5 = new ControlP5(this);
      cp5.addSlider("v3")
         .setPosition(400, 60)
         .setSize(100, 100)
         .setRange(45, 57)
         .setValue(67)
         .setColorCaptionLabel(color(150,0,150));
         
  cp5 = new ControlP5(this);
      cp5.addSlider("v4")
         .setPosition(245,300)
         .setSize(30, 70)
         .setRange(80, 300)
         .setValue(5)
         .setColorCaptionLabel(color(20,20,20));  
         
   cp5 = new ControlP5(this);
      cp5.addSlider("v5")
         .setPosition(90, 200)
         .setSize(50, 50)
         .setRange(150, 150)
         .setValue(30)
         .setColorCaptionLabel(color(0,150,0));        
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

import java.util.LinkedList;
//use sin wave to make a shaking effect with translate

import processing.opengl.*;

LinkedList particles = new LinkedList();
int maxVelocity = 10;
PFont font;
void setup()
{
  size(512,512,OPENGL);
  font = loadFont("Arial.vlw");
  colorMode(HSB);
}

void draw()
{
  background(0);
  color(255);
  textFont(font);
  text(frameRate, 0,15);
  
  for (int i = 0; i < particles.size(); i++)
  {
    
    Particle p = (Particle)particles.get(i);
    p.update();
    p.draw();
    
    if (p.shouldRemove()) 
    {
      particles.remove(i);
    }
  }
}

void mouseReleased()
{
  int hue = (int)random(256);

  for (int i = 0 ; i < 50; i++)
  {
    color c = color((hue + random(50))%256, 255, 255);
    Particle p = new Particle(mouseX, mouseY, 
        (int)random(maxVelocity)-maxVelocity/2,
        (int)random(maxVelocity)-maxVelocity/2,
        6, c);
    particles.add(p);
  }
}






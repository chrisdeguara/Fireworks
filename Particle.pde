class Particle
{
  float x,y,vx,vy,size;
  static final float gravity = 0.2;
  int life = 255;
  int c; //colour
  
  //Constructor... called with the new operator
  public Particle(int x, int y, int vx, int vy, int size, int c)
  {
    this.x = x;
    this.y = y;
    this.vx = vx;
    this.vy = vy;
    this.size = size;
    this.c = c;
  }
  
  public void update()
  {
    life -= 5;
    x += vx;
    y += vy;
    vy += gravity;
    if (x > width)
    {
      vx = -vx;
    }
    if (x < 0)
    {
      vx = -vx;
    }
    if (y < 0)
    {
      vy = -vy;
    }
    if (y > height)
    {
      vy = -vy;
    }
  }
  
  public void draw()
  {
    fill(c, life);
    ellipse(x,y,size,size);
    fill(255);
  }
  
  public boolean shouldRemove() 
  {
    return life <= 0;
  } 
  
}

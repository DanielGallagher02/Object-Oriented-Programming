public class Projectile 
{
  private Location location;
  private int projectileWidth;
  private int projectileHeight;
  private float speed;


  public Projectile(int y)
  {    
    location=new Location(Game.DEFENDER_X,y+Game.CHARACTER_SIZE/2);
    this.speed=16.0;
    this.projectileWidth=30;
    this.projectileHeight=1;
  }

  public boolean visible()
  {
    if (this.getLocation().getX()>width)
      return false;
    else
      return true;
  }
 
  public Location getLocation()
  {
    return location;
  }

  //Part 1 - To String Method
  public String toString()
  {
    return "[Projectile:location=[Location:x=" + getLocation().getX() + ", y=" + getLocation().getY() + "], projectileWidth= " + projectileWidth + ", projectileHeight=" + projectileHeight + ", speed=" + speed + "]" ;
  }

  //
  // Add your code ABOVE this method
  //
  public void display() // CAREFUL HOW/IF YOU MODIFY THIS CODE!!
  {
    fill(Game.PROJECTILE_COLOUR);
    stroke(Game.PROJECTILE_COLOUR);

    pushMatrix();
    getLocation().setX(this.getLocation().getX()+((int)this.speed*1));
    translate(getLocation().getX(), getLocation().getY());
    
    rect(0, 0, projectileWidth, projectileHeight);                                 // 3

    popMatrix();
  }
}

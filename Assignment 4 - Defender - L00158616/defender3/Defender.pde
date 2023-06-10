public class Defender extends SpaceObject
{
  private Location location;
  private Projectile projectile;
  
  public Defender(Location location)
  {
    this.location = location;
    this.projectile=null;
  }
  
  public Location getLocation()
  {
    return location;
  }
  
  public void incY(int direction) 
  {
    getLocation().incY(direction);
  }
  
  public void incX(int direction) 
  {
    getLocation().incX(direction);
  }
  
  public void reloadProjectile()
  {
    projectile=null;
  }

  public Projectile getProjectile()
  {
    return projectile;
  }

  public void fire()
  {
    projectile = new Projectile(getLocation().getY());
  }
  
  //Part 1 - To String Method
  public String toString()
  {
    return "[Defender:location=[Location:x=" + getLocation().getX() + " y=" + getLocation().getY() + "], projectile=[Projectile:x=" + getProjectile().getLocation().getX() + ", y=" +  getProjectile().getLocation().getY() + "]";                         
  }






  //
  // Add your code ABOVE this method
  //  
  public void display() // CAREFUL HOW/IF YOU MODIFY THIS CODE!!
  {
    fill(Game.DEFENDER_COLOUR);
    stroke(153);
    
    pushMatrix();   
    translate(getLocation().getX(), getLocation().getY());
    
    rect( 0, 0,Game.BLOCK_SIZE,Game.BLOCK_SIZE);                                                                rect(Game.BLOCK_SIZE*1, 0,Game.BLOCK_SIZE,Game.BLOCK_SIZE);
    rect( 0, 10,Game.BLOCK_SIZE,Game.BLOCK_SIZE);  rect(Game.BLOCK_SIZE*1,10,Game.BLOCK_SIZE,Game.BLOCK_SIZE);  rect(Game.BLOCK_SIZE*2,10,Game.BLOCK_SIZE,Game.BLOCK_SIZE);
    rect( 0, 20,Game.BLOCK_SIZE,Game.BLOCK_SIZE);                                                               rect(Game.BLOCK_SIZE*1,20,Game.BLOCK_SIZE,Game.BLOCK_SIZE); 
    
    popMatrix();
    
  }
}

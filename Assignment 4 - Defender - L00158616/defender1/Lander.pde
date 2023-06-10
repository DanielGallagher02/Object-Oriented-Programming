public class Lander extends Alien
{
  private Location location; 
  private float speed;   
  private int direction;
  
  public Lander(int number, Location location)
  {
    super(number);
    this.location = location;    
    this.speed=2.0;
    this.direction=1;
  }
  
  public Location getLocation()
  {
    return this.location;
  }
 
  public float getSpeed()
  {
    return this.speed;
  }
  
  public int getDirection()
  {
    return this.direction;
  }

  public boolean visible()
  {    
    if (getLocation().getY()>height)
      return false;
    else
      return true;
  }
  
  private void updateY()
  {
    getLocation().setY(getLocation().getY()+(direction*(int)speed));
  }
  
  public boolean intersect(Projectile projectile)
  {
    if (dist(projectile.getLocation().getX()+30,projectile.getLocation().getY(), getLocation().getX()+(Game.CHARACTER_SIZE/2), getLocation().getY()+(Game.CHARACTER_SIZE/2)) < Game.CHARACTER_SIZE/2)   
      return true;
    else
      return false;
  }
  
  // Part 1 - To String Method
  public String toString()
  {
    return "[Lander:number=" + getNumber() + " ,location=[Location:x=" + getLocation().getX() + ", y=" + getLocation().getY() + "], speed=" + speed + ", direction=" + direction + "]";  
  }

  
  
  
  
  //
  // Add your code ABOVE this method
  //  
  public void display() // CAREFUL HOW/IF YOU MODIFY THIS CODE!!
  {
    
    fill(Game.LANDER_COLOUR);
    stroke(153);
    
    pushMatrix();
    updateY();
    translate(getLocation().getX(), getLocation().getY());
    
    rect(0,0,Game.BLOCK_SIZE,Game.BLOCK_SIZE);                                                                rect(Game.BLOCK_SIZE*2, 0,Game.BLOCK_SIZE,Game.BLOCK_SIZE);
    rect(0,10,Game.BLOCK_SIZE,Game.BLOCK_SIZE); rect(Game.BLOCK_SIZE*1,10,Game.BLOCK_SIZE,Game.BLOCK_SIZE);                                                                              rect(Game.BLOCK_SIZE*2,10,Game.BLOCK_SIZE,Game.BLOCK_SIZE);
    rect(0,20,Game.BLOCK_SIZE,Game.BLOCK_SIZE);                                                               rect(Game.BLOCK_SIZE*2,20,Game.BLOCK_SIZE,Game.BLOCK_SIZE); 
       
       
    // Part 1 - display the lander number here
    fill(255,255,255);
    textSize(12);
    text(getNumber(),12,20);
    
    
    popMatrix();
  }

}

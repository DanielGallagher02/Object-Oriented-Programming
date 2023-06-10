public abstract class SpaceObject
{
  // 2 private instance varaibles
  // location and speed
  private Location location;
  private float speed;

  // +SpaceObject(location: Location, speed: float, direction: int)
  public SpaceObject(Location location, float speed, int direction)
  {
    this.location = location;
    this.speed = speed;
  }

  // +SpaceObject()
  public SpaceObject()
  {
    this.location=new Location(0,0);
    this.speed=1.0;
  }

  // +SpaceObject(location: Location)
  public SpaceObject(Location location)
  {
    this.location = location;
    this.speed=1.0;
  }

  // +getLocation(): Location
  public Location getLocation()
  {
    return this.location;
  }

  // +setLocation(location: Location): void
  public void setLocation(Location location)
  {
    this.location = location;
  }

  // +getSpeed(): float
  public float getSpeed()
  {
    return this.speed;
  }

  // +setSpeed(speed: float)
  public float setSpeed(float speed)
  {
    return this.speed = speed;
  }

  // +display(): void
  public abstract void display();

  // +toString(): String
  public String toString()
  {
    return "[SpaceObject: location=[Location:x=" + location.getX() + ", y=" + location.getY() + "], speed=" + speed + "]";
  }
}

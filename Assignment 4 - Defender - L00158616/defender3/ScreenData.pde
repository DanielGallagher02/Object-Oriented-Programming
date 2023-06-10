public class ScreenData
{
  private int score;
  private int lives;

  public ScreenData()
  {
    score=0;
    lives=Game.INITIAL_LIVES;
  }
  
  //Part 1 - getScore(): int
  public int getScore()
  {
    return score;
  }
  
  //Part 1 - setScore(score: int): void
  public void setScore(int score)
  {
    this.score = score;
  }
  
  //Part 1 - getLives(): int
  public int getLives()
  {
    return lives;
  }
  
  //Part 1 - setLives(lives: int): void
  public void setLives(int lives)
  {
    this.lives = lives;
  }
  
  //Part 1 - incScore(value: int): void
  public void incScore(int value)
  {
    score = score + value;
  }
  
  //Part 1 - addLife(): void
  public void addLife()
  {
    lives = lives + 1;
  }
  
  //Part 1 - loseLife(): void
  public void loseLife()
  {
    lives = lives - 1;
  }
   
  //Part 1 - To String Method
  public String toString()
  {
    return "[ScreenData:score=" + score + "," + " lives=" + lives + "]";
  }
  
  public void display()
  {
    textSize(28);
    fill(153);    
    // display lives and score
    textSize(32);
    text("Score:0", 0, 30);
    text("Lives:3", width-110, 30);
    
  }
}

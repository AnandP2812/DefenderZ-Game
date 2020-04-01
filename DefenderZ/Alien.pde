final color ALIEN1 = color(0,255,0); //this is the colour of the alien on the outside
final color ALIEN2 = color(50,100,0); //this is the colour of the alien on the inside 

class Alien //this is the name of the class - used multiple times in the game
{
  int x,y; //declaring the X and Y variables
  int speedX, speedY; //this is the speed of the X position and the Y position 
  
  Alien (int x, int y, int speedX) //constructor; the alien will have X pos, Y pos and a speed variable on the X axis
  {
    this.x = x; //this.x equals x; this means it will equal the value given to int x
    this.y = y; //this.y equals y; this means it will equal the value given to int y
    this.speedX = speedX; //this.speedX equals speedX
  }
  
  void move() //this will makes the alien move where I want
  {
    if(edge() == false) { //this is the outcome if the edge is false
      x=x-speedX; //in which, x will equal x minus the speedX
      float otherY = random(-5,5); //this is a new Y variable; it is random to make the aliens appear in different places 
      y = y + (int)otherY; //this means that y equals y plus the int and the otherY
    }
    else { //code to execute if it is not part of the if statement
      x = 800; //x will equal 800
    }
  }
  
  void render() //makes the alien appear on ths screen 
  {
    fill(ALIEN1); //this is the outisde of the alien
    ellipse(x,y,30,30); //this is the shape that I have used to make it
    fill(ALIEN2); //this is the outisde of the alien
    ellipse(x,y,50,15); //this is the shape that I have used to make it
  }
  
  boolean edge() //declaring a boolean expresion 
  {
    return x <= 0; //this will return x when it is less than or equal to 0
  }
  
}
    
    
    
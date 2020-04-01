class Defender //this is the name of the class - only used once in the game
{
  int x,y; //declared x and y variables for the defender
  int speedX, speedY; //this is the x speed and y speed of the defender
  
  Defender(int x, int y, int speedX) //constructor; the ball will have a x and y position - and a x speed
  {
    this.x = x; //this.x equals x; this means it will equal the value given to int x
    this.y = y; //this.y equals y; this means it will equal the value given to int y
    this.speedX = speedX; //this.speedX equals speedX
  }
  
  void draw() { //executes the function 
    fill(128,212,255); //the colour of the defender 
    rect(x,y,50,20); //the shape of the defender on the screen
    fill(255,0,0);
    triangle(x+50,y-2,x+50,y+23,x+80,y+13);
    
  }
  
  boolean crash() //boolean declared called crash 
  {
    color findColour;
    for(int i = y; i < y +20; i++) //this is a for loop
    {
      findColour = get (x+85, i);
      if(findColour == color(0,255,0)) //if findColour is equivalent to the color
      {
        return true; //then return it if it is true
      }
    }
    return false; 
  }
  
}
PImage background; //ths is the background image of the game
int x =0; //the value 0 is assigned to x
int game = 0; //the variabe name is assigned to 0
int Running = 0; //the variabe name is assigned to 0
int over = 1; //the variabe name is assigned to 1

Alien alien1; //this is the name of the first alien
Alien alien2; //this is the name of the second alien
Alien alien3; //this is the name of the third alien
Defender defender; //this is the name of the defender that is going to avoid the aliens

void setup() //this is where variables and functions are declared
{
  size(800,400); //this is the size of the screen
  background = loadImage("spaceBackground.jpg"); //this is where I have loaded the space background from
  background.resize(width,height); //the background will fill the height and width of the screen size
  
  alien1 = new Alien(800,100,5); //this the alien; the first value is the X pos; the second is the Y pos; the third value is the speed
  alien2 = new Alien(1200,200,5); //this the alien; the first value is the X pos; the second is the Y pos; the third value is the speed
  alien3 = new Alien(1000,300,5); //this the alien; the first value is the X pos; the second is the Y pos; the third value is the speed
  defender = new Defender(100,100,0); //this the defender; the first value is the X pos; the second is the Y pos; the third value is the speed
}

void draw() //this will execute the function
{
  if (game == Running) //if statment is saying that this is what happens if the game is running
  {
    drawBackground(); //makes the background appear on the screen
    alien1.move(); //makes the alien move
    alien1.render(); //makes the alien appear on screen 
    alien2.move(); //makes the alien move
    alien2.render(); //makes the alien appear on screen 
    alien3.move(); //makes the alien move
    alien3.render(); //makes the alien appear on screen 
    defender.draw(); //makes the defender appear on screen
    if (defender.crash()) //if the defender hits an alien
    {
      game = over; //then the game will stop - by which I mean, it will freeze
    }
  } 
    
}

void drawBackground() //these are the variables for the background
{
  image(background, x, 0); //makes the image appear again when the screen moves along
  image(background, x+background.width, 0); //makes the image appear again when the screen moves along
  x -=4; //this moves the screen along while controlling the defender 
  if(x == -background.width)
  x=0;
}


void keyPressed() //this is to control the defender using the arrow keys
{
  if(keyCode == UP) //this is declaring a key press using the UP arrow key
  {
    defender.y=defender.y - 10; //when UP is pressed, it will move up the Y axis, subtracting 10 everytime
  }
  
  if(keyCode == DOWN) //this is declaring a key press using the DOWN arrow key
  {
    defender.y = defender.y + 10; //when DOWN is pressed, it will move down the X axis, adding 10 everytime
  }
}


  
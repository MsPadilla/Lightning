int startX = 250;
int startY = 0; 
int endX = 250; 
int endY = 0; 
float boltWeight = 8.0;
PImage logo;

void setup()
{
  size(500,500);
  background(0); 
  logo = loadImage("ATCLogoWeb.png");
}


void draw()
{
  noStroke();
  rect(0,0,500,500); 
  fill(0,15); 
  
  
  //background(0);
 strokeWeight(boltWeight); 
 stroke((int)(Math.random()*256)); 
 while(endX<501){

   endX = startX+(int)((Math.random()*19)-9); 
   endY = startY+(int)(Math.random()*10); 

   line(startX, startY, endX, endY); 
   startX = endX;
   startY = endY;
   
   
 }
 logo.resize(100,100);
 image(logo,mouseX,300);
  
}
void mousePressed()
{
  startX = 250;
  startY = 0; 
  endX = 250; 
  endY = 0; 

}

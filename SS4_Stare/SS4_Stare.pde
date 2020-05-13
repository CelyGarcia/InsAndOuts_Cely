//Stare by Cely 

//images
PImage hallway;
PImage eyes;
PFont font1;

void setup(){
  size(500,500);
  //fonts name
  font1 = loadFont("AppleSDGothicNeo-Bold-48.vlw");
  //images
  frameRate(60);
  imageMode(CENTER);
   hallway= loadImage("dark_hallway.jpg");
   eyes= loadImage("eyes.jpg");
 
}
 
void draw(){
  background(0);
  //hallway image
  image(hallway, 200,150);
  textSize(20);
  fill(165,0,0);
  textAlign(CENTER);
  text("I see you.", 250, 400);
  //red eyes image
  image(eyes, 200,160);
  tint(255,255*1-mouseX);
  

}

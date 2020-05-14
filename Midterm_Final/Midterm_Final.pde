//Trick or Treat by Celery

PImage[] pumpkin = new PImage [2];
PFont font1;
int jack_o_lantern= 0;

void setup(){
 size(600,600);
//fonts name
  font1 = createFont("AppleSDGothicNeo-Bold-48.vlw copy", 32);
  textFont(font1);
  textAlign(CENTER);
//images
  pumpkin[0]= loadImage ("evil-pumpkin.png");
  pumpkin[1]= loadImage ("cute-pumpkin.png");
}
void draw(){
background(120, 70, 169);
//image  
  imageMode(CENTER);
  image(pumpkin[jack_o_lantern], width/2, height/2, 200, 200);
//font  
  textSize(20);
  fill(165,0,0);
  textAlign(CENTER);
  text("I see you.", 250, 400);
}
void mousePressed(){
  jack_o_lantern=int(random(pumpkin.length));
}

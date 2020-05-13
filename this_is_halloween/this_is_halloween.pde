//This is Halloween by Cely

PImage[] spook = new PImage [4]; //4 objects 

int halloween=0; 

void setup(){
size (600,600);

spook[0]= loadImage ("spook0.png");
spook[1]= loadImage ("spook1.png");
spook[2]= loadImage ("spook2.png");
spook[3]= loadImage ("spook3.jpg");
}

void draw(){
background(211, 103, 27);
imageMode(CENTER);
image(spook[halloween], width/2, height/2, 200, 200);
}

void mousePressed(){
  halloween=int(random(spook.length));
}

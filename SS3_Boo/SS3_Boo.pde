//Boo by   Cely: HW #2

void setup() {
  size (400, 400);
}
void draw() {
  
  background(77, 0, 153);
  // noStroke();
  noStroke();
  noFill();
  //ghost tail
   if(mousePressed){
  fill(255);
  triangle(185, 190, 370, 190, 200, 230);
  }
  else{
     fill(255);
  triangle(185, 190, 370, 160, 200, 230);
  }
  //body 
  fill(255);
  circle(200, 150, 160);
  //white body
  
  //red  mouth
  fill(255,0,0);
   circle(200,175, 30);
  //eye
  fill(0);
  circle(150, 145, 35);
  
  fill(0);
  circle(250, 145, 15);
  //eyes
  fill(255);
  circle(285, 150, 35);
  
  fill(255);
  circle(115,145, 35);
}

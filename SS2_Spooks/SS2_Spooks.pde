//Spooks by Cely

float y= 0;

void setup() {
  size(400, 400);
}

void draw() {
  
  background(77, 0, 153);
  // noStroke();
    for (int x=0; x<=width; x+=50) {
    fill(255, 125, 0);
    rect(185, 90, 25, 50);//stump plots

    ellipse (x, y, 50, 50);

  fill(255, 204, 0);//left eye color
  triangle(150, 225, 100, 225, 125, 175);//left eye plots

  fill(255, 204, 0);//right eye color
  triangle(275, 175, 250, 225, 300, 225);//right eye plots

  fill(255, 204, 0);//triangle smile
  triangle(250, 255, 150, 255, 200, 350);
  }

  y++;  //y value of ellipse increments after we exit the for loop

  if (y>=height+50) { //if y value reaches 50 pixels below canvas
    y=-50;  //sets y value to 50 pixels above canvas
      rect(185, 90, 25, 50);//stump plots
 
}
  
  println ("y=:  " + y); // printing to console
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

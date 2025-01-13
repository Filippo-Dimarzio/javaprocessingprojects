float rColourValue = 0;
float gColourValue = 130;
float bColourValue = 190;

void setup()
{
 size(650,380);
 background(160);
}

void draw()
{
 //top green banner
 fill(79, 121, 66); //dark green
 rect(0, 90, 350, 40, 350);
 fill(255);
 textSize(30);
 text("Rolex" , 150,120);
 
 //top red banner
 fill(199, 0, 57);
 rect(350,90, 650, 40, 650);
 fill(255); //white
 textSize(30);
 text("Emirates", 410, 120);

 {
   //the five rectangles under F1 text  
     fill(0); 
     rect(300, 165, 15, 50, 48);
     rect(320, 165, 15, 50, 48);
     rect(340, 165, 15, 50, 48);
     rect(360, 165, 15, 50, 48);
     rect(380, 165, 15, 50, 48);

  //five red circles for lights out
  {
  fill(255, 0, 0);
  circle(307,200,10);
   circle(327,200,10);
    circle(347,200,10);
     circle(367,200,10);
      circle(387,200,10);

  }
{
    //f1 text rectangle
    fill(9,9,20);
    rect(220, 130, 260, 40, 378); 
    fill(199, 0, 57); //Red
    textSize(19);
    text("F1", 340, 155);
    }

 //while loop for the black racetrack line
{
  int yCoordinate = 360;
 
 int i = 0;
 
 fill(0);
 while (i < 1) 
{
    rect(20, yCoordinate, 650, 10);
    yCoordinate = yCoordinate + 45;
    i++;
}

//left yellow barriers 
 fill(255, 255, 143); //yellow
 rect(1, 1, 25, 470, 328);
 
  //right yellow barriers
  rect(625,1, 25, 470, 328);

//nested loop for Commentary
  while ( i < 2 ) {
  int j = 0;
  while (j < 2 ) {
    println("It's Light Out And Away We Go!: Checo Perez");
    j++;
    }
 i++;
}

{
   //car appeareance
   if (mousePressed){
   strokeWeight(3);
   
  fill(17,82,188); //dark blue
  triangle(376, 279, 222, 339, 351, 340); //dark blue triangle spoiler
  fill(17,82,188); //dark blue
  rect(270, 300, 100, 40); //body 
  fill(0); //black
  ellipse(290,340,30,30); //wheels 
  fill(0); //black
  ellipse(350,340,30,30); //wheels 
  fill(2, 0, 0); //black
  triangle(338, 276, 326, 302, 295, 299); //black windshield
  }
 }


   //nitro coming out the car
   if (mousePressed) {
     stroke(255);
     fill(rColourValue, gColourValue, bColourValue);
     ellipse(mouseX, mouseY, 30, 30);
     
     if (rColourValue < 255)
       rColourValue = rColourValue + 2;
   else
       rColourValue = 0;

   if (gColourValue < 255)
       gColourValue = gColourValue + 6;
   else
       gColourValue = 0;
 
   if (bColourValue < 255)
       bColourValue = bColourValue + 12;
   else
       bColourValue = 0;
 
}
   }
}

}
 void keyPressed()
 {
 if(key == 'l' || key == 'L'){
 textSize(20);
 text("Lights out", 200, 240);
 }
  else if(key == 'a' || key == 'A'){
     textSize(20);
     text("Away we go", 380, 240);
  
 }
}

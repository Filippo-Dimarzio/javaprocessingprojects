int posX = 0;
int posY = 0;
int cote = 100;
boolean inverter;

void setup() {
size(600,680);
noStroke();
}

void draw() {
  if (inverter) {
    fill(255);
  } else {
    fill(random(0,200));
  }
  rect(posX, posY, cote, cote);
  posX += cote;
  inverter = !inverter;
  if (posX >= width) {
    posX = 0; 
    posY += cote; 
    inverter = !inverter;
  }
}

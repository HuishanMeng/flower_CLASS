Flower[] myFlower;
float x;
float y;

void setup() {
  size(800, 800);
  myFlower=new Flower[8];
  for (int i=0; i<myFlower.length; i++) {
    myFlower[i]=new Flower(i*width/8, 0, 8, 223, random(0, 135), 152);
  }
}
void draw() {
  background(119, 196, 211);
  //background(0, 161, 217);
  for (int i=0; i<myFlower.length; i++) {
    myFlower[i].display();
    myFlower[i].move();
  }
}


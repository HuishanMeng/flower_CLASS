class Flower{
  float petalX;
  float petalY;
  float flowerX;
  float flowerY;
  int numPetals;
  float n;
  float wave;
  float r;
  float g;
  float b;
  float x1;
  float x2;
 
  Flower(float _flowerX, float _flowerY,int _numPetals,float _r, float _g, float _b){
    flowerX=_flowerX+width/16;
    flowerY=_flowerY+height/2;
    numPetals=_numPetals;
   
    x1=2;
    x2=-2;
 
     r=_r;
     g=_g;
     b=_b;
    }
  void display(){
pushMatrix();
  translate(flowerX, flowerY);
  strokeWeight(5);
  stroke(125, 132, 46);
  translate(n, 0);
  strokeWeight(1);
  noStroke();
  fill(205, 232, 85);
  ellipse(10, 80, 10, 10);
  ellipse(10, 160, 10, 10);
  ellipse(10, 240, 10, 10);
  fill(255);
  ellipse(-18, 200, 10, 10);
  ellipse(-18, 120, 10, 10);
  for (float rot = 0; rot < 2*PI; rot += 2*PI/ numPetals) {
    rotate(rot);
    stroke(125, 138, 46);
    fill(255, 255, 157);
    ellipse(-5, -5, 5, 5);
    fill(r,g,b);
    beginShape();
    vertex(5, 5);
    bezierVertex(5, 5, 50, 20, 30, 30);
    bezierVertex(30, 30, 20, 60, 5, 5);
    endShape();
  }
  popMatrix();
 }
 void move(){
   wave=wave+0.003;
   n=noise(wave)*width/12;
   pushMatrix();
  translate(flowerX, flowerY);
  line(2+n, 10, 2, height/2);
  line(-2+n, 10, 2, height/2);
   popMatrix();
}
}


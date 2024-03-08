// deklaration af height //<>//
int height;

void setup() {
  size(800, 800);
  rectMode(CENTER);
  noLoop();
}

void draw() {
  // initiering af af height
  height=0;
  println(pyramid(50));
}

int pyramid(int a) {
  if (a==0) {
    return 0;
  }

  drawPyramidLayer(a);
  return pyramid(a-1)+a*a;
}


void drawPyramidLayer(int l) {
  // variabel deklarationer
  int squareSize = 10;
  float x = width/2-((l/2)*squareSize);
  float y = 200;
  
  
  pushMatrix();
  //println(((l/2)*squareSize+" "+l+" "+l/2));

  // tag højde for ulige tal
  if (l%2==0) {
    translate(x, y);
  } else {
    translate(x-(squareSize/2), y);
  }
  // tegn pyramidelag
  for (int i =0; i<l; i++) {
    square(i*squareSize, height*squareSize, squareSize);
  }

  // tæl højde én op så vi kan bygge nyt lag
  height++;
  popMatrix();
}

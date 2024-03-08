int height =0; //<>//

void setup() {
  size(800, 800);
  rectMode(CENTER);
}

void draw() {
  height=0;

  println(pyramid(50));
}



int pyramid(int a) {
  int squareSize = 10;
  if (a==0) {

    return 0;
  }

  pushMatrix();
  println(((a/2)*squareSize+" "+a+" "+a/2));

  // tag højde for ulige tal
  if (a%2==0) {
    translate(width/2-((a/2)*squareSize), 200);
  } else {
    translate(width/2-((a/2)*squareSize+squareSize/2), 200);
  }
  // tegn pyramidelag
  for (int i =0; i<a; i++) {
    square(i*squareSize, height*squareSize, squareSize);
  }

  // tæl højde én op så vi kan bygge nyt lag
  height++;
  popMatrix();

  return pyramid(a-1)+a*a;
}

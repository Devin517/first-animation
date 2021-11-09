PShape pepe;
int xPos;
int xDir = 2;
int yPos;
int yDir = 1;


void setup() {
  size(500, 500);
  pepe = createShape(GROUP);

  
  //FACE
  fill(0, 255, 0);
  PShape a = createShape(ELLIPSE, width/2, height/2, 300, 220);
  PShape b = createShape(ELLIPSE, 325, 150, 90, 100);
  PShape c = createShape(ELLIPSE, 240, 150, 90, 100);
  
  
  //EYES  
  fill(255);
  PShape d = createShape(ELLIPSE, 340, 150, 80, 40);
  PShape e = createShape(ELLIPSE, 270, 150, 80, 40);
  fill(0);
  PShape f = createShape(ELLIPSE, 270, 150, 40, 40);
  PShape g  =createShape(ELLIPSE, 340, 150, 40, 40);
  
  //MOUTH
  fill(255, 0, 0);
  
  PShape h = createShape(ELLIPSE, 325, 290, 200, 50);
  PShape i = createShape(LINE, 225, 290, 425, 290);
  PShape j = createShape(LINE, 272, 202, 238, 219);
  PShape k = createShape(LINE, 294, 201, 330, 219);

  pepe.addChild(a);
  pepe.addChild(b);
  pepe.addChild(c);
  pepe.addChild(d);
  pepe.addChild(e);
  pepe.addChild(f);
  pepe.addChild(g);
  pepe.addChild(h);
  pepe.addChild(i);
  pepe.addChild(j);
  pepe.addChild(k);
}

void draw() {
  background(255);
  translate(xPos += xDir, yPos += yDir);
  
  if (xPos < -100 || xPos > width - 425) {
   xDir *= -1; 
  }
  if (yPos < -100 || yPos > height - 420) {
   yDir *= -1; 
  }
  shape(pepe);
  
}

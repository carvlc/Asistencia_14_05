float a;
float b;
float c;
float x;
float y;

void setup() {
  size(400, 400);
  a = -0.2;
  b = 8;
  c = 9;
  x = -8/(2*(-0.2));
  y = a * pow(x,2) + b * x + c;
  println("x: " + x + " - y: " + y);
}

void draw() {
  background(255);
  stroke(0);
  line(0, height/2, width, height / 2);
  line(width/2, 0,width/2, height);   
  dibujarTrayectoria(a,b,c);
  dibujarPuntoMasAlto(x,y);
}

void dibujarTrayectoria(float a,float b,float c) {
  stroke(255, 0, 0);
  fill(255);
  for (float x = 0; x <= 40; x += 1) {
    float y = a * pow(x,2) + b * x + c;
      ellipse(x + width / 2, height / 2 - y, 10, 10);
  }

}

void dibujarPuntoMasAlto(float x, float y) {
  fill(0);
  ellipse(x + width / 2, height / 2 - y, 10, 10);
}

float rho = 28.0;
float sigma = 10.0;
float beta = 8.0 / 3.0;
float x = 5;
float y = 5;
float z = 5;
float dx,dy,dz;
float dt = 0.01;

void setup(){
  size(1000, 1000, P3D);
  background(0);
}

void draw(){

  translate(width / 2, height / 2);
  scale(5);
  
  dx = (sigma * (y - x)) * dt;
  dy = (x * (rho - z) - y) * dt;
  dz = (x * y - beta * z) * dt;
  
  x += dx;
  y += dy;
  z += dz;
  
  stroke(255);
  
   point(x,y,z);
}

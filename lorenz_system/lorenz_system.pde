float rho = 28.0;
float sigma = 10.0;
float beta = 8.0 / 3.0;
float x,y,z;
float dx,dy,dz;

void setup(){
  size(1000,1000);
}

void draw(){
  dx = sigma * (y - x);
  dy = x * (rho - z) - y;
  dz = x * y - beta * z;
}

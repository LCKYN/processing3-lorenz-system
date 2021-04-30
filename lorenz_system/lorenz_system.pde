float rho = 28.0;
float sigma = 10.0;
float beta = 8.0 / 3.0;
float x = 5;
float y = 5;
float z = 5;
float dx,dy,dz;
float dt = 0.01;
int size = 100;
int c = 0;

int m = 10;

ArrayList<PVector> p = new ArrayList<PVector>(); 

void setup(){
  size(1000, 1000);
  
  noFill();
  stroke(255);
}

void draw(){
  background(0);

  translate(width / 2, height / 2);
  
  dx = (sigma * (y - x)) * dt;
  dy = (x * (rho - z) - y) * dt;
  dz = (x * y - beta * z) * dt;
  
  x += dx;
  y += dy;
  z += dz;
  
  p.add(new PVector(x,y,z));
  if(p.size() > size){
    p.remove(0);
  }
  beginShape();
  
  for(PVector i : p){
    vertex(i.x * m, i.y * m);
  }
  endShape();
}

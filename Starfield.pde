Particle[] particle;
void setup(){
  size(1000,1000);
  particle = new Particle[500];
  for(int i=0;i<particle.length;i++){
    particle[i] = new Particle();
  }
  particle[particle.length-1] = new OddBall();
}
void draw(){
    fill(0);
  rect(0,0,1000,1000);
  for(int i=0;i<particle.length;i++){
    particle[i].move();
    particle[i].show();
  }
}

class Particle{
  double myX, myY, mySpeed, angle, size;
  Particle(){
    myX = 500;
    myY = 500;
    mySpeed = Math.random()*100;
    angle = Math.random()*TWO_PI;
    size = 2;
  }
  
  void move(){
    myX += mySpeed * Math.cos(angle);
    myY += mySpeed * Math.sin(angle);
    if((myX > width || myX < 0) || myY > height){myX = width/2; myY = height/2; mySpeed = Math.random()*100;angle = Math.random()*TWO_PI;  }
  }
  void show(){
    fill(255);
    noStroke();
    ellipse((float)myX,(float)myY, (float)size,(float
    )size);
  }
}

class OddBall extends Particle{
  OddBall(){
    myX = 500;
    myY = 500;
    mySpeed = Math.random()*25;
    angle = Math.random()*TWO_PI;
    size = 25;
  }
}

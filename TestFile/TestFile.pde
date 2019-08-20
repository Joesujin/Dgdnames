float x,y,lastx,lasty;
float noise1,startnoise1, noise2,startnoise2;
float angl,scl,drawscl;


void setup(){
  size(500,500);
  x =width/2;
  y =height;
  lastx = x+5;
  lasty = y;
  strokeWeight(3);
  startnoise1 = random(10);
  startnoise2 = random(10);
  noise1 = startnoise1;
  noise2 = startnoise2;
  scl =5;
  drawscl =40;
  colorMode(HSB);
  background(10);
  fill(10);
  rectMode(CENTER);
}

void draw(){
  float noiseX = noise(noise1);
  float noiseY = noise(noise2);
  
  strokeWeight(noiseX*15);

  stroke(noiseX*250,220,200,noiseX*190);
  
  
  int radn = floor(random(2));
  if (radn%2 ==0){
  x = x+(noiseX+(sin(angl)*scl));
  }
  else{
    x = x-(noiseX+(sin(angl)*scl));
  }
  y-=0.8;
  
  int radna = floor(random(2));
  if (radna%2 ==0){
  lastx = lastx+(noiseY+(sin(angl)*scl));
  }
  else{
    lastx = lastx-(noiseY+(sin(angl)*scl));
  }
  lasty-=0.7;
  
  pushMatrix();
  translate(x,y);
  rotate(radians(noiseX*360*2));
  strokeWeight(noiseX*15);
  stroke(noiseX*4*10,220,200,noiseX*150);
  ellipse(0,0,noiseX*drawscl,noiseX*drawscl);  
  //point(0,0);
  line(0,0,noiseX*drawscl,0);
  popMatrix();
  
  pushMatrix();
  translate(lastx,lasty);
  rotate(radians(noiseY*360*2));
  strokeWeight(noiseY*15);
  stroke(noiseY*16*10,220,200,noiseY*150);
  //point(0,0);
  ellipse(0,0,noiseY*drawscl,noiseY*drawscl);
  line(0,0,noiseY*drawscl,0);
  popMatrix();
  
  noise1 += 0.008;
  noise2 += 0.008;
  angl+=0.9;
}
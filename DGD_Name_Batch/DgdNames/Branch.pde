class Branch { 
  float x, y, noisee, startNoise, num; 
  float angl, scl, drawscl,col; 
  Branch(float _x, float _y, int _num) { 
    startNoise = _num; 
    noisee = startNoise; 
    x= _x; 
    y= _y;
    num = _num;
    drawscl = num*5;
    scl=15;
    col = map(num,0,25,0,105);
  } 
  void figure() { 
    float noiseX = noise(noisee); 
    int radn = floor(random(2)); 
    if (radn%2 ==0) { 
      x = x+(noiseX+(sin(angl)*scl));
    } else { 
      x = x-(noiseX+(sin(angl)*scl));
    } 
    y=y-(noiseX+(sin(angl)*scl))*2; 
    noisee += 0.08; 
    angl+=0.9;
  } 
  void display() { 
    float noiseX = noise(noisee); 
    pushMatrix(); 
    translate(x, y); 
    rotate(radians(noiseX*360*2)); 
    strokeWeight(noiseX*20); 
    stroke(noiseX*3*col, 220, 200, noiseX*150); 
    ellipse(0, 0, noiseX*drawscl, noiseX*drawscl); 
    //point(0,0); 
    //line(0, 0, noiseX*drawscl, 0); 
    popMatrix();
  }
}

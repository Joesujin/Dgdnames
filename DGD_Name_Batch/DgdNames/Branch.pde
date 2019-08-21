class Branch { 
  float x, y, noisee, startNoise, num; 
  float angl, scl, drawscl, col; 
  Branch(float _x, float _y, int _num) { 
    startNoise = 10; 
    noisee = startNoise; 
    x= _x; 
    y= _y;
    num = _num;
    drawscl = num*5;
    scl=10;
    col = map(num, 7, 32, 50, 105);
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
    //y=y-(noiseX+scl)*2; 

    //y-=12;
    noisee += 0.08; 
    angl+=0.9;
  } 
  void display() { 
    float noiseX = noise(noisee); 
    pushMatrix(); 
    translate(x, y); 
    rotate(radians(noiseX*360*2)); 
    strokeWeight(noiseX*20); 
    stroke(noiseX*4*col, 255, 250, noiseX*150); 
    if (num ==7 || num ==11 || num ==15 || num==21 || num==27) {
      //rect(0, 0, noiseX*35, noiseX*35); 
      line(0, 0, noiseX*35, 0);
    } else {
      ellipse(0, 0, noiseX*drawscl, noiseX*drawscl);
    }
    //point(0,0); 
    //line(0, 0, noiseX*drawscl, 0); 
    popMatrix();
  }
}

class Branch { 
  float x, y, noisee, startNoise, num; 
  float angl, scl, drawscl, col; 
  Branch(float _x, float _y, int _num) { 
    startNoise = num; 
    noisee = startNoise; 
    x= _x; 
    y= _y;
    num = _num;
    drawscl = num*5;
    scl=10;
    col = map(num, 7, 32, 100, 255);
  } 
  void figure() { 
    float noiseX = noise(noisee); 
    int radn = floor(random(2));
    if (radn%2 ==0) { 
      x = x+((sin(angl)*2));
    } else { 
      x = x-((sin(angl)*2));
    } 
    //y=y-(noiseX+(sin(angl)*scl))*1; 
    //y=y-(noiseX)*5; 

    y-=0.3;
    noisee += 0.08; 
    angl+=0.9;
  } 
  void display() { 
    float noiseX = noise(noisee); 
    pushMatrix(); 
    translate(x, y); 
    rotate(radians(noiseX*360*2)); 

    if (num ==7 || num ==11 || num ==15 || num==21 || num==27) {
      strokeWeight(noiseX*20); 
      //stroke(noiseX*col,255,col,15); 
      noFill();
      stroke(col, 255, col*2, 15); 
      rect(0, 0, noiseX*35, noiseX*35); 
      //line(0, 0, noiseX*35, 0);
    } else {
      noFill();
      strokeWeight(noiseX*5); 
      stroke(col, 255, col*2, 15); 
      ellipse(0, 0, noiseX*drawscl, noiseX*drawscl);
      strokeWeight(5); 
      line(0,0,noiseX*drawscl,0);
    }
    //point(0,0); 
    //line(0, 0, noiseX*drawscl, 0); 
    popMatrix();
  }
}

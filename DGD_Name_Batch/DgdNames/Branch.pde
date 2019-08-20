class Branch {

  float x, y, noisee, startNoise;
  float angl, scl, drawscl;

  Branch(float _x, float _y) {
    startNoise = random(10);
    noisee = startNoise;
    x= _x;
    y= _y;
  }

  void figure() {
    float noiseX = noise(noisee);
    int radn = floor(random(2));
    if (radn%2 ==0) {
      x = x+(noiseX+(sin(angl)*scl));
    } else {
      x = x-(noiseX+(sin(angl)*scl));
    }
    y-=0.8;

    noisee += 0.008;
    angl+=0.9;
  }

  void display() {
    float noiseX = noise(noisee);
    pushMatrix();
    translate(x, y);
    rotate(radians(noiseX*360*2));
    strokeWeight(noiseX*15);
    stroke(noiseX*4*10, 220, 200, noiseX*150);
    ellipse(0, 0, noiseX*drawscl, noiseX*drawscl);  
    //point(0,0);
    line(0, 0, noiseX*drawscl, 0);
    popMatrix();
  }
}
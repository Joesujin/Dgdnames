boolean record;
String s, index;
char[] c;
int [] num;
ArrayList<Branch> branch = new ArrayList<Branch>();
float division;

void setup() { 
  size(1000, 1000); 
  background(0);
  s = "abcdefghijklmnopqrstuvwxyz"; 
  s = s.toLowerCase(); 
  c = new char[s.length()]; 
  num =new int[s.length()];
  //frameRate(24);
  noiseSeed(24031994);
  division = width/(s.length()*2);


  //for (float ang=0; ang<=360; ang+=(division)) {
  //  float rad = radians(ang);
  //  float x = (width/2)+(100*cos(rad));
  //  float y = (height/2)+(100*sin(rad));
  for (int i = 0; i < s.length(); i++) { 
    c[i] = s.charAt(i); 
    num[i] = int(c[i]) -90;

    //branch.add(new Branch(x, y, num[i]));
    println(c[i], num[i]);
    //}

    branch.add(new Branch((width/3)+division*i, height, num[i]));
  } 
  colorMode(HSB);
} 


void draw() { 
  

  fill(155, 155);
  textSize(32);
  //text(s, 100, 100);
  fill(0);
  textSize(128);
  //text("DGD",600,600);

  fill(0); 
  for (int i = 0; i < s.length(); i++) { 
    stroke(num[i]*5); 
    //ellipse(width/2, height/2, num[i]*10, num[i]*10); 
    Branch b = branch.get(i); 
    //for (float ang=0; ang<=360; ang+=division) {
    //pushMatrix();
    b.figure(); 
    b.display();
    //popMatrix();
    //}
  }

  //if (record) {
    //endRecord();
    //record = false;
  //}
}

void mousePressed() {
  saveFrame("line-######.png");
  //record = true;
  //endRecord();
}

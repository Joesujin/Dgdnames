String s, index;
char[] c;
int [] num;
ArrayList<Branch> branch = new ArrayList<Branch>();
 
 
void setup() { 
  size(1000, 1000); 
  background(0);
  s = "JenniferHoro"; 
  s = s.toLowerCase(); 
  c = new char[s.length()]; 
  num =new int[s.length()];
  
  
  for (int i = 0; i < s.length(); i++) { 
    c[i] = s.charAt(i); 
    num[i] = int(c[i]) -90;
    noiseSeed(num[i]);
    branch.add(new Branch(width/2, height,num[i])); 
    println(c[i], num[i]);
  } 
  
  colorMode(HSB);
  
} 


void draw() { 
  fill(155,155);
  textSize(32);
  text(s,100,100);
  
  fill(0); 
  for (int i = 0; i < s.length(); i++) { 
    stroke(num[i]*5); 
    //ellipse(width/2, height/2, num[i]*10, num[i]*10); 
    Branch b = branch.get(i); 
    b.figure(); 
    b.display();
  }
}

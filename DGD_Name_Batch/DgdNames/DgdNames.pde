String s,index;
char[] c;
int [] num;
ArrayList<Branch> branch = new ArrayList<Branch>();

void setup(){
  size(500,500);
  s = "abcdefghijklmnopqrstuvwxyz";
  s = s.toLowerCase();
    
  c = new char[s.length()];
  num =new int[s.length()];
  
  
  for(int i = 0; i < s.length(); i++){
    c[i] = s.charAt(i);
    num[i] = int(c[i]) -96;
    branch.add(new Branch(num[i]*num.length,height));
    println(c[i],num[i]);
  }
  noFill();
  
}

void draw(){
  //background(0);
  for(int i = 0; i < s.length(); i++){
    stroke(num[i]*5);
    ellipse(width/2,height/2,num[i]*10,num[i]*10);
    Branch b = branch.get(i);
    b.figure();
    b.display();
  }
  
}

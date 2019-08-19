String s,index;
char[] c;
int [] num;

void setup(){
  size(500,500);
  s = "Alienware";
  s = s.toLowerCase();
    
  c = new char[s.length()];
  num =new int[s.length()];
  
  for(int i = 0; i < s.length(); i++){
    c[i] = s.charAt(i);
    num[i] = int(c[i]) -96;
    println(c[i],num[i]);
  }
  noFill();
  
}

void draw(){
  for(int i = 0; i < s.length(); i++){
    stroke(num[i]*5+150);
    ellipse(width/2,height/2,num[i]*10,num[i]*10);
  }
}

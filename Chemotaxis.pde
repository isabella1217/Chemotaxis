 //declare bacteria variables here   
Bacteria [] bac;
void setup(){
  size(600,600);
  
 
  bac = new Bacteria [200];
  for(int i = 0; i < bac.length;i++)
  {
    bac[i] = new Bacteria ();
  }
}
void draw(){
   background(0);
  for(int i = 0; i < bac.length;i++)
  {
    bac[i].show() ;
    bac[i].move() ;
  }
}
class Bacteria{
  int x, y;
  int myColor;
  Bacteria()
  {
    x = 300 ;
    y = 300;
    myColor = color(162,245,40);//glow in the dark color
    //myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  void move(){
    if(mouseX>x){
    x= x+(int) (Math.random() * 8)-3;}
    else{
    x= x+(int) (Math.random() * 6)-3;}
    if(mouseY>y){
    y = y+(int) (Math.random() * 8)-3;}
    else{
    y = y+(int) (Math.random() * 6)-3;}  
  }
  void show(){
    fill(myColor);
    ellipse(x,y,10,10);
  }
}

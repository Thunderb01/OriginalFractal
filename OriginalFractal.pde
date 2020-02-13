public void setup(){
  size(900,900);
}

public void draw(){
  double x= PI/3;
  noLoop();
  //line(450,900,450,600);
  
  //tree(450,600,300,PI*1.5);
  tree(450,300,200,PI*1.5);
  tree(300,450,200,PI);
  tree(600,450,200,0);
  tree(450,600,200,PI*.5);
  
}

public void tree(int x, int y, double len, double angle){
  double angle1 = angle+PI/4;
  double angle2 = angle-PI/4; 
  len*=.6;
  int endX1 = (int)(len*Math.cos(angle1) + x);
  int endY1 = (int)(len*Math.sin(angle1) + y);
  int endX2 = (int)(len*Math.cos(angle2) + x);
  int endY2 = (int)(len*Math.sin(angle2) + y);
  if(len<=1){
    line(x,y,endX1,endY1);
    line(x,y,endX2,endY2);
  }else{
    line(x,y,endX1,endY1);
    line(x,y,endX2,endY2);
    tree(endX1,endY1,len,angle1);
    tree(endX2,endY2,len,angle2);
  }
}

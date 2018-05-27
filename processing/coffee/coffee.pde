int x=0;
int y=0;
int i=0;
int l=0;
int s=0;
int c=0;

int swich=1;

void setup(){
  size(500,900);
  colorMode(HSB,360,100,100);
  background(0,0,100);
  fill(16,50,50);
  noStroke();
  for(l=0;l<16;l++){
    rect(0,y,500,30);
    y+=60;
  }
  y=0;
  
  
  x=155;
  c=0;
}

void draw(){
  /*机*/
  noStroke();
  fill(18,82,50);
  rect(50,700,25,200);
  rect(425,700,25,200);
  fill(18,82,67);
  beginShape();
  vertex(0,800);
  vertex(500,800);
  vertex(450,700);
  vertex(50,700);
  vertex(0,800);
  endShape();
  rect(0,800,50,100);
  rect(450,800,50,100);
  
  /*カップ*/
  fill(0,0,100);
  beginShape();
  curveVertex(200,720);
  curveVertex(100,550);
  curveVertex(250,520);
  curveVertex(400,550);
  curveVertex(300,720);
  curveVertex(200,720);
  curveVertex(100,550);
  curveVertex(250,580);
  endShape();
  beginShape();
  curveVertex(100,720);
  curveVertex(100,720);
  curveVertex(200,750);  
  curveVertex(300,750);
  curveVertex(400,720);
  curveVertex(400,720);
  endShape();
  fill(18,82,67);
  ellipse(250,545,200,30);
  
  /*矢印*/
  
  if(swich==1){
    for(l=0;l<10;l++){
      y=520;
      s=100;
      for(i=0;i<10;i++){
         y_draw(x,y,c,s,100);
         y-=30;
         s-=10;
      }
    x+=20;
    c+=36;
    }
  }
  swich=0;
}
  
  void y_draw(int x,int y,int h,int s,int b){
    noStroke();
    smooth();
    fill(h,s,b);
    rect(x,y-30,6,15);
    triangle(x-5,y-30,x+11,y-30,x+3,y-44);
}

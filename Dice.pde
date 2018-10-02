
void setup()
{
  noLoop();
  size(630,680);
}

int sum;

void draw()
{
  
    //My code here
    background(200,40,100);
    
    sum=0;
    
    for(int y=0;y<=600;y+=70){
      for(int x=0;x<=600;x+=70){
        Die scooby=new Die(x,y);
        scooby.show();
        scooby.roll();
        
        sum+=scooby.num;
      } 
    }
    
    textSize(30);
    text("Sum of dice: "+sum,195,665);
    
}

void mousePressed()
{
  
  redraw();
  
}

class Die //models one single dice cube
{
  
  //variable declarations here
  int myX;
  int myY;
  int num;
  
  Die(int x, int y)
  {
    
    //variable initializations here
    myX=x;
    myY=y;
    num=(int)(Math.random()*6)+1;

  }
  
  
  void roll()
  {
    
    fill(0,0,0);
    
    if(num==1){
      
      //When you roll a one
      ellipse(myX+35,myY+35,10,10);
      
    }else if(num==2){
      
      //When you roll a two
      ellipse(myX+20,myY+20,10,10);
      ellipse(myX+50,myY+50,10,10);
    
    }else if(num==3){
      
      //When you roll a three
      ellipse(myX+20,myY+20,10,10);
      ellipse(myX+50,myY+50,10,10);
      ellipse(myX+35,myY+35,10,10);
      
    }else if(num==4){
      
      //When you roll a four
      ellipse(myX+20,myY+20,10,10);
      ellipse(myX+50,myY+50,10,10);
      ellipse(myX+20,myY+50,10,10);
      ellipse(myX+50,myY+20,10,10);
      
    }else if(num==5){
      
      //When you roll a five
      ellipse(myX+20,myY+20,10,10);
      ellipse(myX+50,myY+50,10,10);
      ellipse(myX+20,myY+50,10,10);
      ellipse(myX+50,myY+20,10,10);
      ellipse(myX+35,myY+35,10,10);
      
    }else{
      
      //When you roll a six
      ellipse(myX+20,myY+20,10,10);
      ellipse(myX+50,myY+50,10,10);
      ellipse(myX+20,myY+50,10,10);
      ellipse(myX+50,myY+20,10,10);
      ellipse(myX+20,myY+35,10,10);
      ellipse(myX+50,myY+35,10,10);
      
    }
  }
  void show()
  {
    
    //My code here
    fill((int)(Math.random()*200+55),100,200);
    rect(myX,myY,70,70,10);

  }
}

class Hero extends GameObject {
  
  float speed;
  int roomX , roomY;
  
  
  Hero(){
    super();
    speed = 5;
   roomX= 1;
    roomY= 1;
    lives=10;

    
  }
  
  
  void show(){
    fill(purple);
    stroke(black);
    strokeWeight(2);
     fill(#A600AF);
    stroke(#030203);
    ellipse(loc.x,loc.y,40,40);

  
  }
  
  void act(){
    
    
    super.act();
    if(w) velocity.y = -speed;
    if(a) velocity.x = -speed;
    if(s) velocity.y = speed;
    if(d) velocity.x = speed;
    
    if(velocity.mag() > speed)
    velocity.setMag(speed);
    
    
    if (!w && !s) velocity.y = velocity.y * 0.75;
    if (!a && !d) velocity.x = velocity.x * 0.75;
    
  }
}

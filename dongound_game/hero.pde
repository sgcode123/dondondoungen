class Hero extends GameObject {
  
  float speed;
  int roomX , roomY;
    int shotTimer, threshold;
  
  Hero(){
    super();
    speed = 5;
   roomX= 1;
    roomY= 1;
    lives=10;
    shotTimer =0;
    threshold=60;
    
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
    shotTimer++;
    if(w) velocity.y = -speed;
    if(a) velocity.x = -speed;
    if(s) velocity.y = speed;
    if(d) velocity.x = speed;
    
    if(velocity.mag() > speed)
    velocity.setMag(speed);
    
    
    if (!w && !s) velocity.y = velocity.y * 0.75;
    if (!a && !d) velocity.x = velocity.x * 0.75;
    
    
   // if(northRoom != #FFFFFF && loc.y == height*0.1 && loc.x >= width/2-50 && loc.x<= width/2+50){
   // roomY--;
  //  loc = new PVector(width/2, height*0.9-10);
  //  }
  //     if(eastRoom != #FFFFFF && loc.y == width*0.9 && loc.x >= width/2-50 && loc.x<= width/2+50){
  //  roomY--;
  //  loc = new PVector(width/2, height*0.9-10);
  //  }
      if (spacekey && shotTimer >= threshold) {
      myObject.add(new Bullet());
      shotTimer =0;
    }

}
}

void game(){
  background(0);
  ourGIF.show();
    drawRoom();
     drawGameOdjects();
   
  

 
  
 
  
  
}
void drawRoom(){
  stroke(black);
  strokeWeight(4);
  line(0,0,width,height);
  line(width,0,0,height);
  
  fill(brown);
  rectMode(CENTER);
  rect(width/2,height/2,width*0.8,height*0.8);
}
void drawGameOdjects(){
   int i = 0;
 while (i< myObject.size()) {
    GameObject myObj = myObject.get(i);
    myObj.show();
    myObj.act();

    if (myObj.lives ==0) {
      myObject.remove(i);
    } else {
      i++;
    }

  }
}


void gameClicks() {
  if (mouseX > 10 && mouseX< 60  && mouseY> 10 && mouseY< 50)

    mode = PAUSE;
}

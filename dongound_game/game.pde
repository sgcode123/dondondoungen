void game() {
  background(0);
  ourGIF.show();
  drawRoom();
  drawGameOdjects();
  drawMiniMap();
}
void drawRoom() {
  stroke(black);
  strokeWeight(4);
  line(0, 0, width, height);
  line(width, 0, 0, height);

  fill(brown);
  rectMode(CENTER);
  rect(width/2, height/2, width*0.8, height*0.8);

  //check details in room code make shure to print varibles 

  northRoom = map.get(myHero.roomX, myHero.roomY-1);
  eastRoom = map.get(myHero.roomX +1, myHero.roomY-1);
  southRoom = map.get(myHero.roomX, myHero.roomY-1);
  westRoom = map.get(myHero.roomX-1, myHero.roomY-1);
   noStroke();
   fill(black);
  if(northRoom != #FFFFFF){
     ellipse(width/2,height*0.1,100,100);
  }
   if(eastRoom != #FFFFFF){
   ellipse(width*0.9,height/2,100,100);
  }
  if(southRoom != #FFFFFF){
     ellipse(width/2,height*0.9,100,100);
  }
 if(westRoom != #FFFFFF){
     ellipse(width*0.1,height/2,100,100);
  }
}
void drawGameOdjects() {
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
void drawMiniMap() {
  map.resize(100, 100);
  image(map, 50, 50);
}


void gameClicks() {
  if (mouseX > 10 && mouseX< 60  && mouseY> 10 && mouseY< 50)

    mode = PAUSE;
}

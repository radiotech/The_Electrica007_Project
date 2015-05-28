
boolean listen = false;

String AIUserName = "Andrew";

void setup(){
  //sketchFullScreen();
  size(displayWidth/2, displayHeight/2);
}

void draw(){
  background(0);
  
  fill(255,0,0);
  noStroke();
  
  rect(width/2-100,height/2-100,200,200);
}

void mousePressed(){
  say("Yes "+AIUserName);
  if(listen == true){
    listen = false;
  } else {
    listen = true;
  }
}

void say(String a){
  String[] speaks = {dataPath("")+"/speak.vbs", a };  
  open(speaks);
}

//boolean sketchFullScreen() {
 // return true;
//}

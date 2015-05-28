
float power;

void setup(){
  size(255,255);
  
  
}

void draw(){
  power = float(mouseX)/255+1;
  for(int i = 0; i < 255; i++){
    for(int j = 0; j < 255; j++){
      float sum1 = 1;
      float sum2 = 0;
      for(int k = -40; k < 40; k++){
        if(i+k<128){
          sum1 += 0;
          sum2 += pow(255,power);
        } else {
          sum1 += pow(255,power);
          sum2 += 0;
        }
      }
      stroke(pow(sum1/80,1/power),pow(sum2/80,1/power),0);
        point(i,j);
    }
  }
}

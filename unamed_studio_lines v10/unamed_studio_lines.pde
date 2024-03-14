import queasycam.*;
float sw = 0.7;
float mx = 25;

float wave1 = map(sin(radians(frameCount*5)),-1,1,-200,0);
float inc = 0.0000000000000000000000000000000005658694571;

float t = 0.3; // Time (passed frames actualy)
float speed = 0.0006; // Bobbling speed coefficient
float easing1 = 1.1;
float wave = map(sin(radians(frameCount*easing1)),-1,1,random(0.009,0),0.002);
float bobbleRate = 2.9+mouseX/20;// More rate -> mor sharp, Less rate - more bobble.
float csize = 4;
Line L;
PFont font;
float frequency = 500;
float easing = 2;
QueasyCam cam;
void setup() {
  size(1440, 900);
  background(0);
  frameRate(60);
  noCursor();
   L = new Line();
   
   font = createFont("arialnarrow.ttf",1000);
 
}

void draw() {
  clear();
  background(250, 254, 84);
  translate(width/2+60, height/2);
  
  
  
  
  
  noFill();
  stroke(255);
  perspective(PI/3.0, (float)width/height,1,1000000);
  push();
   translate(-200,0);
  for(int a = 0; a <10; a ++){
    
    if (frameCount % frequency == 0) {
    L.reset();
   
  }
  
  
 
 
  L.ease();
  L.display();
  
  

}
pop();


  push();
  translate(-150,0);
  for(int a = 0; a <10; a ++){
    
    if (frameCount % frequency == 0) {
    L.reset();
   
  }
  
  
 
  rotateY(radians(frameCount));
  L.ease();
  display6();
  
  

}
pop();



 push();
  translate(-100,0);
  for(int a = 0; a <10; a ++){
    
    if (frameCount % frequency == 0) {
    L.reset();
   
  }
  
  
 
  rotateY(radians(frameCount));
  L.ease();
  display6();
  

}
pop();


push();
  translate(-56,0);
  for(int a = 0; a <10; a ++){
    
    if (frameCount % frequency == 0) {
    L.reset();
   
  }
  
  
 
  rotateY(radians(frameCount));
  L.ease();
  display4();
  

}
pop();


push();
  translate(0,0);
  for(int a = 0; a <10; a ++){
    
    if (frameCount % frequency == 0) {
    L.reset();
   
  }
  
  
 
  rotateY(radians(frameCount));
  L.ease();
  display5();
  

}
pop();


push();
  translate(50,0);
  for(int a = 0; a <10; a ++){
    
    if (frameCount % frequency == 0) {
    L.reset();
   
  }
  
  
 
  rotateY(radians(frameCount));
  L.ease();
  display6();
  

}
pop();





push();


  translate(93,0);
  for(int a = 0; a <10; a ++){
    
    if (frameCount % frequency == 0) {
    L.reset();
   
  }
  
  
 
  rotateY(radians(frameCount));
  L.ease();
  display7();
  

}
pop();



if(mouseX <= 15){
  textFont(font);
  textSize(40+mouseX);
  textAlign(CENTER,BOTTOM);
  fill(0);
  text("U",-227,14);
  text("N",-174,14);
  text("N",-125,14);
  text("A",-76,14);
  text("M",-28,14);
  text("E",23,14);
  text("D",72,14);
  
 
  
  }
  
  else{
    
  }
  
//saveFrame("frames3/####.png");
}


void display4() {
    
    rotateX(radians(frameCount));
    
  float phase = t*speed;
  
 
  
   beginShape();
  
  
  for (float i = 0; i <= TWO_PI*2; i += PI/80) {
    float wave = map(sin(radians(frameCount+i*inc)),-1,1,0,mouseX+i*inc);
    // Playing with bobble rate
    float xoff = map(cos(i+wave/20), -1, 5, 0, bobbleRate);
    float yoff = map(sin(i), -1, 1, 0.9, bobbleRate);
    float noise = noise(xoff + phase, yoff + phase);
    
    
    
    
    float r = map(noise, 0, 1, 1, mouseX);
    float x = r  * cos(i+noise); 
    float y = r  * sin(i+noise);
    push();
    pop();
    stroke(0);
    strokeWeight(sw);
    
    if(mouseX >=mx){
      
    vertex(x+wave/10+noise, y+wave/6+noise);
    }
    
    else{
      
    }
    
   
  }
  endShape(CLOSE);
  
  
  
    ///////////////////////////////////////////////
    
   
  beginShape();
  
  
  for (float i = 0; i <= TWO_PI*2; i += PI/3) {
    float wave = map(sin(radians(frameCount+i*inc)),-1,1,0,mouseX+i*inc);
    // Playing with bobble rate
    float xoff = map(cos(i+wave/20), -1, 5, 0, bobbleRate);
    float yoff = map(sin(i), -1, 1, 0.9, bobbleRate);
    float noise = noise(xoff + phase, yoff + phase);
    
    
    
    float r = map(noise, 0, 1, 1, mouseX);
    float x = r  * cos(i+noise); 
    float y = r  * sin(i+noise);
    push();
    pop();
    stroke(0);
    push();
    fill(0);
     rectMode(CENTER);
     if(mouseX >=mx){
    rect(x+wave/10+noise*5, y+wave/6+noise*5,csize,csize);
     }
     
     else{
       rect(x, y,csize,csize);
     }
    pop();
   
  }
  
  
  
   
  
 
  
 
  
  
  
  t += 1;
  }



void display5() {
    
    rotateX(radians(frameCount));
    
  float phase = t*speed;
  
 
  
   beginShape();
  
  
  for (float i = 0; i <= TWO_PI*2; i += PI/80) {
    float wave = map(sin(radians(frameCount+i*inc)),-1,1,0,i*inc);
    // Playing with bobble rate
    float xoff = map(cos(i+wave/20), -1, 5, 0, bobbleRate);
    float yoff = map(sin(i), -1, 1, 0.2, bobbleRate);
    float noise = noise(xoff + phase, yoff + phase);
    
    
    
    
    float r = map(noise, 0, 1, 1, mouseX);
    float x = r  * cos(i+noise); 
    float y = r  * sin(i+noise);
    push();
    pop();
    stroke(0);
    strokeWeight(sw);
    if(mouseX>=mx){
    vertex(x+wave/7, y+wave/15);
    }
    
    else{
      
    }
    
   
  }
  endShape(CLOSE);
  
  
  
    ///////////////////////////////////////////////
    
 
  
  
  
   beginShape();
  
  
  for (float i = 0; i <= TWO_PI*2; i += PI/0.2) {
    float wave = map(sin(radians(frameCount+i*inc)),-1,1,0,i*inc);
    
    // Playing with bobble rate
    float xoff = map(cos(i+wave/20), -1, 5, 0, bobbleRate);
    float yoff = map(sin(i), -1, 1, 0.2, bobbleRate);
    float noise = noise(xoff + phase, yoff + phase);
    
    
    
    
    float r = map(noise, 0, 1, 1, mouseX);
    float wave1 = map(sin(radians(frameCount+i*noise)),-1,1,noise*mouseX/20,noise*mouseX/20);
    float x = r  * cos(i+noise); 
    float y = r  * sin(i+noise);
    push();
    pop();
    stroke(0);
    push();
    fill(0);
     rectMode(CENTER);
     if(mouseX >= mx){
    
    line(x+wave/7, y+wave/15, wave1*5, wave1);
    line(wave1*5, wave1,-wave1*3,wave1*5);
    rect(wave1*5, wave1,csize,csize);
    rect(-wave1*3,wave1*5,csize,csize);
    
    line(wave1*5, wave1,-wave1,wave1-50);
    rect(-wave1,wave1-50,csize,csize);
    
    line(-wave1,wave1-50,wave1*4,wave1*6);
    rect(wave1*4,wave1*6,csize,csize);
    
    line(x+wave/7, y+wave/15, -x+wave/7, -y+wave/15);
    rect(x+wave/7, y+wave/15,csize,csize);
    rect(-x+wave/7, -y+wave/15,csize,csize);
    //rect(y+wave/15, -y+wave/15,csize,csize);
     }
     
     else{
       push();
       fill(0);
       stroke(0);
       rect(0,0,csize,csize);
       pop();
       
     }
   
    pop();
   
  }
  endShape(CLOSE);
  
 
  
 
  
  
  
  t += 1;
  }




void display6() {
    
    rotateX(radians(frameCount));
    
  float phase = t*speed;
  
 
  
   beginShape();
  
  
  for (float i = 0; i <= TWO_PI*2; i += PI/80) {
    float wave = map(sin(radians(frameCount+i*inc)),-1,1,0,i*inc);
    // Playing with bobble rate
    float xoff = map(cos(i+wave/20), -1, 5, 0, bobbleRate);
    float yoff = map(sin(i), -1, 1, 0.9, bobbleRate);
    float noise = noise(xoff + phase, yoff + phase);
    
    
    
    
    float r = map(noise, 0, 1, 1, mouseX);
    float x = r  * cos(i+noise); 
    float y = r  * sin(i+noise*0.6);
    push();
    pop();
    stroke(0);
    //translate(0,-200);
    strokeWeight(sw);
    if(mouseX >= mx){
    vertex(-x+wave/20, -y+wave/20);
    }
    
    else{
      
    }
    
   
  }
  endShape(CLOSE);
  
  
  
    ///////////////////////////////////////////////
    
   
  beginShape();
  
  
  for (float i = 0; i <= TWO_PI*2; i += PI/3) {
    float wave = map(sin(radians(frameCount+i*inc)),-1,1,0,i*inc);
    // Playing with bobble rate
    float xoff = map(cos(i+wave/20), -1, 5, 0, bobbleRate);
    float yoff = map(sin(i), -1, 1, 0.9, bobbleRate);
    float noise = noise(xoff + phase, yoff + phase);
    
    
    
    
    float r = map(noise, 0, 1, 1, mouseX);
    float x = r  * cos(i+noise); 
    float y = r  * sin(i+noise*0.6);
    push();
    pop();
    stroke(0);
    push();
    fill(0);
     rectMode(CENTER);
     if(mouseX >= mx){
    rect(-x+wave/20, -y+wave/20,csize,csize);
     }
     
     else{
       rect(-x, -y,csize,csize);
     }
    pop();
   
  }
  
  beginShape();
  
  
  for (float i = 0; i <= TWO_PI*2; i += PI/0.2) {
    float wave = map(sin(radians(frameCount+i*inc)),-1,1,0,i*inc);
    // Playing with bobble rate
    float xoff = map(cos(i+wave/20), -1, 5, 0, bobbleRate);
    float yoff = map(sin(i), -1, 1, 0.9, bobbleRate);
    float noise = noise(xoff + phase, yoff + phase);
    
    
    
    
    float r = map(noise, 0, 1, 1, mouseX);
    float x = r  * cos(i+noise); 
    float y = r  * sin(i+noise*0.6);
    push();
    pop();
    stroke(0);
    push();
    fill(0);
     rectMode(CENTER);
     if(mouseX >= mx){
    line(-x+wave/20, -y+wave/20,x+wave/20, y+wave/20);
    rect(-x+wave/20, -y+wave/20,csize,csize);
    rect(x+wave/20, y+wave/20,csize,csize);
     }
     
     else{
       
     }
   
    pop();
   
  }
  endShape(CLOSE);
  
   
  
 
  
 
  
  
  
  t += 1;
  }



void display7() {
    
    rotateX(radians(frameCount));
    
  float phase = t*speed;
  
 
  
   beginShape();
  
  
  for (float i = 0; i <= TWO_PI*2; i += PI/80) {
    float wave = map(sin(radians(frameCount+i*inc)),-1,1,0,i*inc);
    // Playing with bobble rate
    float xoff = map(cos(i+wave/20), -1, 5, 0, bobbleRate);
    float yoff = map(sin(i), -1, 1, 0.9, bobbleRate);
    float noise = noise(xoff + phase, yoff + phase);
    
    
    
    
    float r = map(noise, 0, 1, 1, mouseX);
    float x = r  * cos(-i+noise); 
    float y = r  * sin(-i+noise*2);
    push();
    pop();
    stroke(0);
    //translate(0,-200);
    strokeWeight(sw);
    
    if(mouseX >= mx){
    vertex(x+wave/15, y+wave/35);
    }
    
    else{
      
    }
    
   
  }
  endShape(CLOSE);
  
  
  
    ///////////////////////////////////////////////
  
  
  
  
   beginShape();
  
  
  for (float i = 0; i <= TWO_PI*2; i += PI/0.4) {
    float wave = map(sin(radians(frameCount+i*inc)),-1,1,0,i*inc);
    // Playing with bobble rate
    float xoff = map(cos(i+wave/20), -1, 5, 0, bobbleRate);
    float yoff = map(sin(i), -1, 1, 0.9, bobbleRate);
    float noise = noise(xoff + phase, yoff + phase);
    
    
    
    
    float r = map(noise, 0, 1, 1, mouseX);
    float x = r  * cos(-i+noise); 
    float y = r  * sin(-i+noise*2);
    push();
    pop();
    stroke(0);
    push();
    fill(0);
     rectMode(CENTER);
     if(mouseX >= mx){
    line(x+wave/15, y+wave/35,-x+wave/15, -y+wave/35);
    rect(x+wave/15, y+wave/35,csize,csize);
    rect(-x+wave/15, -y+wave/35,csize,csize);
     }
     
     else{
      push();
      fill(0);
      stroke(0);
      rect(0,0,csize,csize);
      pop();
    }
   
    pop();
   
  }
  endShape(CLOSE);
  
   
  
 
  
 
  
  
  
  t += 1;
  }


void display9() {
    
    
  float phase = t*speed;
  
;
  
   beginShape();
  
  
  for (float i = 0; i <= TWO_PI*2; i += PI/1) {
    float wave = map(sin(radians(frameCount+i*inc)),-1,1,-200+i,i*inc);
    // Playing with bobble rate
    float xoff = map(cos(i+wave/20), -1, 5, 0, bobbleRate);
    float yoff = map(sin(i), -1, 1, 0, bobbleRate);
    float noise = noise(xoff + phase, yoff + phase);
    
    
    
    float r = map(noise, 0, 1, 1, mouseX);
    float x = r  * cos(i); 
    float y = r  * sin(i);
    push();
    pop();
    stroke(0);
    if(mouseX>=mx){
    vertex(x+wave/50, y+wave/20);
    }
    
    else{}
    
   
  }
  endShape(CLOSE);
  
  
   
  
  
  for (float i = 0; i <= TWO_PI*2; i += PI/3) {
    float wave = map(sin(radians(frameCount+i*inc)),-1,1,-200+i,i*inc);
    // Playing with bobble rate
    float xoff = map(cos(i+wave/20), -1, 5, 0, bobbleRate);
    float yoff = map(sin(i), -1, 1, 0, bobbleRate);
    float noise = noise(xoff + phase, yoff + phase);
    
    
    
    float r = map(noise, 0, 1, 1, mouseX);
    float x = r  * cos(i-noise); 
    float y = r  * sin(i-noise);
    push();
    pop();
    if(mouseX>=mx){
    push();
    fill(0);
    rect(x+wave/50, y+wave/20,csize,csize);
   pop();
    }
    
    else{
      push();
      fill(0);
      stroke(0);
      rect(0,0,csize,csize);
      pop();
    }
    
    
   
  }
  
  
 
  
  for (float i = 0; i <= TWO_PI*2; i += PI/0.6) {
    float wave = map(sin(radians(frameCount+i*inc)),-1,1,-200+i,i*inc);
    // Playing with bobble rate
    float xoff = map(cos(i+wave/20), -1, 5, 0, bobbleRate);
    float yoff = map(sin(i), -1, 1, 0, bobbleRate);
    float noise = noise(xoff + phase, yoff + phase);
    
    
    
    float r = map(noise, 0, 1, 1, mouseX);
    float x = r  * cos(i-noise); 
    float y = r  * sin(i-noise);
    push();
    pop();
    if(mouseX>=mx){
    push();
    fill(0);
    rect(x+wave/50, y+wave/20,csize,csize);
    rect(-x+wave/50,- y+wave/20,csize,csize);
    line(x+wave/50, y+wave/20,-x+wave/50, -y+wave/20);
   pop();
    }
    
    else{
      push();
      fill(0);
      stroke(0);
      rect(0,0,csize,csize);
      pop();
    }
    
   
  }
  
  
  
  
    
   
  
  
  
   
  
 
  
 
  
  
  
  t += 1;
  }
  
  
  
  void display8() {
    
   
  float phase = t*speed;
  
  
  
   beginShape();
  
  
  for (float i = 0; i <= TWO_PI*2; i += PI/180) {
    float wave = map(sin(radians(frameCount+i*inc)),-1,1,i,i*inc);
    // Playing with bobble rate
    float xoff = map(cos(i+wave/20), -1, 5, 0, bobbleRate);
    float yoff = map(sin(i), -1, 1, 0, bobbleRate);
    float noise = noise(xoff + phase, yoff + phase);
    
    
    
    float r = map(noise, 0, 1, 1, mouseX);
    float x = r  * cos(i); 
    float y = r  * sin(i);
    push();
    pop();
    stroke(0);
    if(mouseX>=mx){
    vertex(x+wave/7, y+wave/18);
    }
    
    else{}
    
   
  }
  endShape(CLOSE);
  
  
   
  
  
  for (float i = 0; i <= TWO_PI*2; i += PI/3) {
    float wave = map(sin(radians(frameCount+i*inc)),-1,1,0,i*inc);
    // Playing with bobble rate
    float xoff = map(cos(i+wave/20), -1, 5, 0, bobbleRate);
    float yoff = map(sin(i), -1, 1, 0, bobbleRate);
    float noise = noise(xoff + phase, yoff + phase);
    
    
    
    float r = map(noise, 0, 1, 1, mouseX);
    float x = r  * cos(i); 
    float y = r  * sin(i);
    push();
    pop();
    if(mouseX>=mx){
    push();
    fill(0);
    rect(x-wave/7, y-wave/18,csize,csize);
   pop();
    }
    
    else{}
    
    
   
  }
  
  
  
   
  
  
  for (float i = 0; i <= TWO_PI*2; i += PI/0.6) {
    float wave = map(sin(radians(frameCount+i*inc)),-1,1,0,i*inc);
    // Playing with bobble rate
    float xoff = map(cos(i+wave/20), -1, 5, 0, bobbleRate);
    float yoff = map(sin(i), -1, 1, 0, bobbleRate);
    float noise = noise(xoff + phase, yoff + phase);
    
    
    
    float r = map(noise, 0, 1, 1, mouseX);
    float x = r  * cos(i); 
    float y = r  * sin(i);
    push();
    pop();
    if(mouseX>=mx){
    push();
    fill(0);
    rect(x-wave/7, y-wave/18,csize,csize);
    rect(-x-wave/7, -y-wave/18,csize,csize);
    line(x-wave/7, y-wave/18,-x-wave/7, -y-wave/18);
   pop();
    }
    
    else{
      push();
      fill(0);
      stroke(0);
      rect(0,0,csize,csize);
      pop();
    }
    
   
  }
  
  
  
  
    
   
  
  
  
   
  
 
  
 
  
  
  
  t += 1;
  }


    
  
  
  

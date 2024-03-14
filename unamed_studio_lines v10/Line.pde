class Line {
  float diameter = 0;
  float x = 0;
  float y = 0;
 
  float diameterTarget = 0;
  float targetX = 0;
  float targetY = 0;

  Line() {
  }

  void reset() {
    targetX = random(-600, 600);
    targetY = random(-700, 700);
    diameterTarget = random(1500);
  }

  void ease() {
    float distX = targetX - x;
    x += distX * easing;
    float distY = targetY - y;
    y += distY * easing;

    float diameterDist = diameterTarget - diameter;
    diameter += diameterDist * easing;
  }

  void display() {
    
    rotateX(radians(frameCount));
    
  float phase = t*speed/2;
  
 
  
   
   beginShape();
  
  
  for (float i = 0; i <= TWO_PI*2; i += PI/80) {
    float wave = map(sin(radians(frameCount*0.5+i*inc)),-1,1,0,500+i*inc);
    // Playing with bobble rate
    float xoff = map(cos(i+wave/20), -1, 5, 0, bobbleRate);
    float yoff = map(sin(i), -1, 1, 0, bobbleRate);
    float noise = noise(xoff + phase, yoff + phase);
    
    
    if(mouseX >= mx){
    float r = map(noise, 0, 1, 1, mouseX);
    float x = r  * cos(i+noise); 
    float y = r  * sin(i+noise);
    push();
    pop();
    stroke(0);
    
    vertex(x+wave/50, y+wave/15);
    
    
    }
    
    else{
      
    }
  }
  endShape();
  
  
  
    ///////////////////////////////////////////////
    
   
  beginShape();
  
  
  for (float i = 0; i <= TWO_PI*2; i += PI/0.6) {
    float wave = map(sin(radians(frameCount*0.5+i*inc)),-1,1,0,500+i*inc);
    // Playing with bobble rate
    float xoff = map(cos(i+wave/20), -1, 5, 0, bobbleRate);
    float yoff = map(sin(i), -1, 1, 0, bobbleRate);
    float noise = noise(xoff + phase, yoff + phase);
    
    
    if(mouseX >= mx){
    float r = map(noise, 0, 1, 1, mouseX);
    float x = r  * cos(i+noise); 
    float y = r  * sin(i+noise);
    push();
    pop();
    stroke(0);
    push();
    fill(0);
    rect(x+wave/50, y+wave/15,csize,csize);
    rect(-x+wave/50, -y+wave/15,csize,csize);
   line(x+wave/50, y+wave/15,-x+wave/50, -y+wave/15);
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





void display1() {
    
    rotateX(radians(frameCount));
    
  float phase = t*speed;
  
 
  
   beginShape();
  
  
  for (float i = 0; i <= TWO_PI*2; i += PI/80) {
    float wave = map(sin(radians(frameCount+i*inc)),-1,1,0,mouseX+i*inc);
    // Playing with bobble rate
    float wave1 = map(sin(radians(frameCount+i*10)),-1,1,10,200);
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
    
    if(mouseX >= mx){
    vertex(x+wave/wave1+noise, y+wave/wave1+noise);
    
    }
    
    else{
      
    }
    
   
  }
  endShape(CLOSE);
  
  
  
    ///////////////////////////////////////////////
    
   
  beginShape();
  
  
  for (float i = 0; i <= TWO_PI*2; i += PI/3) {
    float wave = map(sin(radians(frameCount+i*50)),-1,1,0,mouseX+i*inc);
    // Playing with bobble rate
    float wave1 = map(sin(radians(frameCount+i*inc)),-1,1,10,200);
    float xoff = map(cos(i+wave/20), -1, 5, 0, bobbleRate);
    float yoff = map(sin(i), -1, 1, 0.2, bobbleRate);
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
    
    if(mouseX >= mx){
    rect(x+wave/wave1+noise, y+wave/wave1+noise,csize,csize);
    }
    
    else{
      rectMode(CENTER);
      rect(0, 0,csize,csize);
    }
    pop();
   
  }
  
  
  
   
  endShape(CLOSE);
 
  
  
  beginShape();
  
  
  for (float i = 0; i <= TWO_PI*2; i += PI/0.2) {
    float wave = map(sin(radians(frameCount+i*inc)),-1,1,0,mouseX+i*inc);
    // Playing with bobble rate
    float wave1 = map(sin(radians(frameCount+i*10)),-1,1,10,200);
    float xoff = map(cos(i+wave/20), -1, 5, 0, bobbleRate);
    float yoff = map(sin(i), -1, 1, 0.2, bobbleRate);
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
    
    if(mouseX >= mx){
    line(x+wave/wave1+noise, y+wave/wave1+noise,-x+wave/wave1+noise, -y+wave/wave1+noise);
    }
    
    else{
      rectMode(CENTER);
      rect(x, y,csize,csize);
    }
    pop();
   
  }
  
  
  
   
  endShape(CLOSE);
 
  
  
  
  
  t += 1;
  }
}


void display3() {
    
    rotateX(radians(frameCount));
    
  float phase = t*speed;
  
 
  
   beginShape();
  
  
  for (float i = 0; i <= TWO_PI; i += PI/1) {
    float wave = map(sin(radians(frameCount+i*inc)),-1,1,0,mouseX+i*inc);
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
    if(mouseX >= mx){
    vertex(x+wave/10, y+wave/6);
   
    }
    
    else{
      
    }
    
   
  }
  endShape(CLOSE);
  
  
  
    ///////////////////////////////////////////////
    
   
  beginShape();
  
  
  for (float i = 0; i <= TWO_PI*2; i += PI/3) {
    float wave = map(sin(radians(frameCount+i*inc)),-1,1,0,mouseX+i*inc);
    // Playing with bobble rat
    float xoff = map(cos(i+wave/20), -1, 5, 0, bobbleRate);
    float yoff = map(sin(i), -1, 1, 0.2, bobbleRate);
    float noise = noise(xoff + phase, yoff + phase);
    
    
    
    float r = map(noise, 0, 1, 1, mouseX);
    float x = r  * cos(i+noise*5); 
    float y = r  * sin(i+noise*2);
    push();
    pop();
    stroke(0);
    push();
    fill(0);
    rectMode(CENTER);
    if(mouseX >= mx){
    rect(x+wave/10, y+wave/6,csize,csize);
    //ellipse(x+wave/10, y+wave/6,csize,csize);
    }
    
    else{
      rect(x,y,csize,csize);
      
    }
    
    pop();
   
  }
      t += 1;
      
      
       beginShape();
  
  
  for (float i = 0; i <= TWO_PI*2; i += PI/0.2) {
    float wave = map(sin(radians(frameCount+i*inc)),-1,1,0,mouseX+i*inc);
    // Playing with bobble rate
    float wave1 = map(sin(radians(frameCount+i*10)),-1,1,10,200);
    float xoff = map(cos(i+wave/20), -1, 5, 0, bobbleRate);
    float yoff = map(sin(i), -1, 1, 0, bobbleRate);
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
     if(mouseX >= mx){
    line(x+wave/10, y+wave/6,-x+wave/10, -y+wave/6);
     }
     
     else{
       
     }
   
    pop();
   
  }
  endShape(CLOSE);
  }






  

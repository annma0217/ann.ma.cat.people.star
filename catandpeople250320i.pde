ArrayList<Star> stars = new ArrayList<Star>();
int starDuration = 1000;//starㄔㄨㄒㄧㄢˋtime

void setup(){
  size(750, 750);
  background(100, 129, 160);
}

void draw(){
  background(100, 129, 160);
  drawCatAndPeople();
  updateStar();
}

void mousePressed() {
  stars.add(new Star(mouseX, mouseY, millis()));
}

void updateStar(){
  for (int i = stars.size() -1; i >= 0; i--) {
    Star s = stars.get(i);
    if (millis() - s.createTime > starDuration) {
      stars.remove(i);
    } else {
      s.display();
    }
  }
}

class Star {
  float x, y;
  int createTime;
  
  Star(float x, float y, int createTime) {
    this.x = x;
    this.y = y;
    this.createTime = createTime;
  }
  
  void display() {
    fill(255, 223, 0); // 
    stroke(235, 196, 0);
    strokeWeight(2);
    beginShape();
    vertex(x, y - 10);
    vertex(x - 10, y + 5);
    vertex(x - 20, y + 10);
    vertex(x - 10, y + 15);
    vertex(x, y + 30);
    vertex(x + 10, y + 15);
    vertex(x + 20, y + 10);
    vertex(x + 10, y + 5);
    vertex(x, y - 10);
    endShape(CLOSE);
  }
}

void drawCatAndPeople() {
  stroke(0);
  strokeWeight(3);//cat'leftㄏㄨˊㄒㄩ 
  line(400, 260, 370, 260);
  line(435, 270, 376, 273);
  line(442, 280, 373, 285);
  
  
  noStroke(); //cat'ㄨㄟˇㄅㄚ
  fill(140, 140, 140);
  ellipse(690, 220, 30, 150);
  
  noStroke();//cat'body
  fill(140, 140, 140);
  ellipse(600, 300, 190, 160);
  
  
  noStroke();//ㄅㄛˊㄗ˙
  fill(239, 220, 215);
  rect(480, 500, 90, 110);
  
  noStroke();//ㄌㄧㄡˊㄏㄞˇ
  fill(61, 61, 61);
  rect(570, 480, 100, 100);
  
  noStroke();//face
  fill(255, 235, 235);
  circle(500, 450, 300);

  noStroke();//left'eye
  fill(255);
  ellipse(420, 450, 70, 70);
  float leftEyeX = constrain(mouseX, 420 - 10, 420 + 10);
  float leftEyeY = constrain(mouseY, 450 - 10, 450 + 10);
  fill(0);
  ellipse(leftEyeX, leftEyeY, 50, 50); 
  
  noStroke();//right'eye
  fill(255);
  ellipse(550, 450, 70, 70);
  float rightEyeX = constrain(mouseX, 550 - 10, 550 + 10);
  float rightEyeY = constrain(mouseY, 450 - 10, 450 + 10);
  fill(0);
  ellipse(rightEyeX, rightEyeY, 50, 50); 
  
  stroke(0);   //ㄘㄨㄟˋ
  strokeWeight(4.5);
  line(480, 500, 440, 500); 
  
  noStroke(); //nose
  fill(255, 210, 210);
  ellipse(455, 479, 20, 20); 
  
  noStroke();//ㄊㄠˊㄇㄛ˙
  fill(61, 61, 61);
  arc(507, 420, 330, 334, PI, TWO_PI); 
    noStroke();//3
  fill(255, 235, 235);
  circle(650, 450, 100);

  stroke(0);        //3
  strokeWeight(3);  
  line(637, 475, 660, 425); 
  
   strokeWeight(3);//cat'rightㄏㄨˊㄒㄩ 
  line(620, 260, 460, 255);
  line(625, 270, 466, 256);
  line(622, 280, 473, 265);
  
  stroke(0);    //3    
  strokeWeight(3);  
  line(647, 460, 670, 450);
  
  noStroke();//people'clothing
  fill(249, 249, 235);
  rect(405, 605, 250, 160);
  
  noStroke();
  fill(163, 163, 163);
  ellipse(495, 270, 190, 160);
 
  
   noStroke();//cat'3
  fill(163, 163, 163);
  triangle(420, 180, 404, 250, 530, 260);
  
  noStroke();//cat'3
  fill(163, 163, 163);
  triangle(580, 180, 480, 250, 590, 260);
  
  noStroke();//cat left eye
  fill(255);
  ellipse(450, 255, 60, 60);
  float catLeftEyeX = constrain(mouseX, 450 - 5, 450 + 5); 
  float catLeftEyeY = constrain(mouseY, 255 - 5, 255 + 5);
  fill(0);
  ellipse(catLeftEyeX, catLeftEyeY, 50, 50);
  
  noStroke();//cat right eye
  fill(255);
  ellipse(540, 255, 60, 60);
  float catRightEyeX = constrain(mouseX, 540 - 5, 540 + 5); 
  float catRightEyeY = constrain(mouseY, 255 - 5, 255 + 5);
  fill(0);
  ellipse(catRightEyeX, catRightEyeY, 50, 50);
  
}

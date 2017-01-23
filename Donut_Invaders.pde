int bx = mouseX;
int by = mouseY;
float by1 = 200;
float bx1 = 450;
float bx2 = 450;
float by2 = 200;
float bx3 = 450;
float by3 = 300;
float bx4 = 450;
float by4 = 100;
float bx5 = 450;
float by5 = 100;
float bx6 = 450;
float by6 = 100;
float bx7 = 500;
float by7 = 100;
float bx8 = 450;
float by8 = 100;
float bx9 = 450;
float by9 = 100;
float bx10 = 450;
float by10 = 100;
float bx11 = 500;
float by11 = 100;
float bx12 = 500;
float by12 = 100;
float bx13 = 500;
float by13 = 100;
float pux = 5000;
float puy = 200;
float pux2 = 2500;
float puy2 = 350;
float speedX1 = -random(3, 5);
float speedY1 = 0;
float speedX2 = -random(3, 5);
float speedY2 = 0;
float speedX3 = -random(3, 5);
float speedY3 = 0;
float speedX4 = -random(3, 5);
float speedY4 = 0;
float speedX5 = -random(3, 5);
float speedY5 = 0;
float speedX6 = -random(5, 8.5);
float speedY6 = 0;
float speedX7 = -random(.5, 2);
float speedY7 = 0;
float speedX8 = -random(5, 8.5);
float speedY8 = 0;
float speedX9 = -random(3, 5);
float speedY9 = 0;
float speedX10 = -random(1, 5);
float speedY10 = 0;
float speedX11 = -random(.5, 2);
float speedY11 = 0;
float speedX12 = -random(2, 4);
float speedY12 = 0;
float speedX13 = -random(3, 5);
float speedY13 = 0;
float puxs = -3;
float puys = 0;
float puxs2 = -3;
float puys2 = 0;
  
float menuBx1 = 265;
float menuBy1 = 150;
float menuBx2 = 200;
float menuBy2 = 115;
float menuBx3 = 345;
float menuBy3 = 100;
float menuBx4 = 30;
float menuBy4 = 270;

  
float menuSx1 = 2;
float menuSy1 = 2;
float menuSx2 = -1;
float menuSy2 = -1;
float menuSx3 = 2;
float menuSy3 = -1;
float menuSx4 = -1;
float menuSy4 = 2;
  
int lsr = 0;
int lsr2 = 0;
int ballc = 255;
int inviS = 0;

  
float s = 0;
int scene = 1;
boolean pause = false;
boolean secretMenu = false;
boolean secretB = false;
boolean secretI = false;
boolean secretX = false;
boolean secretL = false;


int highscore = 0;
int level = 1;
int br = 0;
int bg = 0;
int bb = 0;


 void keyPressed() {
if(key == 'p' && scene == 2) {
  noLoop();
  pause = true;
  
  textSize(50);
  fill(0, 255, 0);
  text("PAUSED", 250, 250);
  textSize(15);
  text("Press anywhere to unpause...", 245, 450);
}
if(key == '7' && scene == 1) {
secretMenu = true;  
}

if(key == 'b' && secretMenu == true) {
secretB = true;
  
}

if(key == 'i' && secretMenu == true) {
secretI = true;
  
}

if(key == 'x' && secretMenu == true) {
secretX = true;
  
}

if(key == 'l' && secretMenu == true) {
secretL = true;
  
}


}

  void mousePressed() {
   if(mousePressed == true && scene == 2 && pause == true) {
  loop();
  pause = false;
} 
  }








void restart() {
 by1 = 200;
 bx1 = 800;
 bx2 = 800;
 by2 = 200;
 bx3 = 800;
 by3 = 300;
 bx4 = 800;
 by4 = 100;
 bx5 = 800;
 by5 = 100;
 bx6 = 800;
 by6 = 100;
 bx7 = 800;
 by7 = 100;
 bx8 = 800;
 by8 = 100;
 bx9 = 800;
 by9 = 100;
 bx10 = 800;
 by10 = 100;
 bx11 = 800;
 by11 = 100;
 bx12 = 900;
 by12 = 100;
 bx13 = 900;
 by13 = 400;
pux = random(7500, 10000);
puy = 200;
pux2 = random(5000, 7500);;
puy2 = 350;
 lsr = 0;
 lsr2 = 0;
 s = 0;
 level = 1;
scene = 2;
 br = 0;
 bg = 0;
 bb = 0;
 
}

PShape donut;
  
void setup() {
  
  size(700, 500);
  background(0, 0, 0);
  
  donut = loadShape ("Donut.svg");
}
  
  
void draw() {
  
    
  fill(0, 255, 0);
  noStroke();
    float touch = red(get(bx,by));
    float touch2 = green(get(bx,by));
    float touch3 = blue(get(bx,by));

    if(secretB == false) {
  background(0, 0, 0);
    } else {
  background(0, mouseX/2, mouseY/2);
    }
    
    
  fill(br, bg, bb);
  rect(0, 0, 700, 25);
  
  fill(0, 255, 0);
  
  noStroke();
  //player
  ellipse(bx, by, 10, 10);
  
  
  if (secretI == false) {
  fill(ballc, 255, 255);
  } else {
  fill(0, 255, 255);
  }
  
  
  
  shape(donut, bx1, by1, 60, 60);
    
  
  shape(donut, bx2, by2, 60, 60);
    
  
  shape(donut, bx3, by3, 60, 60);
  
    
  shape(donut, bx4, by4, 60, 60);
    
    
  shape(donut, bx5, by5, 60, 60);
    
    
  shape(donut, bx6, by6, 40, 40);
    
    
  shape(donut, bx7, by7, 125, 125);
    
    
  shape(donut, bx8, by8, 40, 40);
    
    
  shape(donut, bx8, by8, 40, 40);
    
    
  shape(donut, bx9, by9, 40, 40);
    
    
  shape(donut, bx10, by10, 40, 40);
    
    
  shape(donut, bx11, by11, 125, 125);
    
    
  shape(donut, bx11, by11, 125, 125);
    
    
  shape(donut, bx12, by12, 40, 20);
    
    
  shape(donut, bx13, by13, 40, 20);
  
  fill(0, 242.5, 0);
  ellipse(pux, puy, 15, 15);
  
  fill(0, 0, 242.5);
  ellipse(pux2, puy2, 15, 15);
    

    
    
    
  
if (scene == 1) {
  background(0, 0, 0);
    
  
    
     
     
    
    
  textSize(15);
    
  fill(255, 255, 255);
  ellipse(menuBx1, menuBy1, 125, 125);
  fill(0, 255, 0);
  text("Click Anywhere", menuBx1 - 52, menuBy1);
  text("to Play", menuBx1 - 25, menuBy1 + 20);
    
    
  fill(255, 255, 255);
  ellipse(menuBx2, menuBy2, 125, 125);
  fill(0, 255, 0);
  text("Don't Touch", menuBx2 - 50, menuBy2);
  text("the Donuts!", menuBx2 - 45, menuBy2 + 20);
    
    
  fill(255, 255, 255);
  ellipse(menuBx3, menuBy3, 125, 125);
  fill(0, 255, 0);
  text("Move with the", menuBx3 - 47, menuBy3);
  text("Mouse", menuBx3 - 25, menuBy3 + 20);
    
    
  fill(255, 255, 255);
  ellipse(menuBx4, menuBy4, 125, 125);
  fill(0, 255, 0);
  text("Press P to", menuBx4 - 37.5, menuBy4);
  text("Pause", menuBx4 - 25, menuBy4 + 20);
  
       fill(0, 255, 0);
  textSize(50);
  text("Donut Invaders", 190, 50);
  textSize(15);
    
  if (menuBx1 <= 62.5) {
  menuSx1 = 1;}
    
  if (menuBx1 >= 637.5) {
  menuSx1 = -1;}
    
  if (menuBy1 <= 62.5) {
  menuSy1 = 1;}
    
  if (menuBy1 >= 437.5) {
  menuSy1 = -1;}
    
    
    
    if (menuBx2 <= 62.5) {
  menuSx2 = 1;}
    
  if (menuBx2 >= 637.5) {
  menuSx2 = -1;}
    
  if (menuBy2 <= 62.5) {
  menuSy2 = 1;}
    
  if (menuBy2 >= 437.5) {
  menuSy2 = -1;}
    
    
    
    if (menuBx3 <= 62.5) {
  menuSx3 = 1;}
    
  if (menuBx3 >= 637.5) {
  menuSx3 = -1;}
    
  if (menuBy3 <= 62.5) {
  menuSy3 = 1;}
    
  if (menuBy3 >= 437.5) {
  menuSy3 = -1;}
    
    
    
    if (menuBx4 <= 62.5) {
  menuSx4 = 1;}
    
  if (menuBx4 >= 637.5) {
  menuSx4 = -1;}
    
  if (menuBy4 <= 62.5) {
  menuSy4 = 1;}
    
  if (menuBy4 >= 437.5) {
  menuSy4 = -1;}
      
      
  menuBx1 =  menuBx1 + menuSx1;
  menuBy1 =  menuBy1 + menuSy1;
    
  menuBx2 =  menuBx2 + menuSx2;
  menuBy2 =  menuBy2 + menuSy2;
    
  menuBx3 =  menuBx3 + menuSx3;
  menuBy3 =  menuBy3 + menuSy3;
    
  menuBx4 =  menuBx4 + menuSx4;
  menuBy4 =  menuBy4 + menuSy4;
      
if (mousePressed == true) {
restart();
}
}


  
   
 if (touch > 100) {
     
   scene = 3;
 }

 if (touch2 < 244 && touch2 > 240) {
  
by1 = 200;
 bx1 = 1800;
 bx2 = 1800;
 by2 = 200;
 bx3 = 1800;
 by3 = 300;
 bx4 = 1800;
 by4 = 100;
 bx5 = 1800;
 by5 = 100;
 bx6 = 1800;
 by6 = 100;
 bx7 = 1800;
 by7 = 100;
 bx8 = 1800;
 by8 = 100;
 bx9 = 1800;
 by9 = 100;
 bx10 = 1800;
 by10 = 100;
 bx11 = 1800;
 by11 = 100;
 bx12 = 1900;
 by12 = 100;
 bx13 = 1900;
 by13 = 400;
 lsr = 0;
 lsr2 = 0;
pux = random(7500, 10000);

 }
 

     if (touch3 < 244 && touch3 > 240 && inviS < 360) {
  ballc = 0;
  pux2 = random(3000, 7500);
  }
  
  if (inviS > 361) {
   inviS = 0;
   ballc = 255;
  }
  
  if (ballc == 0) {
   inviS+= 1; 
  }

 int score = round(s) * 100;

 if (scene == 3) {
   fill(0, 255, 0);
 textSize(50);
text("Game Over", 230, 50);
textSize(25);
text("Score = " + score, 270, 100);
text("Highscore = " + highscore, 250, 125);
textSize(15);
text("Press anywhere to restart...", 270, 450);
  

  
textSize(25);
text("Level", 326.5, 222.5);
fill(br, bg, bb);
rect(332.5, 225, 50, 50);
fill(0, 255, 0);
text("" + level, 350, 260);
  
 if(mousePressed == true) {
restart();
 }
 
} else {
if (scene == 2) {
  
  

  

    
  

    
if (bx1 < 0) {
  bx1 = 725;
  by1 = random(25, 475);
}
if (bx2 < 0) {
  bx2 = 725;
  by2 = random(25, 475);
  
}
  if (bx3 < 0) {
  bx3 = 725;
  by3 = random(25, 475);
    
}
  
  if (bx4 < 0) {
  bx4 = 725;
  by4 = random(25, 475);
    
}
  
  if (bx5 < 0) {
  bx5 = 725;
  by5 = random(25, 475);
    
}
  
  if (bx6 < 0) {
  bx6 = 725;
  by6 = random(25, 475);
    
}
  
  
  if (bx7 < 0) {
  bx7 = 800;
  by7 = random(25, 475);
    
}
  
  if (bx8 < 0) {
  bx8 = 725;
  by8 = random(25, 475);
    
}
  
  
  if (bx9 < 0) {
  bx9 = 725;
  by9 = random(25, 475);
    
}
  
  
  if (bx10 < 0) {
  bx10 =725;
  by10 = random(25, 475);
    
}
  
  
  if (bx12 < 0) {
  bx12 =725;
  by12 = random(25, 475);
    
}
  
  
  if (bx13 < 0) {
  bx13 =725;
  by13 = random(25, 475);
    
}


  if (pux < 0) {
  pux = 7500;
  puy = random(25, 475);
    
}


  if (pux2 < 0) {
  pux2 = 2500;
  puy2 = random(25, 475);
    
}
  
  
  if (by9 > by) {
  by9 = by9 - .75;
    
}
  
  if (by9 < by) {
  by9 = by9 + .75;
    
}
  
  if (by10 > by) {
  by10 = by10 - .75;
    
}
  
  if (by10 < by) {
  by10 = by10 + .75;
    
}
  
bx = mouseX;
by = mouseY;
  
  
  
  if (bx12 < bx + 150 && bx12 > bx - 150 && by12 < by + 150 && by12 > by - 150) {
stroke(lsr, 255, 0);
strokeWeight(3);
    fill(0, 255, 0);
line(bx12, by12, bx, by);
lsr += 2;
  
} else {
  lsr = 0;
}
 
 
  if (bx13 < bx + 150 && bx13 > bx - 150 && by13 < by + 150 && by13 > by - 150) {
stroke(lsr2, 255, 0);
strokeWeight(3);
    fill(0, 255, 0);
line(bx13, by13, bx, by);
lsr2 += 2;
  
} else {
  lsr2 = 0;
}
  
  
  
  
  
   
  
s = s + .1;
  
  
  

textSize(10);
fill(0, 255, 0);
if (secretX == false) {
text("Score = " + score, 625, 15);
text("Highscore = " + highscore, 15, 15);
} else {
text("Score = " + score * 5, 625, 15);
text("Highscore = " + highscore * 5, 15, 15);
}

text("Level = " + level, 330, 15);
  
  
  if (secretL == false) {
if (s >= 100) {
 level = 2;
 bg = 99;
 br = 0;
 bb = 0;
}
  
if (s >= 200) {
 level = 3;
 bg = 0;
 bb = 99;
 br = 0;
}
  
if (s >= 300) {
 level = 4;
 br = 99;
 bb = 99;
 bg = 0;
}
  
if (s >= 400) {
 level = 5;
 bg = 0;
 br = 99;
 bb = 0;
}
  
if (s >= 500) {
 level = 6;
 bg = 99;
 br = 99;
 bb = 0;
}
  
if (s >= 600) {
 level = 7;
 bg = 25;
 br = 99;
 bb = 25;
}
} else {  
 level = 7;
 s = 360;
  bg = 25;
 br = 99;
 bb = 25;
}
  
if (score > highscore) {
 highscore = score;
    
}
  
  
  if (s > 15) {
bx1 = bx1 + speedX1;
by1 = by1 + speedY1;
  
  }
  
  if (s > 60) {
bx2 = bx2 + speedX2;
by2 = by2 + speedY2;
  }
    
  if ( s > 90) {
bx3 = bx3 + speedX3;
by3 = by3 + speedY3;
  }
    
    if (s > 120) {
bx4 = bx4 + speedX4;
by4 = by4 + speedY4;
  }
    
    if (s > 150) {
bx5 = bx5 + speedX5;
by5 = by5 + speedY5;
  }
    
    if (s > 180) {
bx6 = bx6 + speedX6;
by6 = by6 + speedY6;
  }
    
    if (s > 210) {
bx7 = bx7 + speedX7;
by7 = by7 + speedY7;
  }
    
      if (s > 240) {
bx8 = bx8 + speedX8;
by8 = by8 + speedY8;
  }
    
       if (s > 270) {
bx13 = bx13 + speedX13;
by13 = by13 + speedY13;
  }
    
     if (s > 300) {
bx10 = bx10 + speedX10;
by10 = by10 + speedY10;
  }
    
     if (s > 330) {
bx11 = bx11 + speedX11;
by11 = by11 + speedY11;
  }
    
    
     if(s > 360) {
bx12 = bx12 + speedX12;
by12 = by12 + speedY12;
     }
       
     if (s > 360) {
bx9 = bx9 + speedX9;
by9 = by9 + speedY9;
  }
  
pux += puxs;
puy += puys;

pux2 += puxs2;
puy2 += puys2;
  
} 
  
}
}
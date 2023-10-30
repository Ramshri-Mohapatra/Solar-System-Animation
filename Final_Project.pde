import processing.sound.*;
SoundFile space;
SoundFile music;
SoundFile Mercuryaudio;
SoundFile Venusaudio;
SoundFile Earthaudio;
SoundFile Marsaudio;
SoundFile Jupiteraudio;
SoundFile Saturnaudio;
SoundFile Uranusaudio;
SoundFile Neptuneaudio;
SoundFile Bootcamp;


float i;
float j;
float x;
float angle;
PShape globe0;
PShape globe1;
PShape globe2;
PShape globe3;
PShape globe4;
PShape globe5;
PShape globe6;
PShape globe7;
PShape globe8;
PShape moon;
PShape Asteroid1;
PShape Asteroid2;
PShape ring;
PImage background;
PImage earth;
PImage mars;
PImage sun;
PImage mercury;
PImage venus;
PImage jupiter;
PImage saturn;
PImage Ring;
PImage uranus;
PImage neptune;
PImage asteroid1;
PImage asteroid2;
PImage Moon;


void setup() {
  size(1920, 1050, P3D);
  camera(-800, -100, 0, 960, 540, 0.0,
    + 0.0, 1.0, 0.0);
    
  background=loadImage("background1.jpg");
  mars = loadImage("mars.jpg");
  earth= loadImage("earth.jpg");
  sun= loadImage("sun.jpg");
  mercury= loadImage("mercury.jpg");
  venus=loadImage("venusmap.jpg");
  asteroid1 = loadImage("asteroids.jpg");
  asteroid2 = loadImage("Asteroids2.jpg");
  jupiter= loadImage("jupitermap.jpg");
  saturn= loadImage("saturnmap.jpg");
  Ring = loadImage("saturnringcolor.jpg");
  uranus=loadImage("uranusmap.jpg");
  neptune=loadImage("neptunemap.jpg");
  Moon= loadImage("moon.jpg");
 
  noStroke();
  noFill();
  globe0=createShape(SPHERE, 200);
  globe1=createShape(SPHERE, 10);
  globe2=createShape(SPHERE, 15);
  globe3=createShape(SPHERE, 30);
  globe4=createShape(SPHERE, 25);
  globe5=createShape(SPHERE, 90);
  globe6=createShape(SPHERE,80); 
  globe7=createShape(SPHERE,60);
  globe8=createShape(SPHERE,60);
  moon= createShape(SPHERE,5);
  ring = createShape(ELLIPSE,0,0,180,250);
  Asteroid1=createShape(SPHERE, 2);
  Asteroid2=createShape(SPHERE, 2);
  globe0.setTexture(sun);
  globe1.setTexture(mercury);
  globe2.setTexture(venus);
  globe3.setTexture(earth);
  globe4.setTexture(mars);
  globe5.setTexture(jupiter);
  globe6.setTexture(saturn); 
  ring.setTexture(Ring);
  globe7.setTexture(uranus);
  globe8.setTexture(neptune);
  moon.setTexture(Moon);
  Asteroid1.setTexture(asteroid1);
  Asteroid2.setTexture(asteroid2);
  x=x+1;
  
  space= new SoundFile(this, "soundspace.wav");
  music=new SoundFile(this, "interstellar.wav");
  space.play();
  music.play();
  Bootcamp= new SoundFile(this, "bootcamp.wav");
     Bootcamp.play();
}

void draw() {



  background(background);

  angle=angle+1;

singlePlanet();




  translate(width/2, height/2, 0);
  lights();

  colorMode(HSB);

  pointLight(128, 128, 138, 0, 0, 0);
  pointLight(128, 128, 138, 0, 0, 0);
  pointLight(128, 128, 138, 0, 0, 0);
  pointLight(128, 128, 138, 0, 0, 0);
  pointLight(128, 128, 138, 0, 0, 0);



keyPressed();
  

  Planets();
  Asteroids();
  Asteroids2();
  Asteroids3();
  Asteroids4(0.5);
}

void Planets() {


  pushMatrix();
  //lights();
  rotateY(radians(angle/5));
  shape(globe0);
  popMatrix();

  pushMatrix();
  //lights();
  rotateY(radians(angle*2)); //revoluton of mercury
  translate(240, 0, 0);
  pushMatrix();
  rotateY(radians(angle+PI/3)); //rotation of mercury
  shape(globe1);
  popMatrix();
  popMatrix();

  pushMatrix();
  rotateY(PI/2);
  rotateY(radians(angle*7/5));  //revolution of venus
  translate(300, 0, 0);
  pushMatrix();
  rotateY(radians(angle/3));  //rotation of venus
  shape(globe2);
  popMatrix();
  popMatrix();

  pushMatrix();
  rotateY(-PI/6);
  rotateY(radians(angle*6/5));  //revolution of earth
  translate(380, 0, 0);
  pushMatrix();
  rotateY(radians(angle/3));  //rotation of earth
  shape(globe3);
  popMatrix();
  popMatrix();

  pushMatrix();
  rotateY(-PI/4);
  rotateY(radians(angle)); // revolution of mars
  translate(460, 0, 0);
  pushMatrix();
  rotateY(radians(angle/3)); // rotation of mars
  shape(globe4);
  popMatrix();
  popMatrix();

  pushMatrix();
  rotateY(PI/4);
  rotateY(radians(angle*3/5)); // revolution of jupiter

  translate(680, 0, 0);
  pushMatrix();
  rotateY(radians(angle/3)); // rotation of jupiter


  shape(globe5);
  popMatrix();
  popMatrix();
  
   pushMatrix();
   rotateY(-PI/3);
  rotateY(radians(angle*2/5)); // revolution of saturn

  translate(930, 0, 0);
  stroke(255);
  strokeWeight(15);
  pushMatrix();
  rotateX(PI/4);
  shape(ring);
  popMatrix();
  
  pushMatrix();
  rotateY(radians(angle/3)); // rotation of saturn


  shape(globe6);
  popMatrix();
  popMatrix();
  
   pushMatrix();
   rotateY(PI/3);
  rotateY(radians(angle/5)); // revolution of Uranus

  translate(1140, 0, 100);
  pushMatrix();
  rotateY(radians(angle/3)); // rotation of uranus


  shape(globe7);
  popMatrix();
  popMatrix();
  
   pushMatrix();
   rotateY(PI/6);
  rotateY(radians(angle/5+5)); // revolution of neptune

  translate(1280, 0, 0);
  pushMatrix();
  rotateY(radians(angle/3)); // rotation of neptune


  shape(globe8);
  popMatrix();
  popMatrix();
}

void orbits() {
  stroke(255);
  strokeWeight(1);
  pushMatrix();
  rotateX(PI/2);
  circle(0, 0, 480);
  circle(0, 0, 600);
  circle(0, 0, 760);
  circle(0, 0, 920);
  circle(0, 0, 1360);
  circle(0,0,1860 );
  circle(0, 0, 2280);
  circle(0, 0, 2560);
  noFill();
  popMatrix();
}

void Asteroids() {
  for (i=0; i<200; i=i+1) {

    pushMatrix();
    rotateY(radians(angle*i/500));

    translate(550, 0, 0);


    shape(Asteroid1);
    popMatrix();
  }
}
void Asteroids2() {
  for (j=0; j<50; j++) {
    pushMatrix();
    rotateY(radians(angle*j/100));

    translate(560, -5, 10);


    shape(Asteroid1);
    popMatrix();
  }
}
void Asteroids3() {
  for (j=0; j<50; j++) {
    pushMatrix();
    rotateY(radians(angle*j/150));

    translate(570, 10, 10);


    shape(Asteroid2);
    popMatrix();
  }
}
void Asteroids4(float p) {
  for (j=0; j<100; j++) {
    pushMatrix();
    rotateY(radians(angle*j/200));

    translate(570, 5, 20);

    if (random(0, 1)<p) {
      shape(Asteroid2);
    } else {
      shape(Asteroid1);
    }


    popMatrix();
  }
}
void singlePlanet(){
  pushMatrix();
translate(-1500,-1500,-900);
rotateY(angle/200);
shape(globe0);
popMatrix();
  
  
  
pushMatrix();
translate(-1500,-1500,-600);
rotateY(angle/200);
shape(globe1);
popMatrix();



pushMatrix();
translate(-1500,-1500,-300);
rotateY(angle/200);
shape(globe2);
popMatrix();

pushMatrix();
translate(-1500,-1500,0);


pushMatrix();
rotateY(angle/200);

shape(globe3);
translate(70,-10,0);
shape(moon);
popMatrix();
popMatrix();

pushMatrix();
translate(-1500,-1500,300);
rotateY(angle/200);
shape(globe4);
popMatrix();


pushMatrix();
translate(-1500,-1500,600);
rotateY(angle/200);
shape(globe5);
popMatrix();

pushMatrix();
translate(-1500,-1500,1100);
rotateY(angle/200);
shape(globe6);
popMatrix();

pushMatrix();
translate(-1500,-1500,1600);
rotateY(angle/200);
shape(globe7);
popMatrix();

pushMatrix();
translate(-1500,-1500,2100);
rotateY(angle/200);
shape(globe8);
popMatrix();

pushMatrix();
translate(-1500,-1500,1100);
stroke(#F0D198);
 
  rotateX(PI/4);
  rotateZ(PI/6);
 ellipse(0,0,200,240);
   stroke(#F7E4C0);
    strokeWeight(12);
 ellipse(0,0,180,210);
  popMatrix();
  
  pushMatrix();
  translate(-1500,-1500,1600);
  stroke(#838FF5);
 
  rotateY(PI/2);
 ellipse(0,0,200,240);
   stroke(#C0EFF7);
    strokeWeight(12);
 ellipse(0,0,180,210);
 stroke(#C5C9EA);
    strokeWeight(12);
 ellipse(0,0,190,220);
  
  popMatrix();

}


void keyPressed(){
 if(key=='O'){
    
   
 orbits();}
}
  void keyReleased(){
    
    if(key=='e'){
    camera(-1320, -1500, 0, -1500, -1500, 0.0,
    + 0.0, 1.0, 0.0);
     Earthaudio= new SoundFile(this, "earth.wav");
     Earthaudio.play();
    }
    else if(key=='v'){ camera(-1380, -1500, -300, -1500, -1500, -300,
    + 0.0, 1.0, 0.0);
   Venusaudio= new SoundFile(this, "venus.wav");
     Venusaudio.play();
}
    else if(key=='m'){camera(-1380, -1500, -600, -1500, -1500, -600,
    + 0.0, 1.0, 0.0);
     Mercuryaudio= new SoundFile(this, "mercury.wav");
     Mercuryaudio.play();
  }
    else if(key=='M'){camera(-1380, -1500, 300, -1500, -1500, 300,
    + 0.0, 1.0, 0.0);
   Marsaudio= new SoundFile(this, "mars.wav");
     Marsaudio.play();
}
     else if(key=='j'){camera(-1250, -1500, 600, -1500, -1500, 600,
    + 0.0, 1.0, 0.0);
   Jupiteraudio= new SoundFile(this, "jupiter.wav");
     Jupiteraudio.play();
}
     else if(key=='s'){camera(-1250, -1700, 1080, -1500, -1500, 1100,
    + 0.0, 1.0, 0.0);
  
 Saturnaudio= new SoundFile(this, "saturn.wav");
     Saturnaudio.play();
   }
     else if(key=='u'){camera(-1250, -1500, 1600, -1500, -1500, 1600,
    + 0.0, 1.0, 0.0);
   Uranusaudio= new SoundFile(this, "uranus.wav");
     Uranusaudio.play();
}
     else if(key=='n'){camera(-1250, -1500, 2100, -1500, -1500, 2100,
    + 0.0, 1.0, 0.0);
   Neptuneaudio= new SoundFile(this, "neptune.wav");
     Neptuneaudio.play();
;}
     else if(key=='a'){camera(0, -1500, 300, -1500, -1500, 600,
    + 0.0, 1.0, 0.0);}
    else{camera(-800, -100, 0, 960, 540, 0.0,
    + 0.0, 1.0, 0.0);}
    
  }
    
    

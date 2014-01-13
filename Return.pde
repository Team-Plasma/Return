PImage la, sh;
PVector pic, vel;
void setup() {
  size(680, 676);
  colorMode(HSB, 360, 100, 100);
  pic = new PVector(width/2, 500);
  vel = new PVector(5, 5);
  la = loadImage("LynnAllen.jpg");
  sh = loadImage("Shibe.jpg");
  imageMode(CENTER);
  textAlign(CENTER);
}

void draw() {
  background(sh);
  tint(random(255), random(255), random(255),random(200,255));
  image(la, pic.x, pic.y);
  pic.add(vel);
  fill(0);
  textSize(25);
  text("PARTY HARD", 575, 600);
  text("WOW", 50, 300);
  text("so offset", 600, 50);
  text("REALZ FILLET", 100, 600);
  text("le Kipp KA$H", 580, height/2);
  text("much AUTOCAD", 150, 100);
  println(distance(10, 10, 5, 5));
  if (pic.x+150>=width) {
    vel.x*=-1;
  }
  if (pic.x-150<=0) {
    vel.x*=-1;
  }
  if (pic.y+150>=height) {
    vel.y*=-1;
  }
  if (pic.y-150<=0) {
    vel.y*=-1;
  }
}

float inches2CM(float x) {
  float y;
  y=x*2.54;
  return y;
}

float distance(float a, float c, float b, float d) {
  float e;
  //(a,c) and (b,d) for points
  e=sqrt(sq(b-a)+sq(d-c));
  return e;
}


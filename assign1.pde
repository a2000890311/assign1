PImage FT;
PImage EM;
PImage TS;
PImage HP;
PImage bg1;
PImage bg2;
PImage bg3;
int bg1x;


int bg2x;

int bg3x;

int tsx;
int tsy;
int x;
int y;


void setup(){
  size(641,482);
  
  // em 
  EM = loadImage("img/enemy.png");
  x = 30;
  y = floor(random(30,410));
  
  // TS 
  TS = loadImage("img/treasure.png");
  tsx = floor(random(15,340));
  tsy = floor(random(30,440));
  
  // FT
  FT = loadImage("img/fighter.png");
  
  // HP
  HP = loadImage("img/hp.png");
  
  // BG img
  
  bg1x = 0 ;
  
  bg1 = loadImage("img/bg1.png");
  
  bg2 = loadImage("img/bg2.png");
  
  bg3 = loadImage("img/bg1.png");
  
  
}

void draw(){
 
  bg2x = bg1x - 636;
  bg3x = bg2x - 636;
  bg1x = (bg1x += 3) % 1280;
  image(bg1,bg1x,0);
  
  
  image(bg2,bg2x,0);
  
  image(bg1,bg3x,0);
  
  
  
  
  
  rectMode(CENTER);
  fill(255,0,0);
  rect(109,15,195,25);
  
  image(FT,580,150);
  x = (x += 5) % width;
  image(EM,x + 3,y);
  image(TS,tsx,tsy);
  image(HP,3,3);
 
   
}

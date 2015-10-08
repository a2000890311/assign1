
// PImg
PImage FT;
PImage EM;
PImage TS;
PImage HP;
PImage bg1;
PImage bg2;

// int x,y
int bg1x;
int bg2x;


int tsx;
int tsy;
int x;
int y;


void setup(){
  size(640,480);
  
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
  
  
  
  
}

void draw(){


// BG
  image(bg1,bg1x,0);
    bg1x = (bg1x += 3) % 1280;
  
  image(bg2,bg2x,0);
    bg2x = bg1x - 636;
  
  
  
  
  // HP
  rectMode(CENTER);
  fill(255,0,0);
  rect(109,15,195,25);
  image(HP,3,3);
  // FT
  image(FT,580,150);
  x = (x += 5) % width;
  
  // EM
  image(EM,x+3,y);
  
  //TS
  image(TS,tsx,tsy);
  
 
   
}

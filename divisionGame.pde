// Division Practicing Game for Ete
// 5 Dec 2016

PFont gameFont;
int gameStage = 0;  // 0 = splash screen
                    // 1 = level 1
Timer splashColorChangeTimer;  // just a color changing timer          

void setup() {
  size(600,600);
  // create a font for splash screen
  gameFont = createFont("Helvetica",32); // initialize game font
  
  // let's make the delay time to 1s for changing color
  splashColorChangeTimer = new Timer(1000);
  
  // splash screen kicks in
  splashScreen();    
}

void draw() {
  switch(gameStage) {
    case 0:  splashScreen();
             break;
    case 1:  levelOne();
             break;
    default: break;
  }
    
}

void splashScreen() {
  if(splashColorChangeTimer.isFinished()) {
    splashColorChangeTimer.start();
    background(random(100,256),random(100,256),random(100,256));
    textFont(gameFont,32);
    textAlign(CENTER,CENTER);
    text("Division Game\nfor ETE", width/2, height/2);
  }
}

void levelOne() {
  // start level one
}

void keyPressed() {
  gameStage++;
  
}
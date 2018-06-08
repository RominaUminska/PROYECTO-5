import processing.sound.*;

///VARIABLES GLOBALES///
int gameScreen;
PImage bg;
PImage storyscreen;
PImage game;
PImage b_trumpet;
PImage b_sax;
PImage b_triangle;
PImage b_bass;
PImage b_drums;
PImage trumpet;
PImage sax;
PImage triangle;
PImage bass;
PImage drums;
SoundFile file;
int pause;
int size;
PFont myFont;



void setup() {
  size(800, 600);
  bg = loadImage ("INICIO.jpg");
  storyscreen = loadImage("HISTORIA.jpg");
  game = loadImage ("ESCENARIO.jpg");
  b_trumpet=loadImage("BTRUMPET.png");
  b_sax=loadImage("BSAX.png");
  b_triangle=loadImage("BTRIANGLE.png");
  b_bass=loadImage("BBASS.png");
  b_drums=loadImage("BDRUMS.png");
  trumpet=loadImage("TRUMPET.png");
  sax=loadImage("SAX.png");
  triangle=loadImage("TRIANGLE.png");
  bass=loadImage("BASS.png");
  drums=loadImage("DRUMS.png");
  file = new SoundFile(this, "UnsquareDance.mp3");
  file.play();
  uno = new BotonInstrumento(120, 530, 100, 0);
  dos = new BotonInstrumento(260, 530, 100, color(255, 0, 0));
  tres = new BotonInstrumento(400, 530, 100, color(255, 0, 0));
  cuatro = new BotonInstrumento(540, 530, 100, color(255, 0, 0));
  cinco = new BotonInstrumento(680, 530, 100, color(255, 0, 0));
}

void draw() {
  // Display the contents of the current screen.
  switch (gameScreen) {
  case 0:
    iniScreen();
    break;
  case 1:
    stScreen();
    break;
  case 2:
    game();
    break;
  }
}

/********* PANTALLAS *********/

// 0: Initial Screen                  (iniScreen)
// 1: Story Screen                    (stScreen)
// 2: Character Selection Screen      (charScreen)                     
// 3: Fighting Screen                 (FigScreen)
// 4: Victory Screen                  (VicScreen) 

void iniScreen() {
  // Código de pantalla de inicio.
  image (bg, 0, 0);  
  if (mousePressed) {
    gameScreen = 1;
  }
}
void stScreen() {
  // Código de pantalla de historia.
  image(storyscreen, 0, 0);
  if (keyPressed) {
    gameScreen = 2;
  }
}
void game() {
  image (game, 0, 0);
  file.stop();


  // BOTONES
  pushMatrix();
  translate(40, 450);
  scale(0.8);
  image(b_trumpet, 0, 0);
  popMatrix();
  pushMatrix();
  translate(180, 450);
  scale(0.8);
  image(b_sax, 0, 0);
  popMatrix();
  pushMatrix();
  translate(320, 450);
  scale(0.8);
  image(b_triangle, 0, 0);
  popMatrix();
  pushMatrix();
  translate(460, 450);
  scale(0.8);
  image(b_bass, 0, 0);
  popMatrix();
  pushMatrix();
  translate(600, 450);
  scale(0.8);
  image(b_drums, 0, 0);
  popMatrix();

  //GATOS
  pushMatrix();
  translate(40, 280);
  scale(0.9);
  image(trumpet, 0, 0);
  popMatrix();
  pushMatrix();
  translate(140, 260);
  scale(1.2);
  image(sax, 0, 0);
  popMatrix();
  pushMatrix();
  translate(320, 300);
  scale(0.8);
  image(triangle, 0, 0);
  popMatrix();
  pushMatrix();
  scale(1.3);
  translate(300, 180);
  image(bass, 0, 0);
  popMatrix();
  pushMatrix();
  translate(560, 240);
  scale(1.2);
  image(drums, 0, 0);
  popMatrix();

  uno.display();
  uno.comportamiento();
  dos.display();
  dos.comportamiento();
  tres.display();
  tres.comportamiento();
  cuatro.display();
  cuatro.comportamiento();
  cinco.display();
  cinco.comportamiento();
}

/********* INPUTS *********/
void mousePressed() {

  if (gameScreen == 2) {

    if (uno.playover) {
      file = new SoundFile(this, "trupet.mp3");
      file.play();
      file.loop();
    }

    if (dos.playover) {
      file = new SoundFile(this, "sax.mp3");
      file.play();
      file.loop();
    }

    if (tres.playover) {
      file = new SoundFile(this, "triangle.mp3");
      file.play();
      file.loop();
    }

    if (cuatro.playover) {
      file = new SoundFile(this, "bass.mp3");
      file.play();
      file.loop();
    }

    if (cinco.playover) {
      file = new SoundFile(this, "drum.mp3");
      file.play();
      file.loop();
    }
  }
}

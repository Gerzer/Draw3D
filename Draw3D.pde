// Need G4P library
import g4p_controls.*;

PGraphics pg;
PGraphics pgR;
PGraphics pgG;
PGraphics pgB;
PGraphics pgRGB;
PGraphics pgOut;
int r = 0;
int g = 0;
int b = 0;
int mode = 0;
int dimension;
PImage pgLt;
PImage pgRt;


public void setup(){
  size(512, 512, JAVA2D);
  createGUI();
  customGUI();
  // Place your setup code here
  pg = createGraphics(512, 512);
  sketchPad1.setGraphic(pg);
  pgR = createGraphics(64, 64);
  sketchPadR.setGraphic(pgR);
  pgG = createGraphics(64, 64);
  sketchPadG.setGraphic(pgG);
  pgB = createGraphics(64, 64);
  sketchPadB.setGraphic(pgB);
  pgRGB = createGraphics(64, 128);
  sketchPadRGB.setGraphic(pgRGB);
  pgOut = createGraphics(512, 512);
  sketchPad2.setGraphic(pgOut);
  
}

public void draw(){
  background(255);
  pg.beginDraw();
  pg.noStroke();
  pg.fill(r, g, b);
  if (mousePressed) {
    pg.ellipse(mouseX, mouseY, slider2d1.getValueXI(), slider2d1.getValueYI());
  }
  pg.endDraw();
  pgR.beginDraw();
  pgR.background(r, 0, 0);
  pgR.endDraw();
  pgG.beginDraw();
  pgG.background(0, g, 0);
  pgG.endDraw();
  pgB.beginDraw();
  pgB.background(0, 0, b);
  pgB.endDraw();
  pgRGB.beginDraw();
  pgRGB.background(r, g, b);
  pgRGB.endDraw();
  pgOut.beginDraw();
  pgOut.background(255);
  if (mode == 1) {
    for (int i = 0; i < 16; i += 2) {
      if (i == 14) {
        pgOut.tint(200);
      } else {
        pgOut.tint(255);
      }
      pgOut.image(pg.get(), ((mouseX - (width / 2)) / 64) * i, ((mouseY - (width / 2)) / 64) * i);
    }
  } else if (mode == 2) {
    pgLt = pg.get(24, 0, width - 24, height);
    pgRt = pg.get(0, 0, width - 24, height);
    dimension = pgLt.width * pgLt.height;
    pgLt.loadPixels();
    for (int i = 0; i < dimension; i++) {
      pgLt.pixels[i] = color(red(pgLt.pixels[i]), 0, 0);
    }
    pgLt.updatePixels();
    dimension = pgRt.width * pgRt.height;
    pgRt.loadPixels();
    for (int i = 0; i < dimension; i++) {
      pgRt.pixels[i] = color(0, green(pgRt.pixels[i]), blue(pgRt.pixels[i]));
    }
    pgRt.updatePixels();
    pgLt.blend(pgRt, 0, 0, pgRt.width, pgRt.height, 0, 0, pgLt.width, pgLt.height, ADD);
    pgOut.image(pgLt, 12, 0);
  }
  pgOut.endDraw();
  
}

// Use this method to add additional statements
// to customise the GUI controls
public void customGUI(){
  window4.setVisible(false);
}

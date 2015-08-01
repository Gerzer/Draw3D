// Need G4P library
import g4p_controls.*;

PGraphics pg;
PGraphics pgR;
PGraphics pgG;
PGraphics pgB;
PGraphics pgRGB;
int r = 0;
int g = 0;
int b = 0;


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
  
}

// Use this method to add additional statements
// to customise the GUI controls
public void customGUI(){

}

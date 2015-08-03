/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

synchronized public void win_draw1(GWinApplet appc, GWinData data) { //_CODE_:window1:741241:
  appc.background(230);
} //_CODE_:window1:741241:

public void stickR_change1(GStick source, GEvent event) { //_CODE_:stickR:721081:
  println("stickR - GStick >> GEvent." + event + " @ " + millis());
  if (source.getPosition() > -1) {
    r = ((source.getPosition() + 1) * 32) - 1;
  }
} //_CODE_:stickR:721081:

public void stickG_change1(GStick source, GEvent event) { //_CODE_:stickG:420956:
  println("stickG - GStick >> GEvent." + event + " @ " + millis());
  if (source.getPosition() > -1) {
    g = ((source.getPosition() + 1) * 32) - 1;
  }
} //_CODE_:stickG:420956:

public void stickB_change1(GStick source, GEvent event) { //_CODE_:stickB:715567:
  println("stickB - GStick >> GEvent." + event + " @ " + millis());
  if (source.getPosition() > -1) {
    b = ((source.getPosition() + 1) * 32) - 1;
  }
} //_CODE_:stickB:715567:

public void button4_click1(GButton source, GEvent event) { //_CODE_:button4:339527:
  println("button4 - GButton >> GEvent." + event + " @ " + millis());
  pg.clear();
} //_CODE_:button4:339527:

synchronized public void win_draw2(GWinApplet appc, GWinData data) { //_CODE_:window2:587422:
  appc.background(230);
} //_CODE_:window2:587422:

public void slider2d1_change1(GSlider2D source, GEvent event) { //_CODE_:slider2d1:507126:
  println("slider2d1 - GSlider2D >> GEvent." + event + " @ " + millis());
} //_CODE_:slider2d1:507126:

synchronized public void win_draw3(GWinApplet appc, GWinData data) { //_CODE_:window3:459838:
  appc.background(230);
} //_CODE_:window3:459838:

public void button1_click1(GButton source, GEvent event) { //_CODE_:button1:232958:
  println("button1 - GButton >> GEvent." + event + " @ " + millis());
  window4.setVisible(true);
  mode = 1;
} //_CODE_:button1:232958:

public void button2_click1(GButton source, GEvent event) { //_CODE_:button2:927389:
  println("button2 - GButton >> GEvent." + event + " @ " + millis());
  window4.setVisible(true);
  mode = 2;
} //_CODE_:button2:927389:

public void button3_click1(GButton source, GEvent event) { //_CODE_:button3:286186:
  println("button3 - GButton >> GEvent." + event + " @ " + millis());
  window4.setVisible(false);
  mode = 0;
} //_CODE_:button3:286186:

synchronized public void win_draw4(GWinApplet appc, GWinData data) { //_CODE_:window4:805063:
  appc.background(230);
} //_CODE_:window4:805063:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setCursor(ARROW);
  if(frame != null)
    frame.setTitle("Sketch");
  sketchPad1 = new GSketchPad(this, 0, 0, 512, 512);
  window1 = new GWindow(this, "Color", 0, 0, 256, 128, false, JAVA2D);
  window1.addDrawHandler(this, "win_draw1");
  stickR = new GStick(window1.papplet, 0, 0, 64, 64);
  stickR.setMode(G4P.X8);
  stickR.setLocalColorScheme(GCScheme.RED_SCHEME);
  stickR.setOpaque(false);
  stickR.addEventHandler(this, "stickR_change1");
  stickG = new GStick(window1.papplet, 64, 0, 64, 64);
  stickG.setMode(G4P.X8);
  stickG.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  stickG.setOpaque(false);
  stickG.addEventHandler(this, "stickG_change1");
  stickB = new GStick(window1.papplet, 128, 0, 64, 64);
  stickB.setMode(G4P.X8);
  stickB.setOpaque(false);
  stickB.addEventHandler(this, "stickB_change1");
  sketchPadR = new GSketchPad(window1.papplet, 0, 64, 64, 64);
  sketchPadG = new GSketchPad(window1.papplet, 64, 64, 64, 64);
  sketchPadB = new GSketchPad(window1.papplet, 128, 64, 64, 64);
  sketchPadRGB = new GSketchPad(window1.papplet, 192, 64, 64, 64);
  button4 = new GButton(window1.papplet, 192, 0, 64, 64);
  button4.setText("Clear");
  button4.setTextBold();
  button4.setTextItalic();
  button4.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  button4.addEventHandler(this, "button4_click1");
  window2 = new GWindow(this, "Size", 256, 0, 128, 128, false, JAVA2D);
  window2.addDrawHandler(this, "win_draw2");
  slider2d1 = new GSlider2D(window2.papplet, 0, 0, 128, 128);
  slider2d1.setLimitsX(16.0, 4.0, 128.0);
  slider2d1.setLimitsY(16.0, 4.0, 128.0);
  slider2d1.setNumberFormat(G4P.INTEGER, 0);
  slider2d1.setOpaque(true);
  slider2d1.addEventHandler(this, "slider2d1_change1");
  window3 = new GWindow(this, "Convert", 384, 0, 128, 96, false, JAVA2D);
  window3.addDrawHandler(this, "win_draw3");
  button1 = new GButton(window3.papplet, 0, 0, 128, 32);
  button1.setText("Pseudo-3D on");
  button1.setTextBold();
  button1.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  button1.addEventHandler(this, "button1_click1");
  button2 = new GButton(window3.papplet, 0, 32, 128, 32);
  button2.setText("Anaglyph-3D on");
  button2.setTextBold();
  button2.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  button2.addEventHandler(this, "button2_click1");
  button3 = new GButton(window3.papplet, 0, 64, 128, 32);
  button3.setText("3D off");
  button3.setTextBold();
  button3.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  button3.addEventHandler(this, "button3_click1");
  window4 = new GWindow(this, "Output", 0, 256, 512, 512, false, JAVA2D);
  window4.addDrawHandler(this, "win_draw4");
  sketchPad2 = new GSketchPad(window4.papplet, 0, 0, 512, 512);
}

// Variable declarations 
// autogenerated do not edit
GSketchPad sketchPad1; 
GWindow window1;
GStick stickR; 
GStick stickG; 
GStick stickB; 
GSketchPad sketchPadR; 
GSketchPad sketchPadG; 
GSketchPad sketchPadB; 
GSketchPad sketchPadRGB; 
GButton button4; 
GWindow window2;
GSlider2D slider2d1; 
GWindow window3;
GButton button1; 
GButton button2; 
GButton button3; 
GWindow window4;
GSketchPad sketchPad2; 


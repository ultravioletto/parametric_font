import controlP5.*;

ControlFrame cf;

void setupControlFrame() {
  cf = new ControlFrame(this, 400, 400, "Controls");
  surface.setLocation(0, 0);
   // surface.placeWindow(new int[]{500, 1}, new int[]{1, 0});
  noStroke();
}


class ControlFrame extends PApplet {

  int w, h;
  PApplet parent;
  ControlP5 cp5;

  public ControlFrame(PApplet _parent, int _w, int _h, String _name) {
    super();   
    parent = _parent;
    w=_w;
    h=_h;
    PApplet.runSketch(new String[]{this.getClass().getName()}, this);
  }

  public void settings() {
    size(w, h);
  }

  public void setup() {
  surface.setLocation(0, 0);
    PFont pfont = createFont("Arial", 20, true); // use true/false for smooth/no-smooth
    ControlFont font = new ControlFont(pfont, 20);
    
    
    int locX = 20;  
    int locY = 20;  

    cp5 = new ControlP5(this);



    cp5.addSlider("STEM_WEIGHT_W")
      .plugTo(parent, "STEM_WEIGHT_W")
      .setRange(1, 400)
      .setValue(20)
      .setPosition(locX, locY)
      .setFont(font)
      .setSize(200, 30);

    cp5.addSlider("STEM_WEIGHT_H")
      .plugTo(parent, "STEM_WEIGHT_H")
      .setRange(1, 400)
      .setValue(20)
      .setPosition(locX, locY * 3)
      .setFont(font)
      .setSize(200, 30);


    cp5.addSlider("GLIPH_W")
      .plugTo(parent, "GLIPH_W")
      .setRange(10, 1200)
      .setValue(200)
      .setPosition(locX, locY * 5)
      .setFont(font)
      .setSize(200, 30);

    cp5.addSlider("GLIPH_H")
      .plugTo(parent, "GLIPH_H")
      .setRange(10, 1200)
      .setValue(200)
      .setPosition(locX, locY * 7)
      .setFont(font)
      .setSize(200, 30);

    cp5.addSlider("HANDLER_RIGHT_V_X")
      .plugTo(parent, "HANDLER_RIGHT_V_X")
      .setRange(0, 1)
      .setValue(.75)
      .setPosition(locX, locY * 9)
      .setFont(font)
      .setSize(200, 30);

    cp5.addSlider("HANDLER_MIDDLE_H_Y")
      .plugTo(parent, "HANDLER_MIDDLE_H_Y")
      .setRange(0, 1)
      .setValue(.5)
      .setPosition(locX, locY * 11)
      .setFont(font)
      .setSize(200, 30);
  }

  void draw() {
    background(190);
  }
}

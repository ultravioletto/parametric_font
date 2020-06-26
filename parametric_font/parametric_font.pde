int GLIPH_W = 100;   // width of the gliph
int GLIPH_H = 200;   // height of the gliph

float STEM_WEIGHT_W = 80.0;
float STEM_WEIGHT_H = 80.0;

PVector stemWeight;

float AMT_ANGLE_SMOOTHNESS =1;  // from 0 to 1;

PVector HANDLER_MIDDLE_H;
float HANDLER_MIDDLE_H_Y;


PVector HANDLER_RIGHT_V;
float HANDLER_RIGHT_V_X;

Boolean debug = true;

B uppecase_B;
P uppecase_P;
D uppecase_D;
U uppecase_U;
J uppecase_J;
R uppecase_R;

V uppecase_V;
A uppecase_A;

W uppecase_W;
X uppecase_X;

E uppecase_E;
F uppecase_F;
L uppecase_L;
H uppecase_H;
I uppecase_I;
T uppecase_T;


O uppecase_O;




void settings() {
  size(1000, 1000);
}

void setup() {

  setupControlFrame();
  setupColor();
  //size(1200, 1200);
  surface.setLocation(400, 0);



  stemWeight = new PVector(STEM_WEIGHT_W, STEM_WEIGHT_H);

  HANDLER_MIDDLE_H_Y = .5;
  HANDLER_MIDDLE_H = new PVector (1, HANDLER_MIDDLE_H_Y);

  HANDLER_RIGHT_V_X = .75;
  HANDLER_RIGHT_V = new PVector (HANDLER_RIGHT_V_X, 1);


  uppecase_B = new B();
  uppecase_P = new P();
  uppecase_D = new D();
  uppecase_U = new U();
  uppecase_J = new J();
  uppecase_R = new R();
  uppecase_W = new W();
  uppecase_V = new V();
  uppecase_A = new A();
  uppecase_X = new X();
  uppecase_E = new E();
  uppecase_F = new F();
  uppecase_L = new L();
  uppecase_H = new H();
  uppecase_I = new I();
  uppecase_T = new T();
  uppecase_O = new O();

}



void draw() {

  background(255);

  int posX = 50;
  int posY = 50;

  int stepX = 125;
  int stepY = 225;
  
  if(debug){
     colorBodyVertical = #FF7744;
 colorBodyHoriz = #8DC63F;
 colorBodyArc = #785CCB;
 colorBodyFiller = #465FB7;
 colorBodySlant = #3CF7AB;} else{
  colorBodyVertical = 0;
 colorBodyHoriz = 0;
 colorBodyArc = 0;
 colorBodyFiller = 0;
 colorBodySlant = 0;
 
 }

  stemWeight.set(STEM_WEIGHT_W, STEM_WEIGHT_W);
  HANDLER_MIDDLE_H.set(1, HANDLER_MIDDLE_H_Y);
  HANDLER_RIGHT_V.set(HANDLER_RIGHT_V_X, 1);

  pushMatrix();
  translate(posX, posY);
  uppecase_B.show();
  popMatrix();

  pushMatrix();
  translate(posX+(stepX), posY);
  uppecase_P.show();
  popMatrix();

  pushMatrix();
  translate(posX+(stepX*2), posY);
  uppecase_R.show();
  popMatrix();


  pushMatrix();
  translate(posX+(stepX*3), posY);
  uppecase_D.show();
  popMatrix();


  pushMatrix();
  translate(posX+(stepX*4), posY);
  uppecase_J.show();
  popMatrix();


  pushMatrix();
  translate(posX+(stepX*5), posY);
  uppecase_U.show();
  popMatrix();



  pushMatrix();
  translate(posX+(stepX*0), posY+(stepY));
  uppecase_V.show();
  popMatrix();

  pushMatrix();
  translate(posX+(stepX*1), posY+(stepY));
  uppecase_A.show();
  popMatrix();


  pushMatrix();
  translate(posX+(stepX*2), posY+(stepY));
  uppecase_W.show();
  popMatrix();

  pushMatrix();
  translate(posX+(stepX*3), posY+(stepY));
  uppecase_X.show();
  popMatrix();




  pushMatrix();
  translate(posX+(stepX*0), posY+(stepY*2));
  uppecase_E.show();
  popMatrix();

  pushMatrix();
  translate(posX+(stepX*1), posY+(stepY*2));
  uppecase_F.show();
  popMatrix();

  pushMatrix();
  translate(posX+(stepX*2), posY+(stepY*2));
  uppecase_L.show();
  popMatrix();


  pushMatrix();
  translate(posX+(stepX*3), posY+(stepY*2));
  uppecase_H.show();
  popMatrix();
  
   pushMatrix();
  translate(posX+(stepX*4), posY+(stepY*2));
  uppecase_I.show();
  popMatrix();
  
  
  pushMatrix();
  translate(posX+(stepX*5), posY+(stepY*2));
  uppecase_T.show();
  popMatrix();
  
  
  
  
  //////////////////////////////////// o
  pushMatrix();
  translate(posX+(stepX*0), posY+(stepY*3));
  uppecase_O.show();
  popMatrix();
  
}

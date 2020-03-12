class E extends Gliph {

  Handler HandlerTop;
  Handler HandlerRight;
  Handler HandlerBottom;
  Handler HandlerLeft;

  Handler HandlerLeftVertical;
  Handler HandlerRightVertical;
  Handler HandlerMiddleHorizontal;


  Handler HandlerHalfTopMiddleHorizontal;
  Handler HandlerHalfMiddleBottomHorizontal;

  StemHorizontal h1, h2, h3;
  StemVertical v1;



  PVector HandlerRightVerticalPosMultiplier;
  PVector HandlerMiddleHorizontalPosMultiplier;

  PVector multiplierOne =new PVector(1, 1);

  E() {
    super();

    HandlerRightVerticalPosMultiplier = HANDLER_RIGHT_V;
    HandlerMiddleHorizontalPosMultiplier = HANDLER_MIDDLE_H;

    HandlerTop = new Handler(A, B, multiplierOne, 0, 0);
    HandlerRight = new Handler(B, C, multiplierOne, 0, 0);
    HandlerBottom = new Handler(D, C, multiplierOne, 0, 0);
    HandlerLeft = new Handler(A, D, multiplierOne, 0, 0);

    HandlerLeftVertical = new Handler(A, D, multiplierOne, STEM_WEIGHT_W, 0);
    HandlerRightVertical = new Handler(B, C, HandlerRightVerticalPosMultiplier, 0, 0);
    HandlerMiddleHorizontal = new Handler (D, C, HandlerMiddleHorizontalPosMultiplier, 0, 0);

    HandlerHalfTopMiddleHorizontal = new Handler(HandlerTop, HandlerMiddleHorizontal, 0, .25);
    HandlerHalfMiddleBottomHorizontal= new Handler(HandlerMiddleHorizontal, HandlerBottom, 0, -.25);

    h1 = new StemHorizontal(HandlerLeftVertical, HandlerRight, HandlerTop, stemWeight, 0 );
    h2 = new StemHorizontal(HandlerLeftVertical, HandlerRightVertical, HandlerMiddleHorizontal, stemWeight, -.5);
    h3 = new StemHorizontal(HandlerLeftVertical, HandlerRight, HandlerBottom, stemWeight, -1);

    v1 = new StemVertical(HandlerTop, HandlerBottom, HandlerLeft, stemWeight, 1 );
  }
  void show() {
    grid.show();


    HandlerTop.update();
    HandlerRight.update();
    HandlerBottom.update();
    HandlerLeft.update();


    HandlerLeftVertical.update(v1.B, v1.C);
    HandlerRightVertical.update();
    HandlerMiddleHorizontal.update();

    HandlerHalfTopMiddleHorizontal.update();
    HandlerHalfMiddleBottomHorizontal.update();


    h1.update();
    h2.update();
    h3.update();

    v1.update();
  }
}



class F extends Gliph {

  Handler HandlerTop;
  Handler HandlerRight;
  Handler HandlerBottom;
  Handler HandlerLeft;

  Handler HandlerLeftVertical;
  Handler HandlerRightVertical;
  Handler HandlerMiddleHorizontal;


  Handler HandlerHalfTopMiddleHorizontal;
  Handler HandlerHalfMiddleBottomHorizontal;

  StemHorizontal h1, h2;
  StemVertical v1;



  PVector HandlerRightVerticalPosMultiplier;
  PVector HandlerMiddleHorizontalPosMultiplier;

  PVector multiplierOne =new PVector(1, 1);

  F() {
    super();

    HandlerRightVerticalPosMultiplier = HANDLER_RIGHT_V;
    HandlerMiddleHorizontalPosMultiplier = HANDLER_MIDDLE_H;

    HandlerTop = new Handler(A, B, multiplierOne, 0, 0);
    HandlerRight = new Handler(B, C, multiplierOne, 0, 0);
    HandlerBottom = new Handler(D, C, multiplierOne, 0, 0);
    HandlerLeft = new Handler(A, D, multiplierOne, 0, 0);

    HandlerLeftVertical = new Handler(A, D, multiplierOne, STEM_WEIGHT_W, 0);
    HandlerRightVertical = new Handler(B, C, HandlerRightVerticalPosMultiplier, 0, 0);
    HandlerMiddleHorizontal = new Handler (D, C, HandlerMiddleHorizontalPosMultiplier, 0, 0);

    HandlerHalfTopMiddleHorizontal = new Handler(HandlerTop, HandlerMiddleHorizontal, 0, .25);
    HandlerHalfMiddleBottomHorizontal= new Handler(HandlerMiddleHorizontal, HandlerBottom, 0, -.25);

    h1 = new StemHorizontal(HandlerLeftVertical, HandlerRight, HandlerTop, stemWeight, 0 );
    h2 = new StemHorizontal(HandlerLeftVertical, HandlerRightVertical, HandlerMiddleHorizontal, stemWeight, -.5);

    v1 = new StemVertical(HandlerTop, HandlerBottom, HandlerLeft, stemWeight, 1 );
  }
  void show() {
    grid.show();


    HandlerTop.update();
    HandlerRight.update();
    HandlerBottom.update();
    HandlerLeft.update();


    HandlerLeftVertical.update(v1.B, v1.C);
    HandlerRightVertical.update();
    HandlerMiddleHorizontal.update();

    HandlerHalfTopMiddleHorizontal.update();
    HandlerHalfMiddleBottomHorizontal.update();


    h1.update();
    h2.update();

    v1.update();
  }
}



class L extends Gliph {

  Handler HandlerTop;
  Handler HandlerRight;
  Handler HandlerBottom;
  Handler HandlerLeft;

  Handler HandlerLeftVertical;
  Handler HandlerRightVertical;
  Handler HandlerMiddleHorizontal;


  Handler HandlerHalfTopMiddleHorizontal;
  Handler HandlerHalfMiddleBottomHorizontal;


  StemHorizontal h3;
  StemVertical v1;



  PVector HandlerRightVerticalPosMultiplier;


  PVector HandlerMiddleHorizontalPosMultiplier;


  PVector multiplierOne =new PVector(1, 1);

  L() {
    super();

    HandlerRightVerticalPosMultiplier = HANDLER_RIGHT_V;
    HandlerMiddleHorizontalPosMultiplier = HANDLER_MIDDLE_H;

    HandlerTop = new Handler(A, B, multiplierOne, 0, 0);
    HandlerRight = new Handler(B, C, multiplierOne, 0, 0);
    HandlerBottom = new Handler(D, C, multiplierOne, 0, 0);
    HandlerLeft = new Handler(A, D, multiplierOne, 0, 0);

    HandlerLeftVertical = new Handler(A, D, multiplierOne, STEM_WEIGHT_W, 0);
    HandlerRightVertical = new Handler(B, C, HandlerRightVerticalPosMultiplier, 0, 0);
    HandlerMiddleHorizontal = new Handler (D, C, HandlerMiddleHorizontalPosMultiplier, 0, 0);

    HandlerHalfTopMiddleHorizontal = new Handler(HandlerTop, HandlerMiddleHorizontal, 0, .25);
    HandlerHalfMiddleBottomHorizontal= new Handler(HandlerMiddleHorizontal, HandlerBottom, 0, -.25);


    h3 = new StemHorizontal(HandlerLeftVertical, HandlerRightVertical, HandlerBottom, stemWeight, -1);

    v1 = new StemVertical(HandlerTop, HandlerBottom, HandlerLeft, stemWeight, 1 );
  }
  void show() {
    grid.show();


    HandlerTop.update();
    HandlerRight.update();
    HandlerBottom.update();
    HandlerLeft.update();


    HandlerLeftVertical.update(v1.B, v1.C);
    HandlerRightVertical.update();
    HandlerMiddleHorizontal.update();

    HandlerHalfTopMiddleHorizontal.update();
    HandlerHalfMiddleBottomHorizontal.update();



    h3.update();

    v1.update();
  }
}


///////////////////////////////////////////////// H
class H extends Gliph {

  Handler HandlerTop;
  Handler HandlerRight;
  Handler HandlerBottom;
  Handler HandlerLeft;


  Handler HandlerMiddleHorizontal;


  Handler HandlerHalfLeftRightVerical;


  StemVertical v1;
  StemVertical v2;


  StemFiller f1;


  PVector HandlerMiddleHorizontalPosMultiplier;


  PVector multiplierOne =new PVector(1, 1);

  H() {
    super();

    HandlerMiddleHorizontalPosMultiplier = HANDLER_MIDDLE_H;

    HandlerTop = new Handler(A, B, multiplierOne, 0, 0);
    HandlerRight = new Handler(B, C, multiplierOne, 0, 0);
    HandlerBottom = new Handler(D, C, multiplierOne, 0, 0);
    HandlerLeft = new Handler(A, D, multiplierOne, 0, 0);


    HandlerMiddleHorizontal = new Handler (D, C, HandlerMiddleHorizontalPosMultiplier, 0, 0);

    HandlerHalfLeftRightVerical= new Handler(HandlerLeft, HandlerRight, 0, 0);


    v1 = new StemVertical(HandlerTop, HandlerBottom, HandlerLeft, stemWeight, 1 );
    v2 = new StemVertical(HandlerTop, HandlerBottom, HandlerRight, stemWeight, -1 );

    f1 = new StemFiller();
  }
  void show() {
    grid.show();
    HandlerTop.update();
    HandlerRight.update();
    HandlerBottom.update();
    HandlerLeft.update();
    HandlerMiddleHorizontal.update();
    HandlerHalfLeftRightVerical.update();
    v1.update();
    v2.update();

    PVector a = new PVector (stemWeight.x, HandlerMiddleHorizontal.A.y - stemWeight.y/2);
    PVector b = new PVector (HandlerMiddleHorizontal.B.x-stemWeight.x, HandlerMiddleHorizontal.B.y-stemWeight.y/2);
    PVector c = new PVector (HandlerMiddleHorizontal.B.x-stemWeight.x, HandlerMiddleHorizontal.B.y+stemWeight.y/2);
    PVector d = new PVector (stemWeight.x, HandlerMiddleHorizontal.A.y + stemWeight.y/2);
    
    f1.update(a,b,c,d);
  }
}


///////////////////////////////////////////////////////////////// I

class I extends Gliph {

  Handler HandlerTop;
  Handler HandlerRight;
  Handler HandlerBottom;
  Handler HandlerLeft;

 
Handler HandlerHalfLeftRightVerical;


  StemFiller f1;



  


  PVector multiplierOne =new PVector(1, 1);

  I() {
    super();

    

    HandlerTop = new Handler(A, B, multiplierOne, 0, 0);
    HandlerRight = new Handler(B, C, multiplierOne, 0, 0);
    HandlerBottom = new Handler(D, C, multiplierOne, 0, 0);
    HandlerLeft = new Handler(A, D, multiplierOne, 0, 0);



    HandlerHalfLeftRightVerical= new Handler(HandlerLeft, HandlerRight, 0, 0);


    f1 = new StemFiller();
  }
  void show() {
    grid.show();


    HandlerTop.update();
    HandlerRight.update();
    HandlerBottom.update();
    HandlerLeft.update();

HandlerHalfLeftRightVerical.update();


PVector a = new PVector(HandlerHalfLeftRightVerical.A.x - stemWeight.x/2, HandlerHalfLeftRightVerical.A.y);
PVector b = new PVector(HandlerHalfLeftRightVerical.A.x + stemWeight.x/2, HandlerHalfLeftRightVerical.A.y);
PVector c = new PVector(HandlerHalfLeftRightVerical.B.x + stemWeight.x/2, HandlerHalfLeftRightVerical.B.y);
PVector d = new PVector(HandlerHalfLeftRightVerical.B.x - stemWeight.x/2, HandlerHalfLeftRightVerical.B.y);


    f1.update(a,b,c,d);
  }
}


///////////////////////////////////////////////////////////////// T

class T extends Gliph {

  Handler HandlerTop;
  Handler HandlerRight;
  Handler HandlerBottom;
  Handler HandlerLeft;

 
Handler HandlerHalfLeftRightVerical;


  StemFiller f1;
  StemHorizontal h1;



  


  PVector multiplierOne =new PVector(1, 1);

  T() {
    super();

    

    HandlerTop = new Handler(A, B, multiplierOne, 0, 0);
    HandlerRight = new Handler(B, C, multiplierOne, 0, 0);
    HandlerBottom = new Handler(D, C, multiplierOne, 0, 0);
    HandlerLeft = new Handler(A, D, multiplierOne, 0, 0);



    HandlerHalfLeftRightVerical= new Handler(HandlerLeft, HandlerRight, 0, 0);

    h1 = new StemHorizontal(HandlerLeft, HandlerRight, HandlerTop, stemWeight, 0 );

    f1 = new StemFiller();
    
  }
  void show() {
    grid.show();


    HandlerTop.update();
    HandlerRight.update();
    HandlerBottom.update();
    HandlerLeft.update();

HandlerHalfLeftRightVerical.update();

    h1.update();
    
PVector a = new PVector(HandlerHalfLeftRightVerical.A.x - stemWeight.x/2, h1.D.y);
PVector b = new PVector(HandlerHalfLeftRightVerical.A.x + stemWeight.x/2,  h1.C.y);
PVector c = new PVector(HandlerHalfLeftRightVerical.B.x + stemWeight.x/2, HandlerHalfLeftRightVerical.B.y);
PVector d = new PVector(HandlerHalfLeftRightVerical.B.x - stemWeight.x/2, HandlerHalfLeftRightVerical.B.y);


    f1.update(a,b,c,d);

  }
}

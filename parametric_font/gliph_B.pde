/////////////////////////////////////////////////////B

class B extends Gliph {

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

  StemArcRightDown a1;
  StemArcRightUp   a2;
  StemArcRightDown a3;
  StemArcRightUp   a4;

  StemFiller f1;
  StemFiller f2;

  PVector HandlerRightVerticalPosMultiplier;


  PVector HandlerMiddleHorizontalPosMultiplier;


  PVector multiplierOne =new PVector(1, 1);

  B() {
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

    h1 = new StemHorizontal(HandlerLeftVertical, HandlerRightVertical, HandlerTop, stemWeight, 0 );
    h2 = new StemHorizontal(HandlerLeftVertical, HandlerRightVertical, HandlerMiddleHorizontal, stemWeight, -.5);
    h3 = new StemHorizontal(HandlerLeftVertical, HandlerRightVertical, HandlerBottom, stemWeight, -1);

    v1 = new StemVertical(HandlerTop, HandlerBottom, HandlerLeft, stemWeight, 1 );

    a1 = new StemArcRightDown(h1.B, h1.C, HandlerRight, HandlerHalfTopMiddleHorizontal, stemWeight);
    a2 = new StemArcRightUp(h2.B, h2.C, HandlerRight, HandlerHalfTopMiddleHorizontal, stemWeight);
    a3 = new StemArcRightDown(h2.B, h2.C, HandlerRight, HandlerHalfMiddleBottomHorizontal, stemWeight);
    a4 = new StemArcRightUp(h3.B, h3.C, HandlerRight, HandlerHalfMiddleBottomHorizontal, stemWeight);


    f1 = new StemFiller(a1.C, a1.B, a2.C, a2.B);
    f2 = new StemFiller(a3.C, a3.B, a4.C, a4.B);
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

    a1.update();
    a2.update();
    a3.update();
    a4.update();

    f1.update();
    f2.update();
  }
}

/////////////////////////////////////////////////////P


class P extends Gliph {

  Handler HandlerTop;
  Handler HandlerRight;
  Handler HandlerBottom;
  Handler HandlerLeft;

  Handler HandlerLeftVertical;
  Handler HandlerRightVertical;
  Handler HandlerMiddleHorizontal;


  Handler HandlerHalfTopMiddleHorizontal;


  StemHorizontal h1, h2;
  StemVertical v1;

  StemArcRightDown a1;
  StemArcRightUp   a2;


  StemFiller f1;

  PVector HandlerRightVerticalPosMultiplier;


  PVector HandlerMiddleHorizontalPosMultiplier;


  PVector multiplierOne =new PVector(1, 1);

  P() {
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

    h1 = new StemHorizontal(HandlerLeftVertical, HandlerRightVertical, HandlerTop, stemWeight, 0 );
    h2 = new StemHorizontal(HandlerLeftVertical, HandlerRightVertical, HandlerMiddleHorizontal, stemWeight, -.5);

    v1 = new StemVertical(HandlerTop, HandlerBottom, HandlerLeft, stemWeight, 1 );

    a1 = new StemArcRightDown(h1.B, h1.C, HandlerRight, HandlerHalfTopMiddleHorizontal, stemWeight);
    a2 = new StemArcRightUp(h2.B, h2.C, HandlerRight, HandlerHalfTopMiddleHorizontal, stemWeight);


    f1 = new StemFiller(a1.C, a1.B, a2.C, a2.B);
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


    h1.update();
    h2.update();

    v1.update();

    a1.update();
    a2.update();


    f1.update();
  }
}

/////////////////////////////////////////////////////R

class R extends Gliph {

  Handler HandlerTop;
  Handler HandlerRight;
  Handler HandlerBottom;
  Handler HandlerLeft;

  Handler HandlerLeftVertical;
  Handler HandlerRightVertical;
  Handler HandlerMiddleHorizontal;

  Handler HandlerHalfTopMiddleHorizontal;

  Handler HandlerSlantTop;
  Handler HandlerSlantRight;

  StemHorizontal h1, h2;
  StemVertical v1;

  StemArcRightDown a1;
  StemArcRightUp   a2;

  StemFiller f1;
  StemFiller f2;


  StemSlantDown s1;


  PVector HandlerRightVerticalPosMultiplier;

  PVector HandlerMiddleHorizontalPosMultiplier;

  PVector multiplierOne =new PVector(1, 1);

  R() {
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



    h1 = new StemHorizontal(HandlerLeftVertical, HandlerRightVertical, HandlerTop, stemWeight, 0 );
    h2 = new StemHorizontal(HandlerLeftVertical, HandlerRightVertical, HandlerMiddleHorizontal, stemWeight, -.5);

    v1 = new StemVertical(HandlerTop, HandlerBottom, HandlerLeft, stemWeight, 1 );

    a1 = new StemArcRightDown(h1.B, h1.C, HandlerRight, HandlerHalfTopMiddleHorizontal, stemWeight);
    a2 = new StemArcRightUp(h2.B, h2.C, HandlerRight, HandlerHalfTopMiddleHorizontal, stemWeight);


    f1 = new StemFiller(a1.C, a1.B, a2.C, a2.B);

    f2 = new StemFiller(new PVector(h2.C.x-stemWeight.x, h2.C.y), new PVector(f1.C.x, HandlerBottom.B.y), new PVector(f1.C.x, HandlerBottom.B.y), new PVector(f1.C.x-stemWeight.x, HandlerBottom.B.y));
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


    h1.update();
    h2.update();

    v1.update();

    a1.update();
    a2.update();


    f1.update();
    f2.update(new PVector(h2.C.x-stemWeight.x, h2.C.y), h2.C, new PVector(f1.C.x, HandlerBottom.B.y), new PVector(f1.C.x-stemWeight.x, HandlerBottom.B.y));
  }
}


////////////////////////////////////////////////////////////////////// D
class D extends Gliph {

  Handler HandlerTop;
  Handler HandlerRight;
  Handler HandlerBottom;
  Handler HandlerLeft;

  Handler HandlerLeftVertical;
  Handler HandlerRightVertical;
  Handler HandlerMiddleHorizontal;


  StemHorizontal h1, h2;
  StemVertical v1;

  StemArcRightDown a1;
  StemArcRightUp   a2;


  StemFiller f1;
  StemFiller f2;

  PVector HandlerRightVerticalPosMultiplier;
  PVector HandlerMiddleHorizontalPosMultiplier;
  PVector multiplierOne =new PVector(1, 1);

  D() {
    super();

    HandlerRightVerticalPosMultiplier = HANDLER_RIGHT_V;

    // HandlerMiddleHorizontalPosMultiplier = HANDLER_MIDDLE_H;
    HandlerMiddleHorizontalPosMultiplier = new PVector(1, .5);


    HandlerTop = new Handler(A, B, multiplierOne, 0, 0);
    HandlerRight = new Handler(B, C, multiplierOne, 0, 0);
    HandlerBottom = new Handler(C, D, multiplierOne, 0, 0);
    HandlerLeft = new Handler(D, A, multiplierOne, 0, 0);

    HandlerLeftVertical = new Handler(A, D, multiplierOne, STEM_WEIGHT_W, 0);
    HandlerRightVertical = new Handler(B, C, HandlerRightVerticalPosMultiplier, 0, 0);
    HandlerMiddleHorizontal = new Handler (D, C, HandlerMiddleHorizontalPosMultiplier, 0, 0);

    h1 = new StemHorizontal(HandlerLeftVertical, HandlerRightVertical, HandlerTop, stemWeight, 0 );
    h2 = new StemHorizontal(HandlerLeftVertical, HandlerRightVertical, HandlerBottom, stemWeight, -1);

    v1 = new StemVertical(HandlerTop, HandlerBottom, HandlerLeft, stemWeight, 1 );

    a1 = new StemArcRightDown(h1.B, h1.C, HandlerRight, HandlerMiddleHorizontal, stemWeight);
    a2 = new StemArcRightUp(h2.B, h2.C, HandlerRight, HandlerMiddleHorizontal, stemWeight);


    f1 = new StemFiller(a1.C, a1.B, a2.C, a2.B);
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

    h1.update();
    h2.update();

    v1.update();

    a1.update();
    a2.update();


    f1.update();
  }
}

/////////////////////////////////////////////////////////////// J
class J extends Gliph {

  Handler HandlerTop;
  Handler HandlerRight;
  Handler HandlerBottom;
  Handler HandlerLeft;


  Handler HandlerMiddleHorizontal;

  Handler HandlerRightVertical;

  Handler HandlerHalfLeftRightVerical;

  PVector HandlerRightVerticalPosMultiplier;

  PVector v1A;
  PVector v1B;
  StemVertical v2;

  StemArcRightDownFromTop a1;
  StemArcLeftDownFromTop a2;


  StemFiller f1;


  PVector HandlerMiddleHorizontalPosMultiplier;


  PVector multiplierOne =new PVector(1, 1);

  J() {
    super();
    HandlerRightVerticalPosMultiplier = HANDLER_RIGHT_V;

    HandlerMiddleHorizontalPosMultiplier = HANDLER_MIDDLE_H;

    HandlerTop = new Handler(A, B, multiplierOne, 0, 0);
    HandlerRight = new Handler(B, C, multiplierOne, 0, 0);
    HandlerBottom = new Handler(D, C, multiplierOne, 0, 0);
    HandlerLeft = new Handler(A, D, multiplierOne, 0, 0);


    HandlerMiddleHorizontal = new Handler (D, C, HandlerMiddleHorizontalPosMultiplier, 0, 0);
    HandlerRightVertical = new Handler(B, C, HandlerRightVerticalPosMultiplier, 0, 0);

    HandlerHalfLeftRightVerical= new Handler(HandlerLeft, HandlerRightVertical, 0, 0);

    v1A = new PVector();
    v1B = new PVector();
    v2 = new StemVertical(HandlerTop, HandlerMiddleHorizontal, HandlerRightVertical, stemWeight, -1 );

    a1 = new StemArcRightDownFromTop(v1A, v1B, HandlerBottom, HandlerHalfLeftRightVerical, stemWeight);
    a2 = new StemArcLeftDownFromTop(v2.C, v2.D, HandlerBottom, HandlerHalfLeftRightVerical, stemWeight);

    f1 = new StemFiller(a1.B, a2.B, a2.C, a1.C);
  }
  void show() {
    grid.show();


    HandlerTop.update();
    HandlerRight.update();
    HandlerBottom.update();
    HandlerLeft.update();


    HandlerRightVertical.update();
    HandlerMiddleHorizontal.update();

    HandlerHalfLeftRightVerical.update();


    v1A.set(   HandlerMiddleHorizontal.A.x+stemWeight.x, HandlerMiddleHorizontal.A.y);
    v1B.set(   HandlerMiddleHorizontal.A.x, HandlerMiddleHorizontal.A.y);
    v2.update();

    a1.update();
    a2.update();
    f1.update();
  }
}



///////////////////////////////////////////////// U
class U extends Gliph {

  Handler HandlerTop;
  Handler HandlerRight;
  Handler HandlerBottom;
  Handler HandlerLeft;


  Handler HandlerMiddleHorizontal;


  Handler HandlerHalfLeftRightVerical;


  StemVertical v1;
  StemVertical v2;

  StemArcRightDownFromTop a1;
  StemArcLeftDownFromTop a2;


  StemFiller f1;


  PVector HandlerMiddleHorizontalPosMultiplier;


  PVector multiplierOne =new PVector(1, 1);

  U() {
    super();

    HandlerMiddleHorizontalPosMultiplier = HANDLER_MIDDLE_H;

    HandlerTop = new Handler(A, B, multiplierOne, 0, 0);
    HandlerRight = new Handler(B, C, multiplierOne, 0, 0);
    HandlerBottom = new Handler(D, C, multiplierOne, 0, 0);
    HandlerLeft = new Handler(A, D, multiplierOne, 0, 0);


    HandlerMiddleHorizontal = new Handler (D, C, HandlerMiddleHorizontalPosMultiplier, 0, 0);

    HandlerHalfLeftRightVerical= new Handler(HandlerLeft, HandlerRight, 0, 0);


    v1 = new StemVertical(HandlerTop, HandlerMiddleHorizontal, HandlerLeft, stemWeight, 1 );
    v2 = new StemVertical(HandlerTop, HandlerMiddleHorizontal, HandlerRight, stemWeight, -1 );

    a1 = new StemArcRightDownFromTop(v1.C, v1.D, HandlerBottom, HandlerHalfLeftRightVerical, stemWeight);
    a2 = new StemArcLeftDownFromTop(v2.C, v2.D, HandlerBottom, HandlerHalfLeftRightVerical, stemWeight);

    f1 = new StemFiller(a1.B, a2.B, a2.C, a1.C);
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

    a1.update();
    a2.update();
    f1.update();
  }
}

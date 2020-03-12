///////////////////////////////////////////////// O
class O extends Gliph {

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

  O() {
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

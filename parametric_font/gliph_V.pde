class V extends Gliph {

  Handler HandlerTop;
  Handler HandlerRight;
  Handler HandlerBottom;
  Handler HandlerLeft;




  Handler HandlerHalfLeftRightVerical;

  StemFiller f1;
  StemFiller f2;

  PVector HandlerMiddleHorizontalPosMultiplier;


  PVector multiplierOne =new PVector(1, 1);

  V() {
    super();

    HandlerMiddleHorizontalPosMultiplier = HANDLER_MIDDLE_H;

    HandlerTop = new Handler(A, B, multiplierOne, 0, 0);
    HandlerRight = new Handler(B, C, multiplierOne, 0, 0);
    HandlerBottom = new Handler(D, C, multiplierOne, 0, 0);
    HandlerLeft = new Handler(A, D, multiplierOne, 0, 0);



    HandlerHalfLeftRightVerical= new Handler(HandlerLeft, HandlerRight, 0, 0);

    f1 = new StemFiller();
    f2 = new StemFiller();
  }
  void show() {
    grid.show();


    HandlerTop.update();
    HandlerRight.update();
    HandlerBottom.update();
    HandlerLeft.update();




    HandlerHalfLeftRightVerical.update();

    f1.update(
      HandlerTop.A, 
      new PVector(HandlerTop.A.x + stemWeight.x, HandlerTop.A.y), 
      new PVector(HandlerHalfLeftRightVerical.B.x , HandlerHalfLeftRightVerical.B.y), 
      new PVector(HandlerHalfLeftRightVerical.B.x - stemWeight.x, HandlerHalfLeftRightVerical.B.y)
      );


    f2.update(
      new PVector(HandlerTop.B.x - stemWeight.x, HandlerTop.B.y),
      HandlerTop.B, 
      new PVector(HandlerHalfLeftRightVerical.B.x + stemWeight.x , HandlerHalfLeftRightVerical.B.y), 
      new PVector(HandlerHalfLeftRightVerical.B.x , HandlerHalfLeftRightVerical.B.y)
      );
  }
}





class A extends Gliph {

  Handler HandlerTop;
  Handler HandlerRight;
  Handler HandlerBottom;
  Handler HandlerLeft;


  Handler HandlerMiddleHorizontal;


  Handler HandlerHalfLeftRightVerical;




  StemFiller f1;
  StemFiller f2;
  StemFiller f3;





  PVector HandlerMiddleHorizontalPosMultiplier;


  PVector multiplierOne =new PVector(1, 1);

  A() {
    super();

    HandlerMiddleHorizontalPosMultiplier = HANDLER_MIDDLE_H;

    HandlerTop = new Handler(A, B, multiplierOne, 0, 0);
    HandlerRight = new Handler(B, C, multiplierOne, 0, 0);
    HandlerBottom = new Handler(D, C, multiplierOne, 0, 0);
    HandlerLeft = new Handler(A, D, multiplierOne, 0, 0);


    HandlerMiddleHorizontal = new Handler (D, C, HandlerMiddleHorizontalPosMultiplier, 0, 0);

    HandlerHalfLeftRightVerical= new Handler(HandlerLeft, HandlerRight, 0, 0);

    f1 = new StemFiller();
    f2 = new StemFiller();
    f3 = new StemFiller();
  }
  void show() {
    grid.show();


    HandlerTop.update();
    HandlerRight.update();
    HandlerBottom.update();
    HandlerLeft.update();



    HandlerMiddleHorizontal.update();

    HandlerHalfLeftRightVerical.update();

    f1.update(
      new PVector(HandlerHalfLeftRightVerical.A.x - stemWeight.x, HandlerHalfLeftRightVerical.A.y), 
      new PVector(HandlerHalfLeftRightVerical.A.x, HandlerHalfLeftRightVerical.A.y), 
      new PVector(HandlerBottom.A.x + stemWeight.x, HandlerBottom.A.y), 
      HandlerBottom.A
      );


    f2.update(
      new PVector(HandlerHalfLeftRightVerical.A.x, HandlerHalfLeftRightVerical.A.y), 
      new PVector(HandlerHalfLeftRightVerical.A.x+ stemWeight.x, HandlerHalfLeftRightVerical.A.y), 
      HandlerBottom.B, 
      new PVector(HandlerBottom.B.x - stemWeight.x, HandlerBottom.B.y)
      );






    PVector aa = new PVector(HandlerMiddleHorizontal.A.x, HandlerMiddleHorizontal.A.y - stemWeight.x/2);
    PVector ab = new PVector(HandlerMiddleHorizontal.B.x, HandlerMiddleHorizontal.B.y - stemWeight.x/2);
    PVector ac = new PVector(f1.B.x, f1.B.y);
    PVector ad = new PVector(f1.C.x, f1.C.y);

    PVector A = lineIntersect(aa, ab, ac, ad);

   // fill(0);
   // ellipse(A.x, A.y, 5, 5); // intersection mark



    PVector ba = new PVector(HandlerMiddleHorizontal.A.x, HandlerMiddleHorizontal.A.y - stemWeight.x/2);
    PVector bb = new PVector(HandlerMiddleHorizontal.B.x, HandlerMiddleHorizontal.B.y - stemWeight.x/2);
    PVector bc = new PVector(f2.A.x, f2.A.y);
    PVector bd = new PVector(f2.D.x, f2.D.y);

    PVector B = lineIntersect(ba, bb, bc, bd);
  //  ellipse(B.x, B.y, 5, 5); // intersection mark
    
    
    
     PVector ca = new PVector(HandlerMiddleHorizontal.A.x, HandlerMiddleHorizontal.A.y + stemWeight.x/2);
    PVector cb = new PVector(HandlerMiddleHorizontal.B.x, HandlerMiddleHorizontal.B.y + stemWeight.x/2);
    PVector cc = new PVector(f2.A.x, f2.A.y);
    PVector cd = new PVector(f2.D.x, f2.D.y);

    PVector C = lineIntersect(ca, cb, cc, cd);
  //  ellipse(C.x, C.y, 5, 5); // intersection mark
    
    
    
      PVector da = new PVector(HandlerMiddleHorizontal.A.x, HandlerMiddleHorizontal.A.y + stemWeight.x/2);
    PVector db = new PVector(HandlerMiddleHorizontal.B.x, HandlerMiddleHorizontal.B.y + stemWeight.x/2);
    PVector dc = new PVector(f1.B.x, f1.B.y);
    PVector dd = new PVector(f1.C.x, f1.C.y);

    PVector D = lineIntersect(da, db, dc, dd);

   
   // ellipse(D.x, D.y, 5, 5); // intersection mark
    
    
    
    f3.update(A,B,C,D);
  }
}







class W extends Gliph {

  Handler HandlerTop;
  Handler HandlerRight;
  Handler HandlerBottom;
  Handler HandlerLeft;


  Handler HandlerMiddleVertical;
  Handler HandlerMiddleHorizontal;


  Handler HandlerHalfLeftMiddleVertical;
  Handler HandlerHalfMiddleRightVertical;


  PVector HandlerMiddleVerticalPosMultiplier;


  PVector HandlerMiddleHorizontalPosMultiplier;


  PVector multiplierOne =new PVector(1, 1);


  StemSlantDown s1;
  StemSlantDown s2;
  StemSlantDown s3;
  StemSlantDown s4;

  W() {
    super();

    HandlerMiddleVerticalPosMultiplier = new PVector(.5,1);//HANDLER_RIGHT_V;
    HandlerMiddleHorizontalPosMultiplier = HANDLER_MIDDLE_H;

    HandlerTop = new Handler(A, B, multiplierOne, 0, 0);
    HandlerRight = new Handler(B, C, multiplierOne, 0, 0);
    HandlerBottom = new Handler(D, C, multiplierOne, 0, 0);
    HandlerLeft = new Handler(A, D, multiplierOne, 0, 0);

    HandlerMiddleVertical = new Handler(B, C, HandlerMiddleVerticalPosMultiplier, 0, 0);
    HandlerMiddleHorizontal = new Handler (D, C, HandlerMiddleHorizontalPosMultiplier, 0, 0);

    HandlerHalfLeftMiddleVertical = new Handler(HandlerLeft, HandlerMiddleVertical, 0, 0);
    HandlerHalfMiddleRightVertical = new Handler(HandlerMiddleVertical, HandlerRight, 0, 0);

    s1 = new StemSlantDown(HandlerTop, HandlerHalfLeftMiddleVertical, HandlerBottom, HandlerLeft, stemWeight);
    s2 = new StemSlantDown(HandlerBottom, HandlerMiddleVertical, HandlerMiddleHorizontal, HandlerHalfLeftMiddleVertical, stemWeight);
    s3 = new StemSlantDown(HandlerMiddleHorizontal, HandlerHalfMiddleRightVertical, HandlerBottom, HandlerMiddleVertical, stemWeight);
    s4 = new StemSlantDown(HandlerBottom, HandlerRight, HandlerTop, HandlerHalfMiddleRightVertical, stemWeight);

  }
  void show() {
    grid.show();

    HandlerTop.update();
    HandlerRight.update();
    HandlerBottom.update();
    HandlerLeft.update();

    HandlerMiddleVertical.update();
    HandlerMiddleHorizontal.update();

    HandlerHalfLeftMiddleVertical.update();
    HandlerHalfMiddleRightVertical.update();

    s1.update();
    s2.update();
    s3.update();
    s4.update();

  }
}


class X extends Gliph {

  Handler HandlerTop;
  Handler HandlerRight;
  Handler HandlerBottom;
  Handler HandlerLeft;

  Handler HandlerHalfLeftRightVerical;

  StemFiller f1;
  StemFiller f2;

  PVector HandlerMiddleHorizontalPosMultiplier;


  PVector multiplierOne =new PVector(1, 1);

  X() {
    super();

    HandlerMiddleHorizontalPosMultiplier = HANDLER_MIDDLE_H;

    HandlerTop = new Handler(A, B, multiplierOne, 0, 0);
    HandlerRight = new Handler(B, C, multiplierOne, 0, 0);
    HandlerBottom = new Handler(D, C, multiplierOne, 0, 0);
    HandlerLeft = new Handler(A, D, multiplierOne, 0, 0);



    HandlerHalfLeftRightVerical= new Handler(HandlerLeft, HandlerRight, 0, 0);

    f1 = new StemFiller();
    f2 = new StemFiller();
  }
  void show() {
    grid.show();


    HandlerTop.update();
    HandlerRight.update();
    HandlerBottom.update();
    HandlerLeft.update();




    HandlerHalfLeftRightVerical.update();

    f1.update(
      HandlerTop.A, 
      new PVector(HandlerTop.A.x + stemWeight.x, HandlerTop.A.y), 
      new PVector(HandlerRight.B.x, HandlerRight.B.y), 
      new PVector(HandlerRight.B.x - stemWeight.x, HandlerRight.B.y)
      );


    f2.update(
      new PVector(HandlerTop.B.x - stemWeight.x, HandlerTop.B.y), 
      HandlerTop.B, 
      new PVector(HandlerLeft.B.x + stemWeight.x, HandlerLeft.B.y), 
      new PVector(HandlerLeft.B.x, HandlerLeft.B.y)
      );
  }
}

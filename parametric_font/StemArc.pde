class StemArcRightUp {
  PVector start, end;
  PVector A, B, C, D;
  Handler HandlerVert;
  Handler HandlerLimitVert;

  PVector weight;

  StemArcRightUp(PVector _start, PVector _end, Handler _vert, Handler _limitVert, PVector _weight) {
    start = _start;
    end = _end;
    HandlerVert = _vert;
    HandlerLimitVert= _limitVert;


    weight = _weight;

    A = _start;
    D = _end;
    B =  new PVector(0, 0);
    C = new PVector(0, 0);
  }

  void update() {
    A = start;
    D = end;
    B .set(HandlerVert.A.x-weight.x, D.y-(HandlerVert.A.x-A.x));
    C .set(HandlerVert.A.x, D.y-(HandlerVert.A.x-A.x));

    if (B.y < HandlerLimitVert.A.y) {

      B .set(A.x+(D.y-HandlerLimitVert.A.y)-weight.x, HandlerLimitVert.A.y);
      C .set(A.x+(D.y-HandlerLimitVert.A.y), HandlerLimitVert.A.y);
    }


    show();
  }
  void show() {

    //noFill();
    //stroke(colorBodyArc);

    noStroke();
    fill(colorBodyArc, TRANSPARENCY);


    PVector first_ap1 = A;      
    PVector first_ap2 = B;
    PVector first_cp1 = new PVector(lerp(first_ap1.x, first_ap2.x, AMT_ANGLE_SMOOTHNESS), first_ap1.y);
    PVector first_cp2 = B;


    PVector second_ap1 = C;
    PVector second_ap2 = D;
    PVector second_cp1 = C;
    PVector second_cp2 = new PVector(lerp(second_ap2.x, second_ap1.x, AMT_ANGLE_SMOOTHNESS), second_ap2.y);


    beginShape();
    vertex(first_ap1.x, first_ap1.y);
    bezierVertex(first_cp1.x, first_cp1.y, first_cp2.x, first_cp2.y, first_ap2.x, first_ap2.y);
    vertex(second_ap1.x, second_ap1.y);
    bezierVertex(second_cp1.x, second_cp1.y, second_cp2.x, second_cp2.y, second_ap2.x, second_ap2.y);
    endShape();



    if (debug) {
      noStroke();
      fill(0);

      ellipse(A.x, A.y, 5, 5);
      ellipse(B.x, B.y, 5, 5);
      ellipse(C.x, C.y, 5, 5);
      ellipse(D.x, D.y, 5, 5);

      noFill();
      stroke(0);
      line(first_ap1.x, first_ap1.y, first_cp1.x, first_cp1.y);
      line(second_ap2.x, second_ap2.y, second_cp2.x, second_cp2.y);
    }
  }
}



///////////////////////////////////////////////////////////////

class StemArcRightDown {
  PVector start, end;
  PVector A, B, C, D;

  Handler HandlerVert;
  Handler HandlerLimitVert;

  PVector weight;

  StemArcRightDown(PVector _start, PVector _end, Handler _vert, Handler _limitVert, PVector _weight) {
    start = _start;
    end = _end;
    HandlerVert = _vert;
    HandlerLimitVert= _limitVert;

    weight = _weight;

    A = _start;
    D = _end;
    B = new PVector(0, 0);
    C = new PVector(0, 0);
  }

  void update() {
    A = start;
    D = end;
    B .set(HandlerVert.A.x, HandlerVert.A.x-A.x+A.y); // HandlerVert.A.y-A.y+A.x
    C .set(HandlerVert.A.x-weight.x, HandlerVert.A.x-A.x+A.y);

    if (B.y > HandlerLimitVert.A.y) {

      B .set(A.x+((HandlerLimitVert.A.y-A.y)), HandlerLimitVert.A.y);
      C .set(B.x-weight.x, HandlerLimitVert.A.y);
    }
    show();
  }
  void show() {

    //noFill();
    //stroke(colorBodyArc);

    noStroke();
    fill(colorBodyArc, TRANSPARENCY);


    PVector first_ap1 = A;      
    PVector first_ap2 = B;
    PVector first_cp1 = new PVector(lerp(first_ap1.x, first_ap2.x, AMT_ANGLE_SMOOTHNESS), first_ap1.y);
    PVector first_cp2 = B;


    PVector second_ap1 = C;
    PVector second_ap2 = D;
    PVector second_cp1 = C;
    PVector second_cp2 = new PVector(lerp(second_ap2.x, second_ap1.x, AMT_ANGLE_SMOOTHNESS), second_ap2.y);

    beginShape();
    vertex(first_ap1.x, first_ap1.y);
    bezierVertex(first_cp1.x, first_cp1.y, first_cp2.x, first_cp2.y, first_ap2.x, first_ap2.y);
    vertex(second_ap1.x, second_ap1.y);
    bezierVertex(second_cp1.x, second_cp1.y, second_cp2.x, second_cp2.y, second_ap2.x, second_ap2.y);
    endShape();

    if (debug) {
      noStroke();
      fill(0);

      ellipse(A.x, A.y, 5, 5);
      ellipse(B.x, B.y, 5, 5);
      ellipse(C.x, C.y, 5, 5);
      ellipse(D.x, D.y, 5, 5);

      noFill();
      stroke(0);
      line(first_ap1.x, first_ap1.y, first_cp1.x, first_cp1.y);
      line(second_ap2.x, second_ap2.y, second_cp2.x, second_cp2.y);
    }
  }
}




///////////////////////////////////////////////////////////////

class StemArcRightDownFromTop {
  PVector start, end;
  PVector A, B, C, D;

  Handler HandlerVert;
  Handler HandlerLimitVert;

  PVector weight;

  StemArcRightDownFromTop(PVector _start, PVector _end, Handler _vert, Handler _limitVert, PVector _weight) {
    start = _start;
    end = _end;
    HandlerVert = _vert;
    HandlerLimitVert= _limitVert;

    weight = _weight;

    A = _start;
    D = _end;
    B = new PVector(0, 0);
    C = new PVector(0, 0);
  }

  void update() {
    A = start;
    D = end;
    B .set((HandlerVert.A.y-A.y), HandlerVert.A.y-weight.y);
    C .set((HandlerVert.A.y-A.y), HandlerVert.A.y);

    if (B.x > HandlerLimitVert.A.x) {
      B .set(HandlerLimitVert.A.x, A.y+(HandlerLimitVert.A.x-A.x));
      C .set(HandlerLimitVert.A.x, A.y+(HandlerLimitVert.A.x-A.x)+weight.y);
    }
    show();
  }
  void show() {

    //noFill();
    //stroke(colorBodyArc);

    noStroke();
    fill(colorBodyArc, TRANSPARENCY);


    PVector first_ap1 = A;      
    PVector first_ap2 = B;
    PVector first_cp1 = new PVector( first_ap1.x, lerp(first_ap1.y, first_ap2.y, AMT_ANGLE_SMOOTHNESS));
    PVector first_cp2 = B;


    PVector second_ap1 = C;
    PVector second_ap2 = D;
    PVector second_cp1 = C;
    PVector second_cp2 = new PVector( second_ap2.x, lerp(second_ap2.y, second_ap1.y, AMT_ANGLE_SMOOTHNESS));

    beginShape();
    vertex(first_ap1.x, first_ap1.y);
    bezierVertex(first_cp1.x, first_cp1.y, first_cp2.x, first_cp2.y, first_ap2.x, first_ap2.y);
    vertex(second_ap1.x, second_ap1.y);
    bezierVertex(second_cp1.x, second_cp1.y, second_cp2.x, second_cp2.y, second_ap2.x, second_ap2.y);
    endShape();

    if (debug) {
      noStroke();
      fill(0);

      ellipse(A.x, A.y, 5, 5);
      ellipse(B.x, B.y, 5, 5);
      ellipse(C.x, C.y, 5, 5);
      ellipse(D.x, D.y, 5, 5);

      noFill();
      stroke(0);
      line(first_ap1.x, first_ap1.y, first_cp1.x, first_cp1.y);
      line(second_ap2.x, second_ap2.y, second_cp2.x, second_cp2.y);
    }
  }
}

///////////////////////////////////////////////////////////////

class StemArcLeftDownFromTop {
  PVector start, end;
  PVector A, B, C, D;

  Handler HandlerVert;
  Handler HandlerLimitVert;

  PVector weight;

  StemArcLeftDownFromTop(PVector _start, PVector _end, Handler _vert, Handler _limitVert, PVector _weight) {
    start = _start;
    end = _end;
    HandlerVert = _vert;
    HandlerLimitVert= _limitVert;

    weight = _weight;

    A = _start;
    D = _end;
    B = new PVector(0, 0);
    C = new PVector(0, 0);
  }

  void update() {
    A = start;
    D = end;
    B .set(A.x-(HandlerVert.A.y-A.y)+weight.x, HandlerVert.A.y-weight.y);
    C .set(A.x-(HandlerVert.A.y-A.y)+weight.x, HandlerVert.A.y);

    if (B.x < HandlerLimitVert.A.x) {
      B .set(HandlerLimitVert.A.x, A.y-(HandlerLimitVert.A.x-A.x));
      C .set(HandlerLimitVert.A.x, A.y-(HandlerLimitVert.A.x-A.x)+weight.y);
    }
    show();
  }
  void show() {

    //noFill();
    //stroke(colorBodyArc);

    noStroke();
    fill(colorBodyArc, TRANSPARENCY);


    PVector first_ap1 = A;      
    PVector first_ap2 = B;
    PVector first_cp1 = new PVector( first_ap1.x, lerp(first_ap1.y, first_ap2.y, AMT_ANGLE_SMOOTHNESS));
    PVector first_cp2 = B;


    PVector second_ap1 = C;
    PVector second_ap2 = D;
    PVector second_cp1 = C;
    PVector second_cp2 = new PVector( second_ap2.x, lerp(second_ap2.y, second_ap1.y, AMT_ANGLE_SMOOTHNESS));

    beginShape();
    vertex(first_ap1.x, first_ap1.y);
    bezierVertex(first_cp1.x, first_cp1.y, first_cp2.x, first_cp2.y, first_ap2.x, first_ap2.y);
    vertex(second_ap1.x, second_ap1.y);
    bezierVertex(second_cp1.x, second_cp1.y, second_cp2.x, second_cp2.y, second_ap2.x, second_ap2.y);
    endShape();

    if (debug) {
      noStroke();
      fill(0);

      ellipse(A.x, A.y, 5, 5);
      ellipse(B.x, B.y, 5, 5);
      ellipse(C.x, C.y, 5, 5);
      ellipse(D.x, D.y, 5, 5);

      noFill();
      stroke(0);
      line(first_ap1.x, first_ap1.y, first_cp1.x, first_cp1.y);
      line(second_ap2.x, second_ap2.y, second_cp2.x, second_cp2.y);
    }
  }
}

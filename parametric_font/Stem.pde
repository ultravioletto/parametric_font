class StemFiller extends Stem {
  StemFiller() {

    super();
  }
  StemFiller(PVector _A, PVector _B, PVector _C, PVector _D) {
    super( _A, _B, _C, _D);
    A = _A;
    B = _B;
    C = _C;
    D = _D;
  }
  void update(PVector _A, PVector _B, PVector _C, PVector _D) {
    A = _A;
    B = _B;
    C = _C;
    D = _D;
    show();
  }

  void update() {
    show();
  }

  void show() {

    noStroke();
    fill(colorBodyFiller, TRANSPARENCY);
    if (debug) {
      ellipse(A.x, A.y, 4, 4);
      ellipse(B.x, B.y, 4, 4);
      ellipse(C.x, C.y, 4, 4);
      ellipse(D.x, D.y, 4, 4);
    }
    beginShape();
    vertex(A.x, A.y);
    vertex(B.x, B.y);
    vertex(C.x, C.y);
    vertex(D.x, D.y);
    endShape(CLOSE);
  }
}

class StemVertical extends Stem {
  float offset;


  StemVertical(Handler _handlerTop, Handler _handlerBottom, Handler _handlerHorizPos, PVector _weight, float _offset) {
    super( _handlerTop, _handlerBottom, _handlerHorizPos, _weight);
    offset = _offset;
    A = new PVector(_handlerHorizPos.A.x, _handlerTop.A.y);
    B = new PVector(_handlerHorizPos.A.x + weight.x + offset, _handlerTop.A.y);
    C = new PVector(_handlerHorizPos.A.x + weight.x + offset, _handlerBottom.A.y );
    D = new PVector(_handlerHorizPos.A.x, _handlerBottom.A.y);
  }

  void update() {

    A.set(handlerC.A.x, handlerA.A.y);
    B.set(handlerC.A.x + (weight.x * offset), handlerA.A.y);
    C.set(handlerC.A.x + (weight.x * offset), handlerB.A.y);
    D.set(handlerC.A.x, handlerB.A.y);
    show();
  }

  void show() {
    noStroke();
    fill(colorBodyVertical, TRANSPARENCY);

    beginShape();
    vertex(A.x, A.y);
    vertex(B.x, B.y);
    vertex(C.x, C.y);
    vertex(D.x, D.y);
    endShape(CLOSE);
  }
}

class StemHorizontal extends Stem {

  float offset;

  StemHorizontal(Handler _handlerA, Handler _handlerB, Handler _handlerC, PVector _weight, float _offset) {

    super( _handlerA, _handlerB, _handlerC, _weight);
    offset = _offset;
    A = new PVector(handlerA.A.x, handlerC.A.y + ( weight.y * offset ));
    B = new PVector(handlerB.A.x, handlerC.A.y + ( weight.y * offset ));
    C = new PVector(handlerB.A.x, handlerC.A.y + weight.y + ( weight.y * offset ) );
    D = new PVector(handlerA.A.x, handlerC.A.y + weight.y + ( weight.y * offset ) );
  }

  void update() {

    A.set(handlerA.A.x, handlerC.A.y + ( weight.y * offset ) );
    B.set(handlerB.A.x, handlerC.A.y + ( weight.y * offset ));
    C.set(handlerB.A.x, handlerC.A.y + weight.y + ( weight.y * offset ) );
    D.set(handlerA.A.x, handlerC.A.y + weight.y + ( weight.y * offset ) );
    show();
  }

  void show() {
    noStroke();
    fill(colorBodyHoriz, TRANSPARENCY);

    beginShape();
    vertex(A.x, A.y);
    vertex(B.x, B.y);
    vertex(C.x, C.y);
    vertex(D.x, D.y);
    endShape(CLOSE);
  }
}

class Stem {
  PVector A, B, C, D;
  PVector weight;

  Handler handlerA, handlerB, handlerC;

  Stem(Handler _handlerA, Handler _handlerB, Handler _handlerC, PVector _weight) {
    handlerA = _handlerA; 
    handlerB = _handlerB;
    handlerC = _handlerC;
    weight = _weight;
  }

  Stem(PVector _A, PVector _B, PVector _C, PVector _D) {

    A = _A;
    B = _B;
    C = _C;
    D = _D;
  }
  Stem() {

    A = new PVector();
    B = new PVector();
    C = new PVector();
    D = new PVector();
  }
}

class StemSlantDown {
  PVector A, B, C, D;
  PVector weight;

  Handler top;
  Handler right;
  Handler bottom;
  Handler left;

  StemSlantDown(Handler _top, Handler _right, Handler _bottom, Handler _left, PVector _weight) {

    top = _top;
    right = _right;
    bottom = _bottom;
    left = _left;
    weight = _weight;

    A = new PVector(left.A.x, top.A.y);
    B = new PVector(A.x+weight.x, A.y);
    C = new PVector(right.A.x, bottom.A.y);
    D = new PVector(C.x-weight.x, C.y);
    
  }
  void update(){
  A.set(left.A.x, top.A.y);
    B.set(A.x+weight.x, A.y);
    C.set(right.A.x, bottom.A.y);
    D.set(C.x-weight.x, C.y);
  show();
  }
  
 void show() {
    noStroke();
    fill(colorBodySlant, TRANSPARENCY);

    beginShape();
    vertex(A.x, A.y);
    vertex(B.x, B.y);
    vertex(C.x, C.y);
    vertex(D.x, D.y);
    endShape(CLOSE);
  }
}

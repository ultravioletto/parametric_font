/*-------------------------------------------------------------------
HANDLER è un segmento orizzontale o verticale.
per creare un handler si passano 2 punti originA e originB un moltiplicatore e un offset
originA e originB definiscono i 2 punti del segmento
multiplier è un rapporto su asse x o y che deve subire l'handler ovvero uno spostamento 
offeset è uno scostamento dall'origine che deve avere l'handler

---------------------------------------------------------------------*/


class Handler {
  PVector originA, originB;
  PVector A, B;
  PVector multiplier;
  float offsetX, offsetY;
  Handler HandlerFirst;
  Handler HandlerSecond;



  Handler(  Handler _first, Handler _second, float _offsetX, float _offsetY) {
    HandlerFirst = _first;
    HandlerSecond = _second;
    offsetX  =_offsetX;
    offsetY = _offsetY;
     A = PVector.lerp(HandlerFirst.A, HandlerSecond.A, .5);
      B = PVector.lerp(HandlerFirst.B, HandlerSecond.B, .5);
  }

  Handler(PVector _A, PVector _B, PVector _multiplier, float _offsetX, float _offsetY) {
    multiplier = _multiplier;
    offsetX  =_offsetX;
    offsetY = _offsetY;
    originA = _A;
    originB = _B;

    A = new PVector(originA.x * multiplier.x + offsetX, originA.y * multiplier.y + offsetY);
    B = new PVector(originB.x * multiplier.x + offsetX, originB.y * multiplier.y + offsetY);

    //  A = _A;
    //  B = _B;
  }
  void update(PVector _A, PVector _B) {
    A .set( _A);
    B .set( _B.x, _B.y);
        //  stroke(int(random(255)));

   if(debug) show();
  }
  void update() {
    if (HandlerFirst == null) {
      A.set(originA.x * multiplier.x + offsetX, originA.y * multiplier.y + offsetY);
      B.set(originB.x * multiplier.x + offsetX, originB.y * multiplier.y + offsetY);
      stroke(#FC0000);
    } else {
      A = PVector.lerp(HandlerFirst.A, HandlerSecond.A, .5);
      B = PVector.lerp(HandlerFirst.B, HandlerSecond.B, .5);
        
      A.set(A.x, A.y + (stemWeight.y*offsetY));
      B.set(B.x, B.y + (stemWeight.y*offsetY));
      stroke(#8BCEFF);
    }
   if(debug)  show();
  }

  void show() {
    noFill();
    strokeWeight(1);
    
    line(A.x, A.y, B.x, B.y);
  }
}

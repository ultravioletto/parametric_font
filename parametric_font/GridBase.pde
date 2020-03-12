/*-------------------------------------------------------------------

GRIDBASE è l'oggetto  che contiene la geometria del glifo. In questyo stato
dello sviluppo prende larghezza e altezza da 2 variabili globali:

GLIPH_W;
GLIPH_H;

---------------------------------------------------------------------*/



class GridBase {
  
  PVector A, B, C, D;

  GridBase() {
   
    A = new PVector (0 , 0 );
    B = new PVector (GLIPH_W , 0 );
    C = new PVector (GLIPH_W , GLIPH_H );
    D = new PVector (0 , GLIPH_H );
  }


  void show() {  
    
     noFill();
    strokeWeight(1);
    stroke(colorGuides);
    
     A.set (0 ,0);
     B.set (GLIPH_W , 0 );
     C.set (GLIPH_W , GLIPH_H );
     D.set (0 , GLIPH_H );
    
    
    beginShape();
      vertex(A.x, A.y);
      vertex(B.x, B.y);
      vertex(C.x, C.y);
      vertex(D.x, D.y);
    endShape(CLOSE);
    
  }
}

 //<>//

/*-------------------------------------------------------------------

GLIPH è la base per disegnare i caratteri.
È fondamentalemnte un rettangolo con 4 angoli definiti da 4 PVector
A - B - C - D. Una volta definiti questi punti si crea la GridBase
che conterrà tutti gli elementi del glifo.

---------------------------------------------------------------------*/


class Gliph {
  PVector A, B, C, D;  // PVector che definiscono i 4 angoli ( sempre ortognonali tra loro)

  float x, y;     // posizione del glifo NON USATA AL MOMENTO
  GridBase grid;   // oggetto che contiene la geometria del glifo ( FORSE È RIDONTANTE )


  Gliph() {
    grid = new GridBase();
    A = grid.A;
    B = grid.B;
    C = grid.C;
    D = grid.D;
  }


  void show() {   
    // DA IMPLEMENTARE UN CONTROLLO PER VISUALIZZARE O NO LA GRIGLIA DI BASE
    grid.show(); // MOSTRA LA GRIGLIA DI BASE 
  }
}

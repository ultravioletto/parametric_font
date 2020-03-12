// this is a function that calculate athe intersection point bethween 2 segments. 
// you have to pass 4 PVector 2 for segment a 2 for segment b
//  it returns the intersection point as PVector 
//


PVector lineIntersect(
  PVector p0, PVector p1, // line A coords
  PVector p2, PVector p3) // line B coords
{
  float
    a1 = p1.y - p0.y, 
    b1 = p0.x - p1.x, 
    c1 = a1*p0.x + b1*p0.y, 

    a2 = p3.y - p2.y, 
    b2 = p2.x - p3.x, 
    c2 = a2*p2.x + b2*p2.y, 

    d = a1*b2 - a2*b1;

  return new PVector ( (b2*c1 - b1*c2) / d, (a1*c2 - a2*c1) / d );
}

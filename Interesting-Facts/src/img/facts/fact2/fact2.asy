import geometry;
size(5cm);

circle w = circle((point)(0, 0), 1);
point o = w.C;
var r = w.r;
point A = (o.x + r + 0.2, o.y + r + 0.4); 
point C = (o.x - r - 0.5, o.y - r + 0.4); 

line a1 = tangents(w, A)[0];
line a2 = tangents(w, A)[1];

line c1 = tangents(w, C)[0];
line c2 = tangents(w, C)[1];

point B = intersectionpoint(a1, c1);
point D = intersectionpoint(a2, c2);

//draw

draw(w, linewidth(0.3) + dashed);

dot("$A$", A, NE);
dot("$B$", B, SE);
dot("$C$", C, SW);
dot("$D$", D, NW);


draw(segment(A, B));
draw(segment(C, B));
draw(segment(C, D));
draw(segment(A, D));

draw(segment(B, D));
//draw(segment(A, C));

draw(incircle(A, B, D));
draw(incircle(C, B, D));

  

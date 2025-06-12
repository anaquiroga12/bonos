//crear canva
background (255);
size(500,500);

//punto
//      x1, x2
point(240, 200);

// Linea
fill (10,10,200);
line (10, 15, 100, 200);

// circulo
fill (200,40,10);
//        x    y  ancho alto
ellipse (250, 250, 100, 100); 

//triangulo
fill (120,200,40);
//         x1, y1
triangle(0, 0, 50, 30, 150, 200);

//rectangulo
fill (100,100,100);
rect(100, 200, 100, 200);

//cuadrado
fill (40,79,100);
square (100,100,100);

//arco
fill (120,130,30);
arc(220, 110, 200, 320, 0, QUARTER_PI, 40);

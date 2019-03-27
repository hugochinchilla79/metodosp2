fprintf('METODO ADAPTATIVO DE CUADRATURA\n');
syms x;
syms y;

f = input('Ingrese funcion integrando: ');
a = input('Ingrese a: ');
b = input('Ingrese b: ');

h = (2*(b-a))/4;

p1 = (h/6)*(  subs(f,a) + 4*subs(f,a + (h/2)) + subs(f,a+h) );
p2 = (h/6)*( subs(f,a+h) + 4*subs(f,a + ((3*h)/2)) + subs(f,b) );

r = p1 + p2;

fprintf('El valor aproximado es de: %9.15f\n', double(r));
fprintf('El valor real es de: %9.15f\n', double(int(f,x,a,b)));
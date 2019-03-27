syms x;
f = input('Ingrese la funcion a derivar f(x): ');
x0 = input('Ingrese punto a evaluar en primera derivada: ');
h = input('Ingrese h: ');
op = input('Ingrese opcion\n 1. Diferencia progresiva\n 2. 3 puntos 3 terminos \n 3. 3 puntos 2 terminos \n 4. 5 puntos 5 terminos \n. 5. 5 puntos 4 terminos \n 6. Segunda derivada \n 7. Richardson ');

switch op 
    case 1
        r = (subs(f,x0+h) - subs(f,x0))/h;
    case 2
        r = (1/(2*h))*(-3*subs(f,x0) + 4*subs(f,x0+h) - subs(f,x0+2*h));
    case 3
        r = (1/(2*h))*(subs(f,x0+h) - subs(f,x0-h));
    case 4
        r = (1/(12*h))*(-25*subs(f,x0) + 48*subs(f,x0+h) - 36*subs(f,x0+2*h) + 16*subs(f,x0+3*h) -3*subs(f,x0+4*h));
    case 5
        r = (1/(12*h))*(subs(f,x0-2*h) - 8*subs(f,x0-h) + 8*subs(f,x0+h) - subs(f,x0+2*h));
    case 6
        r = (1/h^2)*(subs(f,x0-h) -2*subs(f,x0) + subs(f,x0+h));
    case 7
        n = input('ingrese el N de richardson: ');
        m = zeros(n);
        
        for i=1:n 
           if i==1 
            h0 = h;
           else
             h0 = h0*(1/2);

           end
           m(i,1) = (1/(2*h0))*(subs(f,x0+h0) - subs(f,x0-h0));
        end


        for j=2:n
            for i=j:n
                m(i,j) = m(i,j-1) + ( ((m(i,j-1) - m(i-1,j-1)) / (4^(j-1) - 1) ) );
            end
        end
        r = m(n,n);
end


if op==6
   g = diff(f,x,2);
else
   g = diff(f,x,1);
end


fprintf('El valor aproximado es: %9.15f\n', double(r));
fprintf('El valor real es: %9.15f\n', double(subs(g,x0)));



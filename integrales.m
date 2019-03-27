fprintf('Integrales por formulas de Newton Cotes y otras\n');
syms x;


f = input('Ingrese funcion integrando: ');
a = input('Ingrese a: ');
b = input('Ingrese b: ');



fprintf('1. FORMULAS ABIERTAS DE NEWTON COTES\n');
fprintf('2. FORMULAS CERRADAS DE NEWTON COTES\n');
fprintf('3. FORMULAS COMPUESTAS\n');
op = input('Ingrese opcion:\t');

switch op 
    case 1
        fprintf('0. n=0 regla del punto medio\n');
        fprintf('1. n=1\n');
        fprintf('2. n=2\n');
        fprintf('3. n=3\n');
        
        op2 = input('Ingrese opcion: \t');
        n = op2;
        h = (b-a)/(n+2);
        switch op2 
            case 0
                r = (2*h)*(subs(f,a+h));
            case 1
                r = ((3*h)/2)*(subs(f,a+h) + subs(f,a+2*h));
            case 2
                r = ((4*h)/3)*(2*subs(f,a+h) - subs(f,a+2*h) + 2*subs(f,a+3*h));
            case 3
                r = ((5*h)/24)*(11*subs(f,a+h) + subs(f,a+2*h) + subs(f,a+3*h) + 11*subs(f,a+4*h));
        end
        
    case 2 
        fprintf('1. n=1 Regla del trapecio\n');
        fprintf('2. n=2 Regla de simpson\n');
        fprintf('3. n=3 Regla de 3/8 de simpson\n');
        fprintf('4. n=4 Regla de boole');
      
        op2 = input('Ingrese opcion: \t');
        
        n = op2;
        
        h = (b-a)/n;
        
        switch op2
            case 1
                r = (h/2)*(subs(f,a)+ subs(f,b));
            case 2
                r = (h/3)*(subs(f,a) + 4*subs(f,a+h) + subs(f,b));
            case 3
                r = ((3*h)/8)*(subs(f,a) + 3*subs(f,a+h) + 3*subs(f,a+2*h) + subs(f,b));
            case 4
                r = ((2*h)/45)*(7*subs(f,a) + 32*subs(f,a+h) + 12*subs(f,a+2*h) + 32*subs(f,a+3*h) + 7*subs(f,b));
        end
        
    case 3
        fprintf('1. Regla compuesta del trapecio\n'); 
        fprintf('2. Regla compuesta de simpson\n');
        fprintf('3. Regla compuesta del punto medio\n');
        
        op2 = input('Ingrese opcion: ');
        n = input('Ingrese n: ');
        
        switch op2
            case 1
                h = (b-a)/n;
                xs = zeros(n);
                xs(1,1) = a;
                xs(n,1) = b;
                sum = 0;
                for i=2:n
                    xs(i,1) = xs(i-1,1) + h;
                    sum = sum + subs(f,xs(i,1));
                end
                r = (h/2)*(subs(f,a) + 2*sum + subs(f,b));
                
            case 2
                h = (b-a)/n;
                xs = zeros(n);
                xs(1,1) = a;
                xs(n,1) = b;
                sum1 = 0;
                sum2 = 0;
                for i=2:n
                    xs(i,1) = xs(i-1,1) + h;
                end
                                
                for i=2:((n/2))
                    sum1 = sum1 + subs(f,xs((2*i)-1,1));
                end
                
                for i=1:(n/2)
                    sum2 = sum2 + subs(f,xs((2*i),1));
                end
                
                r = (h/3)*(subs(f,a) + 2*sum1 + 4*sum2 + subs(f,b));
            case 3
                h = (b-a)/(n+2);
                xs = zeros(n);
                xs(1,1) = a + h;
                xs(n,1) = b - h;
                sum = 0;
                
                for i=1:(n/2)
                   sum = sum + subs(f,xs((2*i)-1,1));
                end
                
                                   
                r = (2*h)*(sum);
        end
end

fprintf('El valor exacto de la integral es: %9.15f\n', double(int(f,x,a,b)));
fprintf('El valor aproximado de la integral es: %9.15f\n', double(r));



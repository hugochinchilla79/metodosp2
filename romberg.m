fprintf('INTEGRACION DE ROMBERG\n');

syms x;

f = input('Ingrese funcion integrando: ');
n = input('Ingrese n de R(n,n): ');
a = input('Ingrese a: ');
b = input('Ingrese b: ');


r = zeros(n);
h = zeros(n);

for i=1:n
   h(i,1) = (b-a)/(2^(i-1));
end

h

r(1,1) = (h(1,1)/2)*(subs(f,a) + subs(f,b));

for i=2:n
   
   ELIMIT = 2^(i-2);
   sum = 0;
   char = '';
   for j=1:ELIMIT
      sum = sum + subs(f,a + (((2*j)-1)*h(i,1)) );
      if j<ELIMIT
         actual = fprintf('f(a + %i(h(%i))) +', ((2*j)-1), i);
      else
         actual = fprintf('f(a + %i(h(%i)))', ((2*j)-1), i);
      end
     
      char = strcat(char, actual);
      
   end
   fprintf(char);
   fprintf('\n');
   
    fprintf('suma igual a %9.15f\n', double(sum));
   r(i,1) = (1/2)*(r(i-1,1) + h(i-1,1)*(sum));
end

for j=2:n
    for i=j:n
        r(i,j) = r(i,j-1) + ((r(i,j-1) - r(i-1,j-1)) / (4^(j-1) - 1) );
    end
end

r

fprintf('El valor aproximado es de: %9.15f\n', double(r(n,n)));
fprintf('El valor real es de: %9.15f\n', double(int(f,x,a,b)));

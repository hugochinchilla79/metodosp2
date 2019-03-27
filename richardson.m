syms x;
syms y;


n = input('ingrese el N de richardson: ');
f = input('ingrese funcion de x: ');
h = input('ingrese h: ');
x0 = input('ingrese x0: ');

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


m

%fprintf('El valor aproximado es de: %9.15f', m(n,n));
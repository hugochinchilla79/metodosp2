syms x;

p = zeros(13);

f0 = 1;
f1 = x;
f2 = x^2 - (1/3);
f3 = x^3 - (3/5)*x;
f4 = x^4 - (6/7)*x^2 + 3/35;
f5 = x^5 - (10/9)*x^3 + (5/21)*x;
f6 = x^6 - (15/11)*x^4 + (5/11)*x^2 - (5/231);
f7 = x^7 - (21/13)*x^5 + (105/143)*x^3 - (35/429)*x;
f8 = x^8 - (28/15)*x^6 + (14/13)*x^4 - (28/143)*x^2 + (7/1287);
f9 = x^9 - (36/17)*x^7 + (126/85)*x^5 - (84/221)*x^3 + (63/2431)*x;
f10 = x^10 - (45/19)*x^8 + (630/323)*x^6 - (210/323)*x^4 + (315/4199)*x^2 - (63/46189);
f11 = x^11 - (55/21)*x^9 + (330/133)*x^7 - (330/323)*x^5 + (55/323)*x^3 - (33/4199)*x;
f12 = x^12 - (66/23)*x^10 + (495/161)*x^8 - (660/437)*x^6 + (2475/7429)*x^4 - (198/7429)*x^2 + (33/96577);
f13 = x^13 - (78/25)*x^11 + (429/115)*x^9 - (1716/805)*x^7 + (1287/2185)*x^5 - (2574/37145)*x^3 + (429/185725)*x;

fprintf('METODO DE CUADRATURA GAUSSIANA\n');
p = input('Ingrese Numero de polinomio a a usar en la cuadratura');


switch p 
    case 0
        leg = (solve(f0,x));
    case 1 
        leg = (solve(f1,x));
    case 2
        leg = (solve(f2,x));
    case 3
        leg = (solve(f3,x));
    case 4
        leg = (solve(f4,x));
    case 5
        leg = (solve(f5,x));
    case 6
        leg = (solve(f6,x));
    case 7
        leg = (solve(f7,x));
    case 8
        leg = (solve(f8,x));
    case 9
        leg = (solve(f9,x));
    case 10
        leg = (solve(f10,x));
    case 11
        leg = (solve(f11,x));
    case 12
        leg = (solve(f12,x));
    case 13
        leg = (solve(f13,x));
end


legrendelength = size(leg);
ci = zeros(legrendelength);


for i=1:legrendelength 
    
   numerator = 1;
   denominator = 1;
   for j=1:legrendelength
       if i ~= j 
         numerator = numerator*(x-leg(j,1));
         denominator = denominator*(leg(i,1)-leg(j,1));
       end
   end
   ftemp = numerator/denominator
   ci(i,1) = int(ftemp,x,-1,1);
   
end

ci



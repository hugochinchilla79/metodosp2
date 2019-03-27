%%x=input(': ');
%%y=x;
%%fprintf('\n\n %.9f () equivalen a %.9f (kg). \n\n', double(x),double(y))


clear
clc
fprintf('Conversi�n de sistemas varios a sistema internacional.\n\n');
fprintf('1. Longitud.\n2. �rea.\n3. Masa.\n4. Volumen. \n5. Temperatura. \n6. Fuerza. \n7. Presi�n.\n8. Energ�a y Potencia.\n');
opcion = input('\nIngrese el n�mero de opci�n deseada: ');

switch opcion
    case 1
        clc
        fprintf('1. in->m \n2. ft->m \n3. yd->m \n4. mi->km \n5. �->m \n6. mm-->m \n7. A�o luz->m \n\n');
        sel1 = input('\Ingrese el n�mero de opci�n deseada: ');
        
        switch sel1
            case 1
                clc
                x=input('in: ');
                y=x*0.0254;
                fprintf('\n\n %.9f (in) equivalen a %.9f (m).\n\n' ,double(x),double(y))
            case 2
                clc
                x=input('ft: ');
                y=x*0.3048;
                fprintf('\n\n %.9f (ft) equivalen a %.9f (m).\n\n' ,double(x),double(y))
            case 3
                clc
                x=input('yd: ');
                y=x*0.9144;
                fprintf('\n\n %.9f (yd) equivalen a %.9f (m).\n\n' ,double(x),double(y))
            case 4
                clc
                x=input('mi: ');
                y=x*1609.34;
                fprintf('\n\n %.9f (mi) equivalen a %.9f (m).\n\n' ,double(x),double(y))
            case 5
                clc
                x=input('�: ');
                y=x*0.000000000100;
                fprintf('\n\n %.9f (�) equivalen a %.9f (m).\n\n' ,double(x),double(y))
            case 6
                clc
                x=input('mm: ');
                y=x*0.001;
                fprintf('\n\n %.9f (mm) equivalen a %.9f (m).\n\n' ,double(x),double(y))
            case 7
                clc
                x=input('A�os luz: ');
                y=x/0.00000000000000010570;
                fprintf('\n\n %.9f (A.Luz) equivalen a %.9e (m), � %.15f (m).\n\n' ,double(x),double(y),double(y))                
        end
    case 2
        clc
        fprintf('1. ft�->m�.\n2. plg�->m�.\n3. cm�->m�.\n4. mm�->m�\n');
        sel3 = input('\nIngrese el n�mero de opci�n deseada: ');
        
switch sel3
    case 1
        x=input('ft�: ');
        y=x*0.092903;
        fprintf('\n\n %.9f (ft�) equivalen a %.9f (m�). \n\n', double(x),double(y))
    case 2
        x=input('plg�: ');
        y=x*0.00064516;
        fprintf('\n\n %.9f (plg�) equivalen a %.9f (m�). \n\n', double(x),double(y))
    case 3
        x=input('cm�: ');
        y=x*0.0001;
        fprintf('\n\n %.9f (cm�) equivalen a %.9f (m�). \n\n', double(x),double(y))
    case 4
        x=input('mm�: ');
        y=x*0.000001;
        fprintf('\n\n %.9f (mm�) equivalen a %.9f (m�). \n\n', double(x),double(y))
end
    case 3
        clc
        fprintf('1. Ton->kg \n2. slug->kg \n3. oz->kg \n4. lb->kg\n5. Quintal->kg\n6. @->kg\n\n');
        sel2 = input('\Ingrese el n�mero de opci�n deseada: ');
        
        switch sel2
            case 1
                clc
                x=input('Toneladas: ');
                y=x*1000;
                fprintf('\n\n %.9f (Ton) equivalen a %.9f (kg). \n\n', double(x),double(y))
            
            case 2
                clc
                x=input('Slug: ');
                y=x*14.5939;
                fprintf('\n\n %.9f (slug) equivalen a %.9f (kg). \n\n',double(x), double(y))
            case 3
                clc
                x=input('oz: ');
                y=x*0.0283495;
                fprintf('\n\n %.9f (oz) equivalen a %.9f (kg). \n\n',double(x), double(y))
            case 4
                clc
                x=input('lb: ');
                y=x*0.453592;
                fprintf('\n\n %.9f (lb) equivalen a %.9f (kg). \n\n',double(x), double(y))
            case 5
                clc
                x=input('Quintal: ');
                y=x*100;
                fprintf('\n\n %.9f (Quintal) equivalen a %.9f (kg). \n\n',double(x), double(y))
            case 6
                clc
                x=input('@: ');
                y=x*11.339;
                fprintf('\n\n %.9f (@) equivalen a %.9f (kg). \n\n',double(x), double(y))
        end            
    case 4
        clc
        fprintf('1. cm�->m� \n2. mm�->m� \n3. ft�->m� \n4. plg�->m�\n5. lt->m�\n6. Gal->m�\n\n');
        sel2 = input('\Ingrese el n�mero de opci�n deseada: ');
        switch sel2
            case 1
                clc
                x=input('cm�: ');
                y=x*1e-6;
                fprintf('\n\n %.9f (cm�) equivalen a %.9f (m�).\n\n' ,double(x),double(y))
            case 2
                clc
                x=input('mm�: ');
                y=x*1e-9;
                fprintf('\n\n %.9f (mm�) equivalen a %.9f (m�).\n\n' ,double(x),double(y))
            case 3
                clc
                x=input('ft�: ');
                y=x*0.0283168;
                fprintf('\n\n %.9f (ft�) equivalen a %.9f (m�).\n\n' ,double(x),double(y))
            case 4
                clc
                x=input('plg�: ');
                y=x*1.638706e-5;
                fprintf('\n\n %.9f (plg�) equivalen a %.9f (m�).\n\n' ,double(x),double(y))
            case 5
                clc
                x=input('Lt: ');
                y=x*0.001;
                fprintf('\n\n %.9f (Lt) equivalen a %.9f (m�).\n\n' ,double(x),double(y))
            case 6
                clc
                x=input('Gal: ');
                y=x*0.00378541;
                fprintf('\n\n %.9f (Gal) equivalen a %.9f (m�).\n\n' ,double(x),double(y))
        end                
    case 5
        clc
        fprintf('1. �F->�C\n2.  K->�C\n3. �F->K\n\n')
        sel3=input('Ingrese el n�mero de la opci�n deseada: ');
        switch sel3
        case 1
            clc
            x=input('�F: ');
            y=(x-32)/1.8;
            fprintf('\n\n %.9f (�F) equivalen a %.9f (�C). \n\n', double(x), double(y))
        case 2
            clc
            x=input('K: ');
            y=x+273.15;
            fprintf('\n\n %.9f (K) equivalen a %.9f (�C). \n\n', double(x), double(y))
        case 3
            clc
            x=input('�F: ');
            y=((5/9)*(x-32))+273.15;
            fprintf('\n\n %.9f (�F) equivalen a %.9f (K). \n\n', double(x), double(y))
        end
        
    case 6
        clc
        fprintf('1. lb->N \n2. Dina->N.\n\n');
        sel2 = input('\Ingrese el n�mero de opci�n deseada: ');
        switch sel2
            case 1
                clc
                x=input('lb: ');
                y=x*4.4482216152605;
                fprintf('\n\n %.9f (lb) equivalen a %.15f (N).\n\n' ,double(x),double(y))
            case 2
                clc
                x=input('Dina: ');
                y=x*1e-5;
                fprintf('\n\n %.9f (Dina) equivalen a %.9f (N).\n\n' ,double(x),double(y))            
        end
    case 7
        clc
        fprintf('1. bar->Pa \n2. atm->Pa.\n3. Psi->Pa\n\n');
        sel2 = input('\Ingrese el n�mero de opci�n deseada: ');
        switch sel2
            case 1
                clc
                x=input('bar: ');
                y=x*1e5;
                fprintf('\n\n %.9f (bar) equivalen a %.9f (Pa).\n\n' ,double(x),double(y))
                case 2
                clc
                x=input('atm: ');
                y=x*101324.9966;
                fprintf('\n\n %.9f (atm) equivalen a %.9f (Pa).\n\n' ,double(x),double(y))
                case 3
                clc
                x=input('Psi: ');
                y=x*6894.7591;
                fprintf('\n\n %.9f (Psi) equivalen a %.9f (Pa).\n\n' ,double(x),double(y))
        end    
    case 8        
        clc
        fprintf('1. cal->J \n2. BTU->J\n3. kW/h->J\n4. HP->kW\n5. W-J/s\n6. BTU/h->W\n\n');
        sel2 = input('\Ingrese el n�mero de opci�n deseada: ');
        switch sel2
            case 1
                clc
                x=input('cal: ');
                y=x*4.1868;
                fprintf('\n\n %.9f (cal) equivalen a %.9f (J).\n\n' ,double(x),double(y))
            case 2
                clc
                x=input('BTU: ');
                y=x*1055.05585262;
                fprintf('\n\n %.9f (BTU) equivalen a %.9f (J).\n\n' ,double(x),double(y))
            case 3
                clc
                x=input('kW/h: ');
                y=x*3.6e6;
                fprintf('\n\n %.9f (kW/h) equivalen a %.9f (J).\n\n' ,double(x),double(y))
            case 4
                clc
                x=input('HP: ');
                y=x*0.745699871;
                fprintf('\n\n %.9f (HP) equivalen a %.9f (kW).\n\n' ,double(x),double(y))
            case 5
                clc
                x=input('W: ');
                y=x*1;
                fprintf('\n\n %.9f (W) equivalen a %.9f (J/s).\n\n' ,double(x),double(y))
            case 6
                clc
                x=input('BTU/h: ');
                y=x*0.2929;
                fprintf('\n\n %.9f (BTU/h) equivalen a %.9f (W).\n\n' ,double(x),double(y))
        end
end
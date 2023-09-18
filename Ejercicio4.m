% Ejercicio 4
% Pablo Sotelo Abraham de Jesús
% Boleta: B230996
% Metodos Algebraicos para Robots

clc         %Limpiar pantalla
clear all   %Limpiar las variables
close       %Cerrar gráficas que existen
Tid=[1 0 0 0;
     0 1 0 0;
     0 0 1 0;
     0 0 0 1]; % Matriz identidad
A = Rot_X(20)
B = Rot_Y(35)
ABA = A*B
C = Rot_Z(65)
ABC = A*B*C
D = Rot_Z(15)
ABCD = A*B*C*D
% Se realiza la rotación en X, 20° 
for t=0:1:20
    clf
    line([0 5],[0,0],[0 0],'color','r') 
    line([0 0],[0,5],[0 0],'color','g') 
    line([0 0],[0,0],[0 5],'color','b')
    view(120,30)
    Tr1=Rot_X(t); % Se llama a la función de rotación en Z
    ejesmoviles(Tr1);
    pause(0.001)
end
pause() % Descomentar para ver posiciones
Tid=Tr1; %Se "guarda" la última posición
%Rotación en Y, de 35°
for t=0:1:35
    clf
    view(120,30)
    line([0 5],[0,0],[0 0],'color','r') 
    line([0 0],[0,5],[0 0],'color','g') 
    line([0 0],[0,0],[0 5],'color','b')
    Tr2=Tid*Rot_Y(t);
    ejesmoviles(Tr2);
    pause(0.001)
end
 pause() % Descomentar para ver posiciones
Tid2=Tr2; %Se "guarda" la última posición
%Rotación en Z, 65°
for t=0:1:30
    clf
    view(120,30)
    line([0 5],[0,0],[0 0],'color','r') 
    line([0 0],[0,5],[0 0],'color','g') 
    line([0 0],[0,0],[0 5],'color','b')
    Tr3=Tid2*Rot_Z(t);
    ejesmoviles(Tr3);
    pause(0.001)
end
 pause() % Descomentar para ver posiciones
Tid3=Tr3; %Se "guarda" la última posición
%Rotación en Z, 15°
for t=0:1:15
    clf
    view(120,30)
    line([0 5],[0,0],[0 0],'color','r') 
    line([0 0],[0,5],[0 0],'color','g') 
    line([0 0],[0,0],[0 5],'color','b')
    Tr4=Tid3*Rot_Z(t);
    ejesmoviles(Tr4);
    pause(0.001)
end


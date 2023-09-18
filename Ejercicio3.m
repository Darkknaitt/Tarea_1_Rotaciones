% Ejercicio 3
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
% Se realiza la rotación en Z, 45° 
for t=0:1:45
    clf
    line([0 5],[0,0],[0 0],'color','r') 
    line([0 0],[0,5],[0 0],'color','g') 
    line([0 0],[0,0],[0 5],'color','b')
    view(120,30)
    Tr1=Rot_Z(t); % Se llama a la función de rotación en Z
    ejesmoviles(Tr1);
    pause(0.001)
end
 pause() % Descomentar para ver posiciones
Tid=Tr1; %Se "guarda" la última posición
%Rotación en Y, de 30°
for t=0:1:30
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
%Rotación en X, 30°
for t=0:1:30
    clf
    view(120,30)
    line([0 5],[0,0],[0 0],'color','r') 
    line([0 0],[0,5],[0 0],'color','g') 
    line([0 0],[0,0],[0 5],'color','b')
    Tr3=Tid2*Rot_X(t);
    ejesmoviles(Tr3);
    pause(0.001)
end
A = Rot_Z(45)
B = Rot_Y(30)
C = Rot_X(30)
RES = A*B*C


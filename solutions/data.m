clc;
clear;

% Dati del problema

lines = 2; % Numero di linee di assemblaggio
N = 4; % Numero di stazioni di assemblaggio per ogni linea

% weights = zeros(1,N);
weightsDirect = [0 0 0 0;
                 0 0 0 0];

weightsObliquous = [0 0 0 0;
                    0 0 0 0];

% Tempi di elaborazione in ciascuna stazione
a = [4  5 3 2;
     2 10 1 4];

% Tempi di cambio di linea
t = [0 7 4 5;
     0 9 2 8];
 


e = [10 12]'; % Tempi di entrata nella linea di assemblaggio

x = [18 7]'; % Tempi di uscita dalla fabbrica

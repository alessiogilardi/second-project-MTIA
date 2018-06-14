clc;
clear;

% Dati del problema

lines = 2; % Numero di linee di assemblaggio
n = 3; % Numero di stazioni di assemblaggio per ogni linea

%a = ones(assembly_lines, n);
a = [4 5 3 2; 2 10 1 4]; % Tempi di elaborazione in ciascuna stazione

%t = ones(assembly_lines, n); 
t = [0 7 4 5; 0 9 2 8]; % Tempi di cambio di linea

e = [10 12]'; % Tempi di entrata

x = [18 7]'; % Tempi di uscita dalla fabbrica

num_paths = 2^n;
S = zeros(lines, n, num_paths);

i=1;
j=1;
%for j=1:n
    for k = 1:num_paths/2
        S(i,j,k) = 1;
        i = not_line(i);
    end
%end  
    
    
    
    
    
    
    
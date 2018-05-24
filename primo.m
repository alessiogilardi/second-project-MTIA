clc;
clear;

% Dati del problema

assembly_lines = 2; % Numero di linee di assemblaggio
n = 4; % Numero di stazioni di assemblaggio per ogni linea

%a = ones(assembly_lines, n);
a = [4 5 3 2; 2 10 1 4]; % Tempi di elaborazione in ciascuna stazione

%t = ones(assembly_lines, n); 
t = [0 7 4 5; 0 9 2 8]; % Tempi di cambio di linea

e = [10 12]'; % Tempi di entrata

x = [18 7]'; % Tempi di uscita dalla fabbrica

leave_time = zeros(assembly_lines, n); % Tempo di leave da una stazione

% Esecuzione

% Inizializzazione
leave_time(:,1) = e(:) + a(:,1);

% Calcolo dei leave time per ogni stazione
for j = 2:n
    leave_time(1,j) = min(leave_time(1,j-1)+a(1,j), leave_time(2,j-1)+t(2,j)+a(1,j));
    leave_time(2,j) = min(leave_time(2,j-1)+a(2,j), leave_time(1,j-1)+t(1,j)+a(2,j));
end

[min_time, line] = min(leave_time(:,n) + x);


% Calcolo percorso a costo minimo
pass = zeros(assembly_lines, n); % Matrice di passaggio -> indica il passaggio o meno da una stazione
pass(line, n) = 1;
for j = n-1:-1:1
    [m,i] = min([leave_time(not_line(line),j)+t(not_line(line),j+1)+a(line,j+1), leave_time(line,j)+a(line,j+1)]);    
    if i == 1
        % Vengo dall'altra linea quindi faccio un cambio di linea
        line = not_line(line);
    end
    pass(line,j) = 1;
end


% Svolgimento brute force

clc;
clear;

assembly_lines = 2; % Numero di linee di assemblaggio
n = 4; % Numero di stazioni di assemblaggio per ogni linea

%a = ones(assembly_lines, n);
a = [4 5 3 2; 2 10 1 4]; % Temp1 di elaborazione in ciascuna stazione

%t = ones(assembly_lines, n); 
t = [0 7 4 5 ; 0 9 2 8]; % Tempi di cambio di linea

e = [10 12]; % Tempi di entrata

x = [18 7]; % Tempi di uscita dalla fabbrica

leave_time = zeros(assembly_lines, n);

% Inizializzazione
for i = 1:assembly_lines
    leave_time(i,1) = e(i) + a(i,1);
end

% Calcolo

for j = 2:n
    leave_time(1,j) = min(leave_time(1,j-1)+a(1,j), leave_time(2,j-1)+t(2,j)+a(1,j));
    leave_time(2,j) = min(leave_time(2,j-1)+a(2,j), leave_time(1,j-1)+t(1,j)+a(2,j));
end

min_time = min(leave_time(1,n)+x(1), leave_time(2,n)+x(2));






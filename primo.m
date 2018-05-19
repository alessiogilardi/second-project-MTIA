clc;
clear;

assembly_lines = 2; % Numero di linee di assemblaggio
n = 3; % Numero di stazioni di assemblaggio per ogni linea

a = ones(assembly_lines, n); % Tempo di elaborazione i ciascuna stazione
t = ones(assembly_lines, n); % Tempo di cambio di linea

e1 = 10; % Tempo di entrata nella linea 1
e2 = 10; % Tempo di entrata nella linea 2

leave_time = zeros(assembly_lines, n);

% Inizializzazione





data;

% Contatore per valutare il numero di iterazioni necessarie al
% raggiungimento della souzione
counter = 0;

%%%%% Soluzione del problema con dynamic programming %%%%

leave_time = zeros(lines, N); % Tempo di leave da una stazione

%%% Esecuzione %%%

% Inizializzazione
leave_time(:,1) = e(:) + a(:,1);

% Calcolo dei leave time per ogni stazione
for j = 2:N
    leave_time(1,j) = min(leave_time(1,j-1)+a(1,j), leave_time(2,j-1)+t(2,j)+a(1,j));
    leave_time(2,j) = min(leave_time(2,j-1)+a(2,j), leave_time(1,j-1)+t(1,j)+a(2,j));
    counter = counter + 1;
end


[min_time, line] = min(leave_time(:,N) + x);

% Calcolo percorso a costo minimo
min_path = zeros(lines, N); % Matrice di passaggio -> indica il passaggio o meno da una stazione
min_path(line, N) = 1;
for j = N-1:-1:1
    [m,i] = min([leave_time(not_line(line),j)+t(not_line(line),j+1)+a(line,j+1),    leave_time(line,j)+a(line,j+1)]);    
    % [m,i] = min([leave_time(not_line(line),j)+t(not_line(line),j+1)+a(line,j+1),    leave_time(line,j)+a(line,j+1)]);
    if i == 1
        % Vengo dall'altra linea quindi faccio un cambio di linea
        line = not_line(line);
    end
    min_path(line,j) = 1;
    counter = counter + 1;
end
min_path
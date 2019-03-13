data;
%   Contatore per valutare il numero di iterazioni necessarie 
%   al raggiungimento della soluzione
counter = 0;
%%  Soluzione del problema con dynamic programming 
%   Tempo di leave da una stazione
leave_time = zeros(lines, N); 
%%  Esecuzione 

%%  Inizializzazione
%   Aggiungo costo di ingresso e il tempo di elaborazione sulle prime
%   stazioni delle due linee
leave_time(:,1) = e(:) + a(:,1);

%%  Algoritmo DP del costo minimo (fase forward)
%   Calcolo dei leave time per ogni stazione all'interno della catena
for j = 2:N
    leave_time(1,j) = min(leave_time(1,j-1)+a(1,j), leave_time(2,j-1)+t(2,j)+a(1,j));
    leave_time(2,j) = min(leave_time(2,j-1)+a(2,j), leave_time(1,j-1)+t(1,j)+a(2,j));
    counter = counter + 1;
end

%%  Trovo il tempo minimo e la miglior linea di uscita
%   Aggiungo il costo di uscita e vedo il tempo minimo di attraversamento e
%   la linea da cui sono uscito 
[min_time, line] = min(leave_time(:,N) + x);

%%  Calcolo percorso a costo minimo (fase backward)
%   Matrice di passaggio min_path -> indica il passaggio o meno da una stazione
min_path = zeros(lines, N); 
min_path(line, N) = 1;
for j = N-1:-1:1
    % Capisco se  ho cambiato linea o arrivo dalla stessa linea
    [m,i] = min([leave_time(not_line(line),j)+t(not_line(line),j+1)+a(line,j+1),    leave_time(line,j)+a(line,j+1)]);    
    if i == 1
        %   Vengo dall'altra linea quindi faccio un cambio di linea
        line = not_line(line);
    end
    min_path(line,j) = 1;
    counter = counter + 1;
end

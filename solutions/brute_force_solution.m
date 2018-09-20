data;

% Contatore per valutare il numero di iterazioni necessarie al
% raggiungimento della souzione
counter = 0;

%%%% Soluzione con metodo brute force %%%%

num_paths = 2^N;
S = zeros(lines, N, num_paths);

% Genero tutti i percorsi possibili
i=1;
for j=1:N
    k=0;
    for p=1:(2^j)
        for c=1:(num_paths/(2^j))
            k=k+1;
            S(i,j,k) = 1;
            counter = counter + 1;
        end
        i = not_line(i);
    end
end

% Calcolo il costo di ogni percorso
costs = zeros(num_paths,1); % Array con il costo di ogni percorso
for c=1:num_paths
    % Aggiungo il costo di ingresso
    temp = e.*S(:,1,c);
    costs(c) = costs(c) + sum(temp(:));
    % Aggiungo il costo di uscita
    temp = x.*S(:,N,c);
    costs(c) = costs(c) + sum(temp(:));
    
    % Aggiungo il costo di elaborazione in ogni stazione
    temp = a.*S(:,:,c);
    costs(c) = costs(c) + sum(temp(:));
    for j=2:N
        % Aggiungo il costo di eventuale trasferimento
        costs(c) = costs(c) + t(2,j)*(S(1,j,c)*S(2,j-1,c)) + t(1,j)*(S(2,j,c)*S(1,j-1,c));
        counter = counter + 1;
    end
end

% Trovo il percorso a costo minimo
[min_cost, min_path_index] = min(costs);
min_path = S(:,:,min_path_index);







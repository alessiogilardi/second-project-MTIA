clc;
clear;

% Dati del problema

lines = 2; % Numero di linee di assemblaggio
N = 4; % Numero di stazioni di assemblaggio per ogni linea

%a = ones(assembly_lines, n);
a = [4 5 3 2; 2 10 1 4]; % Tempi di elaborazione in ciascuna stazione

%t = ones(assembly_lines, n); 
t = [0 7 4 5; 0 9 2 8]; % Tempi di cambio di linea

e = [10 12]'; % Tempi di entrata

x = [18 7]'; % Tempi di uscita dalla fabbrica

num_paths = 2^N;
S = zeros(lines, N, num_paths);

i=1;
count=0;
for j=1:N
    k=0;
    for p=1:(2^j)
        for c=1:(num_paths/(2^j))
            k=k+1;
            S(i,j,k) = 1;
            count=count+1;
        end
        i = not_line(i);
    end
end

costs = zeros(num_paths,1);
for c=1:num_paths
    temp = e.*S(:,1,c);
    costs(c) = costs(c) + sum(temp(:));
    temp = x.*S(:,N,c);
    costs(c) = costs(c) + sum(temp(:));
    
    temp = a.*S(:,:,c);
    costs(c) = costs(c) + sum(temp(:));
    for j=2:N
        costs(c) = costs(c) + t(2,j)*(S(1,j,c)*S(2,j-1,c)) + t(1,j)*(S(2,j,c)*S(1,j-1,c));
    end
end

[min_cost, min_path_index] = min(costs);
min_path = S(:,:,min_path_index);







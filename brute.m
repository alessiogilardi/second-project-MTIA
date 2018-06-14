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

% Verifico che non ci siano percorsi ripetuti

% o=-1;
% for c=1:num_paths
%     for d=1:num_paths
%         if (not(c==d) && isequal(S(:,:,c),S(:,:,d)))
%             o
%         end
%     end
% end

for c=1:num_paths
    
end





data;
%Soluzione con metodo brute force

num_paths = 2^N;
S = zeros(lines, N, num_paths);

% Genero tutti i percorsi possibili
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

% Calcolo il costo di ogni percorso
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

% Trovo il percorso a costo minimo
[min_cost, min_path_index] = min(costs);
min_path = S(:,:,min_path_index);







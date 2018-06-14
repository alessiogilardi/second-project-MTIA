# Mathematical Programming Solution

## Dati
![Station cost](https://latex.codecogs.com/gif.latex?c_i_j%20%5Crightarrow%20Tempo%5C%2Cdi%5C%2Celaborazione%5C%2Cin%5C%2Cogni%5C%2Cstazione "Station cost")

![Transport cost](https://latex.codecogs.com/gif.latex?t_i_j%20%5Crightarrow%20Tempo%5C%2Cdi%5C%2Ctrasferimento "Transport cost")

![Variables](https://latex.codecogs.com/gif.latex?S_i_j%20%5Crightarrow%20Variabili%5C%2Cdel%5C%2Cproblema "Variables")

## Funzione di costo

![Cost function](https://latex.codecogs.com/png.latex?%5Cmin%20%7B%5Csum_%7Bi%3D1%7D%5E%7B2%7D%7B%5Cleft%20%5C%5B%20%5Csum_%7Bj%3D1%7D%5E%7BN%7D%7Bc_i_jS_i_j%7D%20&plus;%20%5Csum_%7Bj%3D2%7D%5E%7BN%7D%7Bt_2_j%28S_1_j%20&plus;%20S_2_j_-_1%20-%201%29%20&plus;%20t_1_j%28S_2_j%20&plus;%20S_1_j_-_1%20-%201%29%7D%5Cright%20%5C%5D%7D%7D "Cost function")

## Vincoli

![Vincolo](https://latex.codecogs.com/gif.latex?%5Csum_%7Bi%3D1%7D%5E%7B2%7D%7B%5Csum_%7Bj%3D1%7D%5E%7BN%7D%7BS_%7Bij%7D%20%3D%204%7D%7D "Vincolo")

![Vincolo](https://latex.codecogs.com/gif.latex?%7B%5Csum_%7Bi%3D1%7D%5E%7B2%7D%7BS_%7Bij%7D%20%3D%201%7D%7D%20%5C%3B%5C%3B%5C%3B%20%7B%5Cforall%20j%3D1...N%7D "Vincolo")


# Mathematical Programming Solution

## Dati
![Station cost](https://latex.codecogs.com/gif.latex?a_i_j%20%5Crightarrow%20Tempo%5C%2Cdi%5C%2Celaborazione%5C%2Cin%5C%2Cogni%5C%2Cstazione "Station cost")

![Transport cost](https://latex.codecogs.com/gif.latex?t_i_j%20%5Crightarrow%20Tempo%5C%2Cdi%5C%2Ctrasferimento "Transport cost")

![Variables](https://latex.codecogs.com/gif.latex?S_i_j%20%5Crightarrow%20Variabili%5C%2Cdel%5C%2Cproblema "Variables")

## Funzione di costo

![Cost function](https://latex.codecogs.com/gif.latex?%5Cmin%20%5Csum_%7Bi%3D1%7D%5E%7B2%7D%20%5Csum_%7Bj%3D1%7D%5E%7BN%7Da_%7Bij%7DS_%7Bij%7D%20&plus;%20%5Csum_%7Bj%3D2%7D%5E%7BN%7Dt_%7B2j%7D%28S_%7B1j%7D%20*%20S_%7B2j-1%7D%29%20&plus;%20t_%7B1j%7D%28S_%7B2j%7D%20*%20S_%7B1j-1%7D%29 "Cost function")

## Vincoli

![Vincolo](https://latex.codecogs.com/gif.latex?%5Csum_%7Bi%3D1%7D%5E%7B2%7D%7B%5Csum_%7Bj%3D1%7D%5E%7BN%7D%7BS_%7Bij%7D%20%3D%20N%7D%7D "Vincolo")

![Vincolo](https://latex.codecogs.com/gif.latex?%7B%5Csum_%7Bi%3D1%7D%5E%7B2%7D%7BS_%7Bij%7D%20%3D%201%7D%7D%20%5C%3B%5C%3B%5C%3B%20%7B%5Cforall%20j%3D1...N%7D "Vincolo")


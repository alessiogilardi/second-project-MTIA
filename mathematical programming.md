# Mathematical Programming Solution

## Dati
![Station cost](https://latex.codecogs.com/gif.latex?c_i_j%20%5Crightarrow%20Tempo%5C%2Cdi%5C%2Celaborazione%5C%2Cin%5C%2Cogni%5C%2Cstazione "Station cost")

![Transport cost](https://latex.codecogs.com/gif.latex?t_i_j%20%5Crightarrow%20Tempo%5C%2Cdi%5C%2Ctrasferimento "Transport cost")

![Variables](https://latex.codecogs.com/gif.latex?S_i_j%20%5Crightarrow%20Variabili%5C%2Cdel%5C%2Cproblema "Variables")

## Funzione di costo

![Cost function](https://latex.codecogs.com/gif.latex?\min \sum_{i=1}^{2} \sum_{j=1}^{N}c_{ij}S_{ij} + \sum_{j=2}^{N}t_{2j}(S_{1j} * S_{2j-1}) + t_{1j}(S_{2j} * S_{1j-1}) "Cost function")

## Vincoli

![Vincolo](https://latex.codecogs.com/gif.latex?%5Csum_%7Bi%3D1%7D%5E%7B2%7D%7B%5Csum_%7Bj%3D1%7D%5E%7BN%7D%7BS_%7Bij%7D%20%3D%204%7D%7D "Vincolo")

![Vincolo](https://latex.codecogs.com/gif.latex?%7B%5Csum_%7Bi%3D1%7D%5E%7B2%7D%7BS_%7Bij%7D%20%3D%201%7D%7D%20%5C%3B%5C%3B%5C%3B%20%7B%5Cforall%20j%3D1...N%7D "Vincolo")


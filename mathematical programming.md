# Mathematical Programming Solution

## Dati
![Station cost](https://latex.codecogs.com/gif.latex?c_i_j%20%5Crightarrow "Station cost") Tempo di elaborazione in ogni stazione

![Transport cost](https://latex.codecogs.com/gif.latex?t_i_j%20%5Crightarrow "Transport cost") Tempo di trasporto da una linea all'altra

![Transport cost](https://latex.codecogs.com/gif.latex?S_i_j%20%3D%20%5Cleft%20%5C%7B%200%2C1%20%5Cright%20%5C%7D%20%5Crightarrow "Variables") Variabili del problema

## Funzione di costo

![Cost function](https://latex.codecogs.com/png.latex?%5Cmin%20%7B%5Csum_%7Bi%3D1%7D%5E%7B2%7D%7B%5Cleft%20%5C%5B%20%5Csum_%7Bj%3D1%7D%5E%7BN%7D%7Bc_i_jS_i_j%7D%20&plus;%20%5Csum_%7Bj%3D2%7D%5E%7BN%7D%7Bt_2_j%28S_1_j%20&plus;%20S_2_j_-_1%20-%201%29%20&plus;%20t_1_j%28S_2_j%20&plus;%20S_1_j_-_1%20-%201%29%7D%5Cright%20%5C%5D%7D%7D "Cost function")

## Vincoli



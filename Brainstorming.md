# Brainstorming a caso

## Programmazione matematica

Sij = {0,1} --> variabile binaria che indica il passaggio ad esempio: [1 1 0 0; 0 0 1 1]

Vincolo: la somma su entramble le righe deve fare 4 --> è necessario passare per almeno 4 stazioni
Vincolo: la somma su ogni colonna deve fare 1 --> non posso passare due volte dalla stessa stazione

Il tempo di trasferimento va tenuto nel costo solo se Sij-1 != Sij
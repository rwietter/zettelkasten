# O(nk) - Polynomial Time

O(nk) representa uma complexidade de tempo polinomial, onde o tempo de execução do algoritmo cresce em função de n e k. Isto significa que o desempenho do algoritmo depende tanto do tamanho da entrada (n) quanto da magnitude de algum outro parâmetro (k). Por exemplo, um algoritmo que ordena um array 2D usando loops aninhados teria uma complexidade de tempo de O(n^2), onde n é o comprimento de cada dimensão do array.

```js
for( i=0; i<n; i++ ) { // O(n)
  for( j=0; j<k; j++ ) { // O(k)
    // do something
  }
}

// O(nk) = O(n) * O(k)
```
### O(n+k) - Linear Time

O(n+k) é similar ao tempo expoencial, mas aqui depende de dois parâmetros, n e k. 

O(n+k), por outro lado, representa uma complexidade de tempo linear, onde o tempo de execução do algoritmo cresce apenas em função da soma de n e k. Isto significa que o desempenho do algoritmo depende principalmente do tamanho da entrada (n) e não é significativamente afetado pela magnitude de qualquer outro parâmetro (k). Por exemplo, um algoritmo que ordena um array de números e depois conta o número de números inteiros até mesmo no array teria uma complexidade de tempo de O(n+k), onde n é o comprimento do array e k é o número de números inteiros até mesmo no array.

```js
function someFunction(n, k) {
  for(i = 0; i < n; i++) { // O(n)
    // do something
  }

  for(i = 0; i < k; i++) { // O(k)
    // do something
  }
}
// O(n+k) = O(n) + O(k)
```
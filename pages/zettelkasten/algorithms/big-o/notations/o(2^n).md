# O(2^n) - Exponential Time

O(2^n) representa uma complexidade de tempo exponencial, onde o tempo de execução do algoritmo cresce em função de 2^n. Isto significa que o desempenho do algoritmo depende tanto do tamanho da entrada (n) quanto da magnitude de algum outro parâmetro (k). Por exemplo, um algoritmo que ordena um array 2D usando loops aninhados teria uma complexidade de tempo de O(n^2), onde n é o comprimento de cada dimensão do array.

```js
function sum(arr) {
  let sum = 0;
  for (let i = 0; i < arr.length; i++) {
    for (let j = 0; j < arr.length; j = j * 2) {
      sum += arr[i] + arr[j];
    }
  }
  return sum;
}
```

---

Exponential Time pode ser representado como O(k^n), onde k é um fator constante que afeta a taxa de crescimento do tempo de funcionamento do algoritmo. No contexto da análise do algoritmo, k é tipicamente maior que 1, já que um valor de k menor que 1 resultaria em uma taxa de crescimento subexponencial.

Por exemplo, um algoritmo que leva tempo O(2^n) para resolver um problema também pode ser expresso como O(3^n), O(4^n), ou O(k^n), onde k é qualquer constante maior do que 1. Isto porque todas estas complexidades de tempo crescem exponencialmente conforme o tamanho de entrada n aumenta.

```js
function recursiveFunction(k, n) {
  if (n === 0) {
    return 1; // O(1)
  } else {
    let sum = 0; // O(1)
    for (let i = 1; i <= k; i++) { // O(k)
      sum += recursiveFunction(k, n-1); // O(k^n)
    }
    return sum; // O(1)
  }
}
```
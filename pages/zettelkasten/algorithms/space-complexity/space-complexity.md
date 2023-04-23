# Space Complexity

## Introduction

Complexidade de espaço é uma medida da quantidade de memória necessária para executar um algoritmo. A complexidade de espaço é geralmente medida em termos do tamanho da entrada, mas também pode ser medida em termos do número de variáveis utilizadas pelo algoritmo.

Em complexidade espacial não estamos preocupados com o input size, mas sim com o espaço que o algoritmo utiliza para executar. Por exemplo, um algoritmo que cria um array de tamanho N e então itera sobre esse array, executando uma operação em cada elemento, terá uma complexidade de espaço de O(N).

## O que pode causar complexidade de espaço?

- Alocação de memória
  - Variables
  - Data Structures
  - Function Calls
  - Allocations (e.g. new objects)

## O(1) - Constant Time

A complexidade de espaço O(1) é uma função que cresce constantemente independente do tamanho da entrada. Ou seja, se N é 5 então a complexidade é 1. Se N é 10 então a complexidade é 1. Se N é 1000 então a complexidade é 1.

```js
function sum(arr) {
  let sum = 0; // O(1)
  for (let i = 0; i < arr.length; i++) { // O(1)
    sum += arr[i]; // O(1)
  }
  return sum; // O(1)
}

// O(1) + O(1) + O(1) + O(1)
// O(4)
```
# O(2^n) - Exponential Time

O(2^n) representa uma complexidade de tempo exponencial, onde o tempo de execução do algoritmo cresce em função de 2^n. Isto significa que o desempenho do algoritmo depende tanto do tamanho da entrada (n) quanto da magnitude de algum outro parâmetro (k). Por exemplo, um algoritmo que ordena um array 2D usando loops aninhados teria uma complexidade de tempo de O(n^2), onde n é o comprimento de cada dimensão do array.

Exponential Time pode ser representado como O(k^n), onde k é um fator constante que afeta a taxa de crescimento do tempo de funcionamento do algoritmo. No contexto da análise do algoritmo, k é tipicamente maior que 1, já que um valor de k menor que 1 resultaria em uma taxa de crescimento subexponencial.

Por exemplo, um algoritmo que leva tempo O(2^n) para resolver um problema também pode ser expresso como O(3^n), O(4^n), ou O(k^n), onde k é qualquer constante maior do que 1. Isto porque todas estas complexidades de tempo crescem exponencialmente conforme o tamanho de entrada n aumenta.

![Exponential Time](./assets/geogebra-exponential.png)

```js
function exponencialSearch(list, targetSum) {
  const n = list.length;

  // Loop por todas as combinações possíveis de elementos
  for (let i = 0; i < 2 ** n; i++) {
    let sum = 0;
    // Loop pelos bits do número para verificar quais elementos estão incluídos na soma
    for (let j = 0; j < n; j++) {
      if ((i >> j) & 1) {
        sum += list[j];
      }
    }
    // Retorna a combinação se a soma for igual ao alvo
    if (sum === targetSum) {
      return [sum, targetSum];
    }
  }
  // Retorna falso se não houver combinação que some o alvo
  return false;
}

// Exemplo de uso
const list = Array(30).fill(1).map((_, i) => i + 100);
list.push(14);
const targetSum = 14;

console.log(exponencialSearch(list, targetSum));
```

- [Exhaustive Search Tree](http://conway.rutgers.edu/~ccshan/wiki/blog/posts/Exhaustive/)
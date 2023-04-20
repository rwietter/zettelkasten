# O(n^2) - Quadratic Time

Tempo quadrático é quando o tempo de execução do algoritmo cresce em função do quadrado do tamanho da entrada. Por exemplo, se o tamanho da entrada é duplicado, o tempo de execução é quadruplicado.

Por exemplo, dado um array de tamanho 5, o loop externo vai percorrer 5 vezes e o loop interno vai percorrer 5 vezes para cada loop externo. Ou seja, teremos 5² = 25 iterações.

```js
function sum(arr) {
  let sum = 0;
  for (let i = 0; i < arr.length; i++) {
    for (let j = 0; j < arr.length; j++) {
      sum += arr[i] + arr[j];
    }
  }
  return sum;
}
```

Também pode ser assim, onde temos uma função dentro de um for loop:

```js
function anotherFunction(input) {
  for (let i = 0; i < input.length; i++) { // O(n)
    console.log(length); // O(1)
  }
}

function funChallenge(input) {
  let a = 10; // O(1)
  a = 50 + 3; // O(1)

  for (let i = 0; i < input.length; i++) { // O(n)
    anotherFunction(input); // O(n)
    let stranger = true; // O(1)
    a++; // O(1)
  }
  return a; // O(1)
}

// O(1) + O(1) + O(n) * O(n) + O(1) + O(1) + O(1)
// O(2) + O(n^2) + O(3) - drop constants
// O(n^2) - quadratic time
```

Vale lembrar que mesmo que `let stranger = true`, `a++` e `console.log(length)` estão dentro de loops, sua complexidade de tempo ainda é considerada O(1), ou tempo constante, porque seu tempo de execução não depende do tamanho da entrada. Além disso, envolvem atribuições de variáveis simples e operações aritméticas que não requerem nenhum loop ou cálculos complexos.
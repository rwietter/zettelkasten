---
title: Complexidade Ciclomática
icon: vscode-icons:file-type-codekit
---

# Complexidade Ciclomática

Complexidade ciclomática é um métrica de software usado para indicar o complexidade de um programa. É uma medida quantitativa do número de caminhos linearmente independentes através de um programa código fonte. Foi desenvolvido por Thomas J. McCabe, Sr. em 1976.

A complexidade ciclomática é uma medida da complexidade de um programa ou trecho de código, e é geralmente expressa em termos de quantos caminhos diferentes podem ser seguidos através do código. A complexidade ciclomática é geralmente calculada usando uma fórmula chamada "contador de caminhos de complexidade ciclomática".

Use a seguinte fórmula para calcular a complexidade ciclomática ( CYC ):
```CYC = E – N + 2P```

Onde:
- E = número de arestas no grafo de fluxo de controle
- N = número de nós no grafo de fluxo de controle
- P = número de componentes conectados no grafo de fluxo de controle

Cada elemento do código, como operações, condições, chamadas de função, etc, tem um valor específico para E, N e P que contribui para a complexidade ciclomática.

- Um operador de comparação, como "a > b" ou "a == b", geralmente contribui para 1 aresta e 1 nó no grafo de fluxo de controle.
- Um operador condicional, como "if" ou "switch", geralmente contribui para 1 aresta e 1 nó por cada ramo possível no grafo de fluxo de controle.
- Uma chamada de função, geralmente contribui para 1 aresta e 1 nó no grafo de fluxo de controle.

```js
function foo(a) {
  return (b) => {
    if(a > b) {
      return a;
    } else {
      return b;
    }
  }
}

const bar = foo(1);
const result = bar(2);
```

Neste caso, a complexidade ciclomática desse código é 2, pois há 2 caminhos possíveis a serem seguidos: (a é maior que b) ou (b é maior ou igual a a). Onde temos 3 arestas, uma para chamada de função e outras duas para as condições de retorno. E também temos 2 nós (foo e bar) que são as funções presentes no código e dois nós ( return a e return b) que são os possíveis caminhos de retorno.

CYC = 3 – 2 + 2(1) = 2

<img src="https://uploaddeimagens.com.br/images/004/308/823/full/graphviz.png?1674437839.png" width="400px">
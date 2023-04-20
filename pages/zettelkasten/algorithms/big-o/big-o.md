# Big-O (Assintotic Analysis)

Digamos que eu tenho um código que realiza uma tarefa e obtém um resultado, mas obtenho o resultado em 0.25 segundos. Meu colega tem o código dele e obtém o mesmo resultado com 0.5 segundos. Isso significa que o código do meu colega é melhor que o meu ? Não necessariamente, porque o código do meu colega pode ser executado em um computador mais rápido. Então, como podemos comparar o desempenho de diferentes algoritmos? A resposta é a análise assintótica. Com a notação assintótica, podemos inferir um valor aproximado para qualquer algoritmo, independentemente do hardware ou software, de forma que possamos comparar o desempenho de diferentes algoritmos de forma abstrata.

Big-O é uma forma de descrever o desempenho de um algoritmo. É uma maneira de descrever o pior cenário possível de um algoritmo

## Big-O Cheat Sheet

A notação Big-O nos permite mostrar um cenário em que o algoritmo está tendo o pior desempenho. Ele é usado para comparar o desempenho de diferentes algoritmos. Assim, podemos comparar o desempenho de diferentes algoritmos e escolher o melhor para um determinado cenário.

1. O(1) - Constant Time
2. O(log n) - Logarithmic Time
3. O(n) - Linear Time
4. O(n log n) - Logarithmic time
5. O(n+k) - Linear Time | two inputs (n and k)
6. O(n^c) - Polynomial Time (c is an exponent > 1)
   1. O(n^2) - Quadratic Time
   2. O(n^3) - Cubic Time
7. O(c^n) - Exponential Time | c is a constant > 1
   1. O(2^n) - Exponential Time
8. O(n!) - Factorial Time

* (n, k = size of input, c = some constant)

> O(n^3) e O(n^2) são exemplos de complexidade de tempo polinomial, pois é uma função do tamanho de entrada n elevado a uma potência constante. Também podemos ter uma constante C de n^k, ou seja, O(Cn^k) assim como O(2n), tal que C > 1, ou seja, O(2n^k) ou O(2n^2) que seria uma função polinomial de complexidade de tempo quadrático.

Dado um array de tamanho 20, o que é o pior cenário possível ?

> Polynomial Time: O(Cn^k) -> O(2n^2) -> O(2.20^2) -> (40^2) -> O(1600) operations
> Exponential Time: O(C^n) -> O(2^n) -> O(2^20) -> O(1.048.576) operations

**Examples**

| Notation     | Name               | Example         |
|--------------|--------------------|-----------------|
| O(1)         | Constant Time      | O(1)            |
| O(log n)     | Logarithmic Time   | O(log n)        |
| O(n)         | Linear Time        | O(n)            |
| O(n log n)   | Logarithmic Time   | O(n * log (n))  |
| O(n+k)       | Linear Time        | O(n+k)          |
| O(n^c)       | Polynomial Time    | O(n^2)          |
| O(c^n)       | Exponential Time   | O(2^n)          |
| O(n!)        | Factorial Time     | O(n!)           |


| n            |   n = 100    |  n = 1000   |
|--------------|--------------|-------------|
| 1            |   1          |   1         | 
| log(n)       |   2          |   3         |
| n            |   100        |   1000      |
| n+k          |   200        |   2000      |
| n * log(n)   |   200        |   3000      |
| nk           |   10000      |   1000000   |
| n^2          |   10000      |   1000000   |
| n^3          |   1000000    |  1000000000 |
| c^n          |   k^100      |   k^1000    |
| n!           |   9.33262154e+157 | 1.216451e+2567 |



## O que pode tomar tempo em uma função ?

- Operations (+, -, *, /)
- Comparisons (<, >, ==)
- Looping (for, while)
- Outside function call (function())
- Any other operation that requires more time

## Regras da notação Big-O

1. Worst Case (Pior caso)
2. Remove Constants (Remover constantes)
3. Entradas diferentes devem ter variáveis diferentes. O(a b). As matrizes A e B aninhadas seriam O(a*b), onde
   1. + a e b estão em ordens diferentes (não aninhadas)
   2. * a e b estão na mesma ordem (aninhadas)
4. Drop Non-dominant terms (Descartar termos não dominantes, ex: O(n^2 + n) = O(n^2) or O(n^2 + n^3) = O(n^3))

### Worst Case

Digamos que temos um algoritmo que percorre um array e imprime cada elemento. O que é o pior cenário possível? O pior cenário possível é quando o array tem 10 elementos e o algoritmo precisa pergorrer até o último eleemento da lista. Então, o pior cenário possível é O(n), onde n é o tamanho do array.

## O que causa a complexidade do espaço?

- Variables
- Data Structures
- Function calls
- Allocations

## Linear Time

A complexidade de tempo linear, denotada por O(n), é uma complexidade computacional que descreve a quantidade de tempo que um algoritmo leva para ser executado. Isso significa que o tempo de execução de um algoritmo aumenta linearmente com o tamanho da entrada. Em outras palavras , se um algoritmo tem uma iteração que itera sobre um tamanho de entrada n, diz-se que ele tem uma complexidade de tempo de ordem O(n).

O tempo linear é a melhor complexidade de tempo possível em situações em que o algoritmo precisa ler sequencialmente toda a sua entrada. Portanto, muita pesquisa foi investida na descoberta de algoritmos que exibem tempo linear ou, pelo menos, tempo quase linear.

A complexidade de tempo linear é classificada como um algoritmo de tempo polinomial, o que significa que tem uma complexidade de tempo de O(n^α) para alguma constante α > 1. Outros exemplos de algoritmos de tempo polinomial incluem complexidade de tempo quadrática O(n^2) e complexidade de tempo cúbico O(n^3)

## Polynomial Time

Complexidade de tempo polinomial é uma medida da eficiência de um algoritmo. Diz-se que um algoritmo tem complexidade de tempo polinomial se seu tempo de execução for limitado por uma função polinomial do tamanho da entrada. Isso significa que o tempo de execução do algoritmo cresce no máximo como alguma potência fixa do tamanho da entrada. Complexidade de tempo polinomial é considerada uma propriedade desejável de um algoritmo porque indica que o algoritmo é eficiente e que seu tempo de execução não cresce muito rapidamente conforme o tamanho da entrada aumenta.

A complexidade do tempo polinomial é considerada relativamente eficiente para fins práticos, pois o tempo de execução do algoritmo não cresce muito rapidamente com o tamanho da entrada. Em contraste, algoritmos com complexidade de tempo exponencial, como O(2^n) ou O(3^n), são considerados muito ineficientes e impraticáveis para muitos problemas do mundo real. Assim, O(n^3) é uma função polinomial de grau 3, enquanto O(n^2) é uma função polinomial de grau 2.

### Quasi-polynomial Time

Algoritmos de tempo quase polinomial são algoritmos que executam mais do que o tempo polinomial, mas não tão longos quanto o tempo exponencial. O tempo de execução de pior caso de um algoritmo de tempo quase polinomial é 2^(O(log^c(n))), para algum c fixo > 0


## Referências

- [Big-O Wikipedia](https://en.wikipedia.org/wiki/Big_O_notation)
- [Big-O Wikipedia pt-BR](https://pt.wikipedia.org/wiki/Grande-O)
- 
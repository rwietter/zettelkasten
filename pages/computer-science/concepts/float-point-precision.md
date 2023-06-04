---
title: Float-point
icon: vscode-icons:file-type-codekit
---

# Floating-Point Precision

- Pontos flutuantes ultrapassam os limites dos INTEIROS
- Comportamento
    - A representação binária do número decimal pode não ser exata.
    - Incompatibilidade de tipo entre os números float e double.

> Imagine fazer uma aplicação de cálculos monetários, usando ponto flutuante, já tem aquela questão de precisão incorreta. Aí se vai ver o tamanho que fica o cálculo.

---

## Conversão

> Digamos que tenha (R$2,45 - R$1,01 - R$1,44).

Calculando via ponto flutuante vai sobrar 2.220446049250313... Convertendo para decimal, ou seja, centavos (245-101-144) vai sobrar 0. Agora por de debaixo dos panos em valores binários o cálculo seria:

- **Para ponto flutuante**: 0100 0000 0001 1100 1100 1100 1100 1101 - 0011 1111 1000 0001 0100 0111 1010 1110 - 0011 1111 1011 1000 0101 0001 1110 1100 = 0010 0101 1000 0000 0000 0000 0000 0000
- **Para decimal**: 1111 0101 - 0110 0101 - 1001 0000 = 0
- Para o cálculo binário no ponto flutuante, é calculada a parte decimal como um binário e a parte fracionária como outro binário.
- E sobre não resultar 0, acontece porque todos esses binários não representam os valores precisos que nós queríamos contar. Foram valores arredondados baseado nos expoentes de 2.
    - 2.45 ⇒ 2.4500000476837158203125
    - 1.01 ⇒ 1.0099999904632568359375
    - 1.44 ⇒ 1.440000057220458984375

---

## Referências

- [What Every Computer Scientist Should Know About Floating-Point Arithmetic](https://docs.oracle.com/cd/E19957-01/806-3568/ncg_goldberg.html)
- [PHP para Iniciantes: Tipos de Dados Primitivos - Pontos Flutuantes](https://blog.kaiquegarcia.dev/php-para-iniciantes-tipos-de-dados-primitivos-pontos-flutuantes)
- [Why Floating-Point Numbers May Lose Precision](https://learn.microsoft.com/en-us/cpp/build/why-floating-point-numbers-may-lose-precision?view=msvc-170)
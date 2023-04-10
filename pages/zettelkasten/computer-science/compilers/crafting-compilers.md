# Crafting Compilers

## Passo 1: Sintaxe e Gramática

O primeiro passo para criar um compilador é definir a sintaxe e a gramática da linguagem de programação. Isso envolve especificar as regras para como os programas na linguagem devem ser estruturados, incluindo a sintaxe para expressões, declarações e estruturas de controle.

Isso envolverá a especificação de coisas como palavras-chave, tipos de dados, estruturas de controle e funções.

Por exemplo, a sintaxe para uma expressão aritmética simples pode ser definida como:

```
expression → literal
           | unary
           | binary
           | grouping ;

literal    → NUMBER | STRING | "true" | "false" | "nil" ;
unary      → ( "-" | "!" ) expression ;
binary     → expression operator expression ;
grouping   → "(" expression ")" ;

operator   → "==" | "!=" | "<" | "<=" | ">" | ">="
           | "+"  | "-"  | "*" | "/" ;
```

A gramática acima define a sintaxe para expressões aritméticas simples. Ela diz que uma expressão é um literal, uma expressão unária, uma expressão binária ou uma expressão agrupada. Um literal é um número, uma string, a palavra-chave `true` ou `false` ou a palavra-chave `nil`. Uma expressão unária é uma expressão precedida por um operador unário, como `-` ou `!`. Uma expressão binária é uma expressão seguida por um operador binário, como `+` ou `*`, e outra expressão. Uma expressão agrupada é uma expressão entre parênteses.

Exemplos de implementações de gramáticas:

- [ANSI C gramar](https://www.lysator.liu.se/c/ANSI-C-grammar-y.html)


## Passo 2: Análise Léxica

O próximo passo é escrever um analisador léxico (também conhecido como tokenizador) que possa converter o código-fonte de um programa em uma sequência de tokens, cada um representando um símbolo ou sequência de símbolos específicos na linguagem.

Por exemplo, o código-fonte `1 + 2` pode ser convertido em uma sequência de tokens como:

```
[ NUMBER, "+", NUMBER ]
```

O analisador léxico pode ser escrito usando ferramentas como JFlex ou Lex. Aqui estão alguns links úteis para analisadores léxicos:

- [JFlex tutorial](http://jflex.de/manual.html)
- [Lex tutorial](https://web.cs.hacettepe.edu.tr/~bbm301/lectures/lecture3_lex.pdf)

Exemplos de implementações de analisadores léxicos:

- [ANSI C grammar, Lex specification](https://www.lysator.liu.se/c/ANSI-C-grammar-l.html)

## Passo 3: Análise Sintática

Uma vez que o analisador léxico gerou uma sequência de tokens, o próximo passo é escrever um analisador sintático que possa analisar a sequência de tokens e construir uma árvore sintática abstrata (AST) que representa a estrutura do programa.

Por exemplo, a sequência de tokens `[ NUMBER, "+", NUMBER ]` pode ser convertida em uma árvore sintática abstrata como:

```
      +
     / \
    1   2
```

O analisador sintático pode ser escrito usando ferramentas como Bison ou Yacc. Aqui estão alguns links úteis para analisadores sintáticos:

- [Bison tutorial](https://www.gnu.org/software/bison/manual/bison.html)
- [Yacc tutorial](https://web.cs.hacettepe.edu.tr/~bbm301/lectures/lecture4_yacc.pdf)
- [Antlr tutorial](https://www.antlr.org/) (Antlr é uma ferramenta de geração de analisadores léxicos e sintáticos)

## Passo 4: Análise Semântica

Com uma AST em mãos, o compilador pode agora realizar a análise semântica, que envolve a verificação de coisas como incompatibilidades de tipos, variáveis não definidas e outros erros que não podem ser detectados apenas pelo analisador sintático.

Por exemplo, o compilador pode detectar que a expressão `1 + "2"` é inválida porque o operador `+` não pode ser aplicado a um número e uma string.

## Passo 5: Geração de Código

Uma vez que a AST foi completamente validada, o compilador pode então gerar código para a plataforma de destino, seja ele código de máquina nativo ou uma linguagem intermediária como LLVM.

Por exemplo, o compilador pode gerar código de máquina para a expressão `1 + 2` que, quando executado, produz o resultado `3`.

## Passo 6: Otimização

O compilador pode então realizar a otimização do código, que envolve a remoção de código inacessível, a substituição de expressões por seus valores constantes e outras transformações que melhoram a eficiência do código.

Por exemplo, o compilador pode remover o código que verifica se o resultado de uma divisão por zero é `NaN` porque o resultado de uma divisão por zero é sempre `NaN`.

Ao final, as linguagens podem ser compiladas para um IR (Intermediate Representation) como LLVM, que pode ser otimizado usando ferramentas como o [LLVM optimizer](https://llvm.org/docs/CommandGuide/opt.html) ou o [LLVM compiler](https://llvm.org/docs/CommandGuide/llc.html). O LLVM possui transformers otimizados que varem o código multiplas vezes para remover redundâncias para evitar chamadas de funções e de sistemas desnecessárias.

Assim teremos o front-end (compilação da linguagem para LLVM-IR), o middle-end (otimização do LLVM-IR), e o back-end (compilação do LLVM-IR para código de máquina - x86, ARM, RISC-V, MIPS, Power-PC).

Transformers:

- [Transform Passes](https://llvm.org/docs/Passes.html)

## Passo 7: Compilação

Finalmente, o compilador pode gerar o arquivo executável ou biblioteca, pronto para distribuição e uso por programadores. O formato do executável ou da biblioteca depende da plataforma de destino. Por exemplo, um executável para Windows é um arquivo `.exe`, enquanto um executável para Linux é um arquivo binário do tipo ELF (Executable and Linkable Format).
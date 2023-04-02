# Compilers

- Hexdump `xxd ./some.class | more` 


## Compiladores

Compiladores são programas que traduzem código fonte para binário, de modo, que o código fonte seja diretamente executado em uma máquina.

Para criar um compilador, geralmente será necessário criar um analisador léxico e um analizador sintático que cria uma AST, após isso, o passo seguinte será utilizar um compilador llvm para otimizar o código via Transform Passes e gerar o binário.

### Montador

O montador é um programa que traduz código assembly para binário.

### Linker

O linker é um programa que liga os binários gerados pelo montador e pelo compilador, para que o programa possa, de fato, ser executado.

### Loader

O loader é um programa que carrega o binário gerado pelo linker para a memória.

### Executável

O executável é o binário gerado pelo loader.

---

## Interpretadores

Interpretadores são programas que traduzem código fonte para binário, de modo, que o código fonte seja interpretado em tempo de execução.

### Bytecode

Bytecode é um código intermediário que é interpretado por uma máquina virtual.

#### Javac -> JVM

O javac é um compilador que gera bytecode, que é interpretado pela JVM.

A JVM tem um compilador JIT chamado de HotSpot, que consegue fazer otimizações, por exemplo, registrar o tipo de variável em registradores e fazer cache de métodos mais utilizados.

As otimizações estáticas são feitas pelo compilador e as otimizações dinâmicas são feitas pelo JIT.

---

## Técnicas de compilação

### Análise sintática

> In computer science, Backus–Naur form or Backus normal form (BNF) is a metasyntax notation for context-free grammars, often used to describe the syntax of languages used in computing, such as computer programming languages, document formats, instruction sets and communication protocols.

Análise sintática vai tokenizar as expression e criar uma Parse Tree de expressões : termos. Esse parser sintático é feito pela **Abstract Syntax Tree** (AST).

Notação infixa: é uma notação comum em aritmética e na lógica, onde os operadores são colocados entre os operandos em que eles atuam. Para os computadores é mais simples analisar a notação prefixa ou a posfixa do que analisar a infixa, mas muitas linguagens de programação a usam por causa de sua familiaridade.

<img src="./assets/notação-prefixa.png" width="50%">


- Bison, yacc -> análise sintática
- [ANSI C Yacc grammar](https://www.lysator.liu.se/c/ANSI-C-grammar-y.html)
- [ECMAScript Grammar Notation](https://tc39.es/ecma262/#sec-grammar-notation)

### Análise léxica

- Faz a tokenização de dígitos, não-digitos, maiúsculo e minúsculo, caracteres
- Lex, flex -> tokenização léxica
- [ECMAScript Lexical Grammar](https://tc39.es/ecma262/#sec-ecmascript-language-lexical-grammar)

---

## Formas de Compilação

### JIT

- Faz cache de binários mais acessados para aumentar a velocidade de carregamento. Após 'compilado' em código intermediário ainda é possível fazer alterações.
- Tem maior flexibilidade
- Executar código que altera o que está em execução
- Meta-progamação
- Vantagem do interpretador é injetar bytecodes sem reiniciar o programa.
- Alteração em tempo de execução


### AOT

- Compilador Static Linker linka os binários para acesso rápido. Após compilado não se pode mudar


## Runners

### Compile time

De certa forma é quando o código está sendo compilado e não é definitivamente executado. Aqui, também, pode ser pego muitos erros de tipos, por exemplo.

1. Erros de compilação:
   - Erros de sintaxe
   - Erros de verificação de tipos
   - Falhas no compilador
2. Compilação bem-sucedida
    - Programa foi bem formado
    - Programa pode ser executado
3. Invariantes (não são erros, mas são coisas que o compilador pode verificar)
    - Programa não tem efeitos colaterais

### Run time

É quando o código está sendo executado pelo usuário após ser compilado. Ou em caso de interpretadores, quando o código está sendo interpretado. Aqui, podemos ter erros em tempo de execução, como por exemplo, divisão por zero.

1. Erros possíveis:
   - Divisão por zero
   - Desreferenciamento de ponteiro nulo
   - Ficar sem memória
   - Acesso a memória não alocada
   - Abrir um arquivo que não existe
2. Runtime bem-sucedido
    - Programa foi bem formado
3. Invariantes
    - Programa pode ter efeitos colaterais

---

## Classificação de um compilador

### Front-end

Compilar o código fonte para uma representação intermediária como uma estrutura de dados de Abstract Syntax Tree (AST) ou uma representação de Control-flow Graph (CFG) ou uma representação de Data-flow Graph (DFG).

### Middle-end

Compilar a representação intermediária para outra representação intermediária, por exemplo, para uma representação de código de virtual machine (IR) ou uma representação de código de máquina de alto nível (HLL).

### Back-end

Compilar a representação intermediária para código de máquina em uma arquitetura específica como x86, ARM, MIPS, PowerPC, SPARC, etc.

## Compilador Vs Interpretador

Boa parte das linguagens de programação são compiladas, mas algumas são interpretadas. O que é a diferença entre elas?

Mesmo as linguagens interpretadas são compiladas em algum momento por um JIT ou AOT afim de gerar um binário que será interpretado. O que muda é o tempo de compilação.

Mas algumas linguagens de script não chegam a passar por esse processo afim de gerar um binário. Elas são interpretadas em tempo de execução.

## Referências

- [Compiler Explorer](https://godbolt.org/)
- [Backus–Naur form](https://en.wikipedia.org/wiki/Backus%E2%80%93Naur_form)
- [LLVM](https://llvm.org/docs/Passes.html)
- [Static linking vs dynamic linking](https://stackoverflow.com/questions/1993390/static-linking-vs-dynamic-linking)
- [ANSI C Yacc grammar](https://www.lysator.liu.se/c/ANSI-C-grammar-y.html)
- [LLVM Compiler Infrastructure](https://llvm.org/)
- [Phase Distinction](https://en.wikipedia.org/wiki/Phase_distinction)
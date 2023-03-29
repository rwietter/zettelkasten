---
title: F. Cohesion
icon: vscode-icons:file-type-codekit
---

# Functional Cohesion

<div align="center">
    <img src="./assets/functionCohesion.png" alt="Function Cohesion" width="400" height="400" />
</div>

---

> A functional-strength module is defined as a module that performs a single specific function.
> -- <cite>[Meyers, in Composite structured design][1]</cite>

[1]: https://softwareengineering.stackexchange.com/questions/402593/concept-of-functional-cohesion

---


**Cada elemento essencial para uma única computação está contido no componente. Portanto, o componente funcionalmente coeso é:**

> Aquele que não apenas executa a tarefa para a qual foi projetado, mas ele executa apenas essa função e nada mais.

**Coesão funcional é sobre o último: é sobre ter um módulo, um pacote, um componente que serve a um propósito específico. Você pode, por exemplo, ter:**

> Exemplo: uma biblioteca de strings que oferece um conjunto muito rico de funções de programação (concatenação, pesquisa, substituição), mas todas servem a um propósito comum de trabalhar com strings. Portanto, há uma coesão funcional.

---

**A coesão é uma medida ordinal, ou seja, alta ou baixa coesão. A alta coesão geralmente se correlaciona com o acoplamento fraco e e a baixa coesão com acoplamento forte e baixa confiabilidade e robustez.**

**Se os métodos que atendem a uma classe tendem a ser semelhantes em muitos aspectos, diz-se que a classe tem alta coesão. Em um sistema altamente coeso, a legibilidade e a reutilização do código são aumentadas, enquanto a complexidade é mantida gerenciável.**

**A coesão é aumentada se:**
- As funcionalidades embutidas em uma classe, acessadas por meio de seus métodos, têm muito em comum.
- Os métodos realizam um pequeno número de atividades relacionadas, evitando conjuntos de dados grosseiros ou não relacionados.
- Os métodos relacionados estão no mesmo arquivo de origem ou agrupados de outra forma; por exemplo, em arquivos separados, mas no mesmo subdiretório.

**As vantagens da alta coesão (ou "coesão forte") são:**
- Complexidade reduzida do módulo (são mais simples, com menos operações).
- Maior capacidade de manutenção do sistema , porque as alterações lógicas no domínio afetam menos módulos e porque as alterações em um módulo exigem menos alterações em outros módulos.
- Maior capacidade de reutilização do módulo, porque os desenvolvedores de aplicativos encontrarão o componente de que precisam com mais facilidade entre o conjunto coeso de operações fornecidas pelo módulo.

---

#### Tipos de coesão

- Coincidental cohesion (worst)

```cpp
/*
Groups: The function definitions
Parts: The terms on each function
*/
Module A{
  /*
  Implementation of r(x) = 5x + 3
  There is no particular reason to group functions in this way,
  so the module is said to have Coincidental Cohesion.
  */ 
  r(x) = a(x) + b(x) 
  a(x) = 2x + 1
  b(x) = 3x + 2
}
```

- **Logical cohesion**

Coesão lógica é quando partes de um módulo são agrupadas porque são categorizadas logicamente para fazer a mesma coisa mesmo que sejam diferentes por natureza (por exemplo, agrupar todas as rotinas de manipulação de entrada de mouse e teclado ou agrupar todos os modelos, visualizações e controladores em pastas separadas em um padrão MVC).

- **Temporal cohesion**

Coesão temporal é quando partes de um módulo são agrupadas por quando são processadas - as partes são processadas em um determinado momento na execução do programa (por exemplo, uma função que é chamada após capturar uma exceção que fecha arquivos abertos, cria um log de erros e notifica o usuário).

- **Procedural cohesion**

Coesão procedimental é quando partes de um módulo são agrupadas porque sempre seguem uma certa sequência de execução (por exemplo, uma função que verifica as permissões do arquivo e depois abre o arquivo).

- **Communicational cohesion**

Coesão comunicacional é quando partes de um módulo são agrupadas porque operam nos mesmos dados (por exemplo, um módulo que opera no mesmo registro de informações).

- **Sequencial cohesion**

Coesão sequencial é quando partes de um módulo são agrupadas porque a saída de uma parte é a entrada para outra parte como uma linha de montagem (por exemplo, uma função que lê dados de um arquivo e processa os dados).

- **Functional cohesion**

Coesão funcional é quando partes de um módulo são agrupadas porque todas contribuem para uma única tarefa bem definida do módulo (por exemplo, análise léxica de uma string XML). Exemplo:

```cpp
/*
Groups: The function definitions
Parts: The terms on each function
*/
Module A {
  /*
  Implementation of arithmetic operations
  This module is said to have functional cohesion because 
  there is an intention to group simple arithmetic operations
  on it. 
  */
  a(x, y) = x + y
  b(x, y) = x * y
}

Module B {
  /*
  Module B: Implements r(x) = 5x + 3
  This module can be said to have atomic cohesion. The whole
  system (with Modules A and B as parts) can also be said to have functional
  cohesion, because its parts both have specific separate purposes. 
  */
  r(x) = [Module A].a([Module A].b(5, x), 3)
}
```

- **Perfect cohesion (atomic)**

```cpp
Module A {
  // Implementation of r(x) = 2x + 1 + 3x + 2
  // Diz-se que tem coesão perfeita porque não pode ser reduzido mais do que isso 
  r(x) = 5x + 3
}
```
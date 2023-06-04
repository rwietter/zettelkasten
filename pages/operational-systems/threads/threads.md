---
title: Threads
description: Threads são fluxos de execução independentes dentro de um processo.
icon: vscode-icons:file-type-codekit
---

# Threads

Tarefas podem ser implementadas de várias formas, como processos, threads, transações e jobs. Threads são fluxos de execução independentes dentro de um processo. Threads são mais leves que processos, pois compartilham o mesmo espaço de memória e recursos do processo pai. Threads são usadas para implementar aplicações multithread, que são aquelas que executam várias tarefas ao mesmo tempo.

O estado de uma tarefa em um determinado instante é denominado contexto. O contexto de uma tarefa é composto por um conjunto de informações que descrevem o estado da tarefa em um determinado instante, como por exemplo: registradores do processador, pilha de execução, área de memória alocada para a tarefa, etc. O contexto de uma tarefa é salvo quando a mesma é interrompida, e restaurado quando a tarefa é reativada.

Troca de contexto: o ato de suspender uma tarefa e reativar outra é denominado uma troca de contexto.

## Threads

Uma thread é definida como sendo um fluxo de execução independente. Um processo pode conter uma ou mais threads, cada uma executando seu próprio código e compartilhando recursos com as demais threads localizadas no mesmo processo. Cada thread é caracterizada por um código em execução e um pequeno contexto local, o chamado Thread Local Storage (TLS), composto pelos registradores do processador e uma área de pilha em memória, para que a thread possa armazenar variáveis locais e efetuar chamadas de funções. Threads são também utilizadas para implementar fluxos de execução dentro do núcleo do SO, neste caso recebendo o nome de threads de núcleo (em oposição às threads dos processos, denominadas user threads).

### Modelos de Threads

As threads contidas nos processos, definidas no espaço de usuário, devem ser gerenciadas pelo núcleo do sistema operacional. Existem três modelos de threads: N:1, 1:1 e N:M. O modelo N:1 é o mais simples, mas não é escalável. O modelo 1:1 é o mais escalável, mas é mais complexo e custoso. O modelo N:M é uma combinação dos dois anteriores, sendo mais escalável que o modelo 1:1 e mais simples que o modelo N:1.

#### O modelo N:1

Os sistemas operacionais mais antigos suportavam apenas processos sequenciais, com um único fluxo de execução em cada um. No modelo de threads N:1, pois N threads dentro de um processo são mapeadas em uma única thread no núcleo. Esse modelo também é denominado fibers ou ainda green threads.

O modelo de threads N:1 é muito utilizado, por ser leve e de fácil implementação. Como o núcleo somente vê uma thread, a carga de gerência imposta ao núcleo é pequena e não depende do número de threads dentro da aplicação.

### O modelo 1:1

A necessidade de suportar aplicações multithread levou os desenvolvedores de sistemas operacionais a incorporar a gerência dos threads dos processo no núcleo do sistema. Para cada thread de usuário foi então associado um thread correspondente dentro do núcleo, suprimindo com isso a necessidade de bibliotecas de threads. Este é o modelo mais frequente nos sistemas operacionais atuais.

O modelo 1:1 resolve vários problemas: caso uma thread de usuário solicite uma operação bloqueante, somente sua thread de núcleo correspondente será suspensa. Além disso, a distribuição de processamento entre as threads é mais justa e, caso o hardware tenha mais de um processador, mais threads do mesmo processo podem executar ao mesmo tempo, o que não era possível no modelo N:1.

O modelo de threads 1:1 é adequado para a maioria das situações usuais. No entanto, é pouco escalável: a criação de um número muito grande de threads impõe uma carga elevada ao núcleo do sistema, inviabilizando aplicações com muitas tarefas

### O modelo N:M

O conjunto de threads de núcleo associadas a um processo, denominado thread pool, geralmente contém uma thread para cada thread de usuário bloqueada, mais uma thread para cada processador disponível; esse conjunto pode ser ajustado dinamicamente, conforme a necessidade da aplicação.

Ele alia as vantagens de maior interatividade do modelo 1:1 à maior escalabilidade do modelo N:1. Como desvantagens desta abordagem podem ser citadas sua complexidade de implementação e maior custo de gerência dos threads de núcleo, quando comparados ao modelo 1:1.

### Thread safety

Thread safety é um conceito de programação de computadores aplicável no contexto de programas multi-thread. Um código é dito thread-safe se ele apenas manipula estruturas de dados compartilhadas de uma forma que garanta uma execução segura através de várias threads ao mesmo tempo. A segurança de thread é uma propriedade que permite que o código rode em ambientes multi-thread através do restabelecimento de algumas das correspondências entre o fluxo de controle real e o texto do programa, por meio de sincronização.

---

## Aula (Sistemas Operacionais)

Thread é um core da CPU, um processo que executa em uma thread é monothread e um processo que executa em mais de uma thread é multithread. A concorrência permite que tarefas concorram para executar nessas threads, quando executadas em multithread tem mais desempenho, dado que tem mais núcleos do processador processando as tarefas.

Nas threads o processador faz switch entre as tarefas muito rapitamente, para que todas tenham um pequeno tempo de processamento. Ou seja, concorrência tem a ver com dividir o tempo de processamento de tarefas. A concorrência também são assíncronas.

No paralelismo, temos multithreads executando em paralelo, como dois caixas de supermercado operando ao mesmo tempo.

Thread é uma entidade independente de um processo (fluxo de execução de um processo)
- A thread possui um contexto local chamado de Thread Local Storage (TLS), composto pelos registradores e uma pilha em memória para guardar variáveis locais e fazer chamadas de função.

- Processo: unico fluxo de execução
- Threads: multiplos fluxos de execução

Threads, muitas vezes denominadas de processos leves (LWP)

- Cada um core físico tem duas instâncias de threads no contexto de hardware
- No contexto de software, as threads são milhares (1:1, N:M, N:N) - concorrência
- Nas threads de linguagem de programação, embutidas em bibliotecas

- Escalonamento de threads

- O Projeto de software, a cooperação, o desempenho, autonomia foram concebidas pois poderia obter mais desempenho.

- A multithread permite que, por exemplo, 100 processos possam ser dividos entre x threads no processador o que permite a execução em conjunta de multitarefas.

## Threads de Usuário e de Núcleo

- Suporte a thread é fornecido pelo sistema operacional (Kernel-Level Thread)
  - Implementaa através de uma biblioteca de uma determinada linguagem, no caso de uma User-Level Thread (ULT)

- As threads de núcleo também incluem atividades internas como rotinas de drivers e de gerência.

- Para que uma thread existe, ela precisa ser executado dentro de um processo.
- Processos  agrupam recursos de endereçamento e memória
  - Threads são escalonadas pela CPU

## Ciclos de vidas da Thread

- Estado novo: inicio do ciclo
- Estado executável: executa
- Estado de espera: aguarda
- Desconhecido: inanição
  

## Benefícios do uso de threads

- Velocidade de Criação das  Threads
  - as threads são mais fáceis de criar e destruir que os processos pois elas não tem quaisquer recursos associados a elas.
- Capacidade de Resposta
  - as threads são mais fáceis de criar e destruir que os processos pois elas não tem quaisquer recursos associados a elas.
- Compartilhamento de Recursos
  - todos os recursos alocados e utilizados pelo processo aos quais pertencem são compartilhados pelos threads.
- Economia
  - como os threads compartilham recursos dos processos aos quais pertencem, é mais econômico criar e realizar a troca de contexto de threads.
- Arquiteturas Multiprocessadas
  - executar cada uma das threads criadas para um mesmo processo em paralelo
- Desempenho
  - obtido quando há grande quantidade de computação e E/S, os threads permitem que essas atividades se sobreponham e, logo, melhore o desempenho da aplicação


## Modelos de Multithreading

Threads são a unidade básica de  utilização da UCP e compreende
• um ID de thread, um  contador de programa, um  conjunto de registradores  e uma pilha. 
• Cada thread compartilha com os  outros threads do mesmo processo 
• seu código, o espaço de  enderaçamento e outros  recursos, como arquivos e  sinais. 
• Processos com múltiplos threads  podem realizar mais de uma tarefa por vez.

- Um navegador de internet pode fazer um thread para exibir imagens, outro para texto e um terceiropara recuperar dados da rede, de forma independente.

## Modelos de Multithreading

Muitos-para-um: muitas threads de usuário para um de kernel
Um-para-um: cada thread de usuário para cada thread de kernel
Muitos-para-Muitos: muitas threads de usuário para muitas threads de kernel
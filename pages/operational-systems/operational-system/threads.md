# Threads

Processos: programa em execução que contém um único fluxo de execução.
Threads: programa em execução com múltiplos fluxos de execução.

Em sistemas tradicionais, cada processo tem seu espaço de endereçamento individual e apenas um fluxo de execução (thread). Em computadores multiprocessados, podem ter concorrência e paralelismo, mas para isso, é necessário implementar multithread no software.

* Threads, muitas vezes denominados processos leves (light weight process - LWP), compartilham atributos de um processo.
* Para que uma thread possa ser executada ela deve pertencer a algum processo
* Processos com múltiplos threads podem realizar mais de uma tarefa por vez

Essas threads são escalonadas em um processador e cada uma delas pode executar uma série de comandos ou instruções independente de quaisquer outros processos ou threads

## Kernel-Level Thread (KLT)

KLT é gerenciada pelo kernel do sistema operacional. O kernel mantém informações sobre todas as threads em um processo em uma estrutura de dados chamada de TCB (Thread Control Block).

## User-Level Thread (ULT)

ULT é gerenciada pelo próprio processo. O kernel não tem conhecimento sobre a existência de threads. O kernel só vê o processo e o processo só vê as threads. As threads de usuário são mapedas para threads de kernel.

## Ciclo de vida de uma thread

- Novo: quando o processo é criado
- Executando: quando a thread sai de "novo" para execução
- Wait: quando a thread está esperando por algum evento (outra thread entra em execução)
- Sinchronization Wait: a thread espera por um intervalo de tempo especificado.
- Sleeping: a thread é "suspensa" por um tempo determinado

Threads podem comunicar-se através das variáveis globais do processo que as criou. A utilização destas variáveis pode ser controlada através de primitivas de sincronização (monitores, semáforos, ou construções similares).
- Primitivas existem para bloqueio do processo que tenta obter acesso a uma área da memória que está correntemente sendo utilizada por outro processo.


Embora o Linux suporte threads, muitos de seus programas internos não fazem distinção entre processos e threads. Nesse sitema operacional, tanto processos e threads são chamados de tarefas (jobs).

![threads](https://i.postimg.cc/52hjQTdt/Captura-de-tela-de-2023-05-08-15-23-03.png)

---

## Modelos de Multithreading

Threads são a unidade básica de utilização da UCP e compreende
- um ID de thread
- um contador de programa
- um conjunto de registradores
- uma pilha.

Cada thread compartilha com os outros threads do mesmo processo
- seu código
- o espaço de enderaçamento
- sinais
- dados

### Many-to-One (Mx1)

Este modelo mapeia muitos threads de usuário em um thread de kernel. A gerência de threads é feita no espaço de usuário de forma eficiente, mas não é possível executar múltiplos threads em multiprocessadores.

### One-to-One (1x1)

Mapeia cada thread de usuário em um thread de kernel, permite assim, melhor concorrência e execução em paralelo em multiprocessadores.

### Many-to-Many (MxN)

O Modelo em questão multiplexa muitos threads de um usuário em um número menor (porventura igual) de threads de kernel.

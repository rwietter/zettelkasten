# Software

Um software é a derivação de um conjunto de: tradutor, interpretador, linker, loader, depurador, entre outros.

## Tradutor

Um utilitário tradutor, tem a função de converter toda a representação simbólica das instruções, para código de máquina

Fonte -> Tradutor -> programa objeto

## Interpretador

O interpretador é considerado um tradutor que não gera módulo-objeto. A partir de um programa-fonte escrito em linguagem de alto nível, o interpretador, durante a execução do programa, traduz cada instrução e a executa imediatamente

## Linker

Linkerou editor de ligaçãoé o utilitário responsável por gerar, a partir de um ou mais módulos-objeto, um único programa executável. Suas funções básicas são resolver todas as referências simbólicas existentes entre os módulos e reservar memória para a execução do programa

## Loader

Oloaderou carregadoré o utilitário responsável por carregar na memória principal um programa para ser executado. O procedimento de carga varia com o código gerado pelo linkere em função deste, o loaderé classificado como sendo do tipo absoluto ou relocável.

## Depurador

O de puradorou debugger é o utilitário responsável por auxiliar o programador na tarefa de depuração de um programa. A depuração de um programa consiste em localizar e corrigir os erros existentes no programa.

---

## Arquitetura de Computadores

A maioria dos computadores monoprocessados atuais segue uma arquitetura básica definida nos anos 40 por Von Neumann, conhecida por “arquitetura Von Neumann”. A principal característica desse modelo é a ideia de “programa-armazenado”, ou seja, o programa a ser executado reside na memória junto com os dados. Os principais elementos constituintes do computador estão interligados por um ou mais barramentos (para a transferência de dados, endereços e sinais de controle).

O centro do sistema de computação é o processador. Ele é responsável por continuamente ler instruções e dados da memória ou dos periféricos, processá-los e enviar os resultados de volta à memória ou a outros periféricos. Em sua forma mais simples, um processador convencional é constituído de uma unidade lógica e aritmética (ULA), que realiza os cálculos e operações lógicas, um conjunto de registradores para armazenar dados de trabalho e alguns registradores para funções especiais (contador de programa, ponteiro de pilha, flags de status, etc.).

Processadores modernos são incrivelmente mais complexos, podendo possuir diversos núcleos de processamento (os chamados cores), cada um contendo vários processadores lógicos internos (hyperthreading). Além disso, um computador pode conter vários processadores trabalhando em paralelo. Outro aspecto diz respeito à memória, que pode comportar vários níveis de cache, dentro do processador e na placa-mãe.

Todas as transferências de dados entre processador, memória e periféricos são feitas através dos barramentos: o barramento de endereços indica a posição de memória (ou o dispositivo) a acessar, o barramento de controle indica a operação a efetuar (leitura ou escrita) e o barramento de dados transporta a informação a ser transferida entre o processador e a memória ou um controlador de dispositivo.

O acesso do processador à memória é mediado por um controlador específico (que pode estar fisicamente dentro do próprio chip do processador): a Unidade de Gerência de Memória (MMU - Memory Management Unit).

Os periféricos do computador (discos, teclado, monitor, etc.) são acessados através de circuitos eletrônicos específicos, denominados controladores.

---

## Concorrência

O conceito de concorrência é o princípio básico para o projeto e a implementação dos sistemas multiprogramáveis. Ex.: CPU executando instruções ao mesmo tempo em que outras operações (E/S) executam tarefas de forma concorrente pelo sistema.

Nos sistemas multiprogramáveis, vários programas podem estar residentes em memória, concorrendo pela utilização do processador.

---

## Interrupções e exceções

Durante a execução de um programa, alguns eventos inesperados podem ocorrer, ocasionando um desvio forçado no seu fluxo normal de execução. Esses eventos advém de sinalizações de algum dispositivo de hardware externo ao ambiente memória/processador.

### Interrupções

A comunicação entre o processador e os dispositivos se dá através do acesso às portas de entrada/saída, que podem ser lidas e/ou escritas pelo processsador. Esse acesso é feito por iniciativa do processador, quando este precisa ler ou escrever dados no dispositivo. Entretanto, muitas vezes um dispositivo precisa informar o processador rapidamente sobre um evento interno, como a chegada de um pacote de rede, um clique de mouse ou a conclusão de uma operação de disco. Neste caso, o controlador tem duas alternativas:

- Aguardar até que o processador o consulte, o que poderá ser demorado caso o processador esteja ocupado com outras tarefas (o que geralmente ocorre);
- Notificar o processador, enviando a ele uma requisição de interrupção (IRQ Interrupt ReQuest) através do barramento de controle.

Ao receber a requisição de interrupção, os circuitos do processador suspendem seu fluxo de execução corrente e desviam para um endereço predefinido, onde se encontra uma rotina de tratamento de interrupção (interrupt handler). Essa rotina é responsável por tratar a interrupção, ou seja, executar as ações necessárias para atender o dispositivo que a gerou. Ao final da rotina de tratamento da interrupção, o processador retoma o código que estava executando quando recebeu a requisição.

![img](https://uploaddeimagens.com.br/images/004/456/993/original/Captura_de_tela_de_2023-05-07_19-30-31.png?1683498850.jpg)

As interrupções permitem construir funções de entrada/saída assíncronas, ou seja, o processador não precisa esperar a conclusão de cada operação solicitada a um dispositivo, pois o dispositivo gera uma interrupção para “avisar” o processador quando a operação for concluída.

As interrupções podem ser geradas:
- Por hardware: quando um dispositivo de E/S precisa de atenção do processador;
- Pelo programa do usuário (entrada de dados pela console ou teclado)
- Pelo sistema operacional (ao término da fatia de tempo do processador destinada ao programa)

> **Ops: as interrupções sempre são tratadas pelo Sistema Operacional.**

### Exceções

Ações como instruções ilegais (inexistentes ou com operandos inválidos), tentativas de divisão por zero ou outros erros de software disparam exceções, que resultam na ativação de uma rotina de tratamento de exceção, usando o mesmo mecanismo das interrupções.

Na maioria das vezes, a exceção provoca um erro fatal no sistema, causando o término anormal do programa. As exceções devem ser tratadas dentro do programa para evitar esse término anormal.

Ex Intel Pentium:

| IRQ    | Descrição                                  |
| ------ | ------------------------------------------ |
| 0      | divide error                               |
| 1      | debug exception                            |
| 2      | null interrupt                             |
| 3      | breakpoint                                 |
| 4      | INTO-detected overflow                     |
| 5      | bound range exception                      |
| 6      | invalid opcode                             |
| 7      | device not available                       |
| 8      | double fault                               |
| 9      | coprocessor segment overrun                |
| 10     | invalid task state segment                 |
| 11     | segment not present                        |
| 12     | stack fault                                |
| 13     | general protection                         |
| 14     | page fault                                 |
| 15     | Intel reserved                             |
| 16     | floating point error                       |
| 17     | alignment check                            |
| 18     | machine check                              |
| 19-31  | Intel reserved                             |
| 32-255 | maskable interrupts (devices & exceptions) |

---

## Níveis de Privilegio

Para permitir diferenciar os privilégios de execução dos diferentes tipos de software, os processadores modernos implementam níveis de privilégio de execução. Esses níveis são controlados por flags especiais na CPU, que podem ser ajustados em função do tipo de código em execução.

Os privilégios de acesso a recursos do sistema operacional são definidos por níveis de acesso, que podem ser:

- **nível 0**: acesso total ao sistema;
- **nível 1**: acesso restrito a recursos do sistema;
- **nível 2**: acesso restrito a recursos do usuário.
- **nível 3**: acesso restrito a recursos do usuário.

Dessa forma, o núcleo do sistema operacional, bem como drivers e o código de inicialização, executam em modo núcleo, enquanto os programas utilitários e os aplicativos executam em modo usuário. Os flags que definem o nível de privilégio só podem ser modificados por código executando no nível núcleo, o que impede usuários maliciosos de contornar essa barreira de proteção.

Além da proteção oferecida pelos níveis de privilégio, o núcleo do sistema operacional pode configurar a unidade de gerência de memória (MMU) para criar uma área de memória exclusiva para cada aplicação, isolada das demais aplicações e do núcleo. As aplicações não podem contornar essa barreira de memória, pois a configuração da MMU só pode ser alterada em modo supervisor, ou seja, pelo próprio núcleo.

---

## Chamadas de sistema

O confinamento de cada aplicação em sua área de memória, imposto pela MMU aos acessos em memória em nível usuário, provê robustez e confiabilidade ao sistema, pois garante que uma aplicação não poderá interferir nas áreas de memória de outras aplicações ou do núcleo.

Entretanto, essa proteção introduz um novo problema: invocar, a partir da aplicação, as rotinas oferecidas pelo núcleo para o acesso ao hardware.

Quando ocorre uma interrupção, a execução é desviada para um endereço predefinido (desvio incondicional) e o processador passa a operar em nível núcleo (elevação de privilégio)A solução desse problema está no mecanismo de interrupção. Os processadores atuais implementam uma instrução específica que usa esse mesmo mecanismo para ativar rotinas do núcleo. Ao ser executada, essa instrução comuta o processador para o nível núcleo e executa o código contido em uma rotina predefinida, de forma similar a uma interrupção de hardware. Por essa razão, esse mecanismo é denominado interrupção de software, ou trap.

A ativação de uma rotina do núcleo usando esse mecanismo é denominada chamada de sistema (system call ou syscall). Os sistemas operacionais definem chamadas de sistema para todas as operações envolvendo o acesso a recursos de baixo nível (periféricos, arquivos, alocação de memória, etc.) ou abstrações lógicas (criação e encerramento de tarefas, operadores de sincronização, etc.). Geralmente as chamadas de sistema são oferecidas para as aplicações em modo usuário através de uma biblioteca do sistema (system library), que prepara os parâmetros, invoca a chamada e, no retorno desta, devolve à aplicação os resultados obtidos.

Nos processadores modernos a chamada de sistema e seu retorno são feitos usando instruções específicas como sysenter/sysexit (x86 32 bits), ou syscall/sysret (x86 64 bits). Antes de invocar a chamada de sistema, alguns registradores do processador são preparados com valores específicos, como o número da operação desejada (opcode, geralmente no registrador AX), o endereço dos parâmetros da chamada, etc. As regras para o preenchimento dos registradores são específicas para cada chamada de sistema, em cada sistema operacional.

---

## Buffer

O buffer é um espaço temporário de armazenamento de dados usado pelo sistema operacional para melhorar a eficiência da leitura e escrita de arquivos.

Quando o sistema operacional lê ou grava em um arquivo, ele geralmente o faz em blocos de dados maiores, em vez de ler ou gravar cada byte individualmente. O buffer é usado para armazenar temporariamente esses blocos de dados enquanto o sistema operacional os processa, melhorando o desempenho geral do sistema.

O objetivo é normalizar a velocidade de transferência de dados entre dispositivos de entrada/saída e a memória principal, que é mais rápida.

---

## Spool

Spool (Simultaneous Peripheral Operations On-line) é uma técnica de gerenciamento de dispositivos de entrada/saída (E/S) em sistemas operacionais. O objetivo do spooling é permitir que várias tarefas de E/S possam ser executadas de forma concorrente e eficiente.

Na técnica de spooling, os dados a serem impressos ou gravados em um dispositivo de armazenamento são armazenados em uma área temporária de armazenamento conhecida como spool. O spool é gerenciado pelo sistema operacional, que garante que as tarefas sejam executadas na ordem correta.

Ao utilizar o spooling, as tarefas de E/S podem ser colocadas em uma fila e executadas em segundo plano, enquanto o processador pode continuar a executar outras tarefas. Isso permite um melhor aproveitamento dos recursos do sistema, reduzindo o tempo de espera e melhorando a eficiência geral.

Spooling é amplamente utilizado em sistemas operacionais para gerenciar impressoras, discos rígidos, fitas magnéticas e outros dispositivos de E/S. É uma técnica importante para melhorar o desempenho e a eficiência de sistemas operacionais multiusuários e multitarefa.

---

## Reentrância

A reentrância é a capacidade de um código reentrante, ou seja, executável, ser compartilhado entre usuários com apenas uma cópia do programa na memória. Em outras palavras: Na computação, um programa ou subrotina é chamada de reentrante se puder ser invocada múltiplas vezes de forma segura e concorrente.

Ou seja, é o compartilhamento na memória entre diferentes usuários para não ocasionar cópias de N processos e usar memória exacerbada.

---

## Segurança e Proteção do Sistema

Todo o controle da segurança do sistema é implementado pelo sistema operacional, a partir de mecanismos como:
- grupos de usuários
- perfis de usuários
- direitos de acesso

---

## Operações de Entrada e Saída

As operações de E/S no computador funcionam de três formas básicas:
- por programa
- por interrupção
- por acesso direto a memória (DMA)

O canal de E/S funciona então como uma interface entre os controladores e a CPU.

DMA (Direct Memory Access) é uma técnica usada em sistemas de computação para permitir que dispositivos de entrada e saída acessem diretamente a memória do sistema, sem a intervenção da CPU. Com a DMA, dispositivos como placas de som, placas de rede e unidades de disco rígido podem acessar a memória do sistema de forma rápida e eficiente, sem ter que passar pela CPU para cada operação.

Ao usar DMA, o dispositivo de entrada e saída envia uma solicitação à controladora DMA para acessar a memória do sistema. A controladora DMA, por sua vez, coordena o acesso do dispositivo à memória, sem a intervenção direta da CPU. Isso pode acelerar significativamente a taxa de transferência de dados e reduzir a carga na CPU.

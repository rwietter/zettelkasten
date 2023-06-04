# Aula 2 e 3 - Estrutura de um SO

O sistema operacional executa diretamente sobre o hardware, abstraindo e gerenciando recursos para as aplicações. Para que o SO possa cumprir suas funções com eficiência e confiabilidade

Um SO é composto por diversos componentes com objetivos e funcionalidades complementares. Alguns dos componentes mais relevantes são:

- Kernel: é o componente central do SO. Ele é responsável por gerenciar os recursos do sistema, como processadores, memória, dispositivos de entrada e saída, etc. O kernel é o componente que faz a ponte entre o hardware e os aplicativos. Ele é responsável por gerenciar a alocação de recursos, a comunicação entre os aplicativos e o hardware, a execução de processos, a troca de contexto, gerência de tarefas, gerência de proteção, gerência de arquivos, gerência de memória, protocolos de rede, gerência de energia, etc.
- Bot code: a inicialização do hardware requer uma série de tarefas complexas, como reconhecer os dispositivos instalados, testá-los e configurá-los adequadamente para seu uso posterior. Outra tarefa importante é carregar o núcleo do sistema operacional em memória e iniciar sua execução.
- Drivers: módulos de código específicos para acessar os dispositivos físicos. Existe um driver para cada tipo de dispositivo. Muitas vezes o driver é construído pelo próprio fabricante do hardware.
- Programas Utilitários: são programas que facilitam o uso do sistema computacional, fornecendo funcionalidades complementares ao núcleo, como formatação de discos e mídias, configuração de dispositivos, manipulação de arquivos (mover, copiar, apagar), interpretador de comandos, terminal, interface gráfica, gerência de janelas, etc.

A camada mais baixa do sistema operacional, que constitui o kernel, executa em um modo especial de operação do processador, denominado **modo privilegiado ou modo sistema**. Os demais programas e aplicações executam em um modo denominado modo usuário.

---

### Arquitetura de Computadores

A maioria dos computadores monoprocessados atuais segue uma arquitetura básica definida nos anos 40 por János (John) Von Neumann, conhecida por “arquitetura Von Neumann”. A principal característica desse modelo é a ideia de “programa-armazenado”, ou seja, o programa a ser executado reside na memória junto com os dados. Os principais elementos constituintes do computador estão interligados por um ou mais barramentos (para a transferência de dados, endereços e sinais de controle).

O centro do sistema de computação é o processador. Ele é responsável por continuamente ler instruções e dados da memória ou dos periféricos, processá-los e enviar os resultados de volta à memória ou a outros periféricos. Em sua forma mais simples, um processador convencional é constituído de uma unidade lógica e aritmética (ULA), que realiza os cálculos e operações lógicas, um conjunto de registradores para armazenar dados de trabalho e alguns registradores para funções especiais (contador de programa, ponteiro de pilha, flags de status, etc.).

Processadores modernos são incrivelmente mais complexos, podendo possuir diversos núcleos de processamento (os chamados cores), cada um contendo vários processadores lógicos internos (hyperthreading). Além disso, um computador pode conter vários processadores trabalhando em paralelo. Outro aspecto diz respeito à memória, que pode comportar vários níveis de cache, dentro do processador e na placa-mãe.

Todas as transferências de dados entre processador, memória e periféricos são feitas através dos barramentos: o barramento de endereços indica a posição de memória (ou o dispositivo) a acessar, o barramento de controle indica a operação a efetuar (leitura ou escrita) e o barramento de dados transporta a informação a ser transferida entre o processador e a memória ou um controlador de dispositivo.

O acesso do processador à memória é mediado por um controlador específico (que pode estar fisicamente dentro do próprio chip do processador): a Unidade de Gerência de Memória (MMU - Memory Management Unit).

Os periféricos do computador (discos, teclado, monitor, etc.) são acessados através de circuitos eletrônicos específicos, denominados controladores.

---

### Interrupções e exceções

#### Interrupções

A comunicação entre o processador e os dispositivos se dá através do acesso às portas de entrada/saída, que podem ser lidas e/ou escritas pelo processsador. Esse acesso é feito por iniciativa do processador, quando este precisa ler ou escrever dados no dispositivo. Entretanto, muitas vezes um dispositivo precisa informar o processador rapidamente sobre um evento interno, como a chegada de um pacote de rede, um clique de mouse ou a conclusão de uma operação de disco. Neste caso, o controlador tem duas alternativas:

- aguardar até que o processador o consulte, o que poderá ser demorado caso o processador esteja ocupado com outras tarefas (o que geralmente ocorre);
- notificar o processador, enviando a ele uma requisição de interrupção (IRQ Interrupt ReQuest) através do barramento de controle.

Ao receber a requisição de interrupção, os circuitos do processador suspendem seu fluxo de execução corrente e desviam para um endereço predefinido, onde se encontra uma rotina de tratamento de interrupção (interrupt handler). Essa rotina é responsável por tratar a interrupção, ou seja, executar as ações necessárias para atender o dispositivo que a gerou. Ao final da rotina de tratamento da interrupção, o processador retoma o código que estava executando quando recebeu a requisição.

As interrupções permitem construir funções de entrada/saída assíncronas, ou seja, o processador não precisa esperar a conclusão de cada operação solicitada a um dispositivo, pois o dispositivo gera uma interrupção para “avisar” o processador quando a operação for concluída.

#### Exceções

Ações como instruções ilegais (inexistentes ou com operandos inválidos), tentativas de divisão por zero ou outros erros de software disparam exceções no processador, que resultam na ativação de uma rotina de tratamento de exceção, usando o mesmo mecanismo das interrupções.

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

### Níveis de Privilegio

Para permitir diferenciar os privilégios de execução dos diferentes tipos de software, os processadores modernos implementam níveis de privilégio de execução. Esses níveis são controlados por flags especiais na CPU, que podem ser ajustados em função do tipo de código em execução.

Os privilégios de acesso a recursos do sistema operacional são definidos por níveis de acesso, que podem ser:

- **nível 0**: acesso total ao sistema;
- **nível 1**: acesso restrito a recursos do sistema;
- **nível 2**: acesso restrito a recursos do usuário.
- **nível 3**: acesso restrito a recursos do usuário.

Dessa forma, o núcleo do sistema operacional, bem como drivers e o código de inicialização, executam em modo núcleo, enquanto os programas utilitários e os aplicativos executam em modo usuário. Os flags que definem o nível de privilégio só podem ser modificados por código executando no nível núcleo, o que impede usuários maliciosos de contornar essa barreira de proteção.

Além da proteção oferecida pelos níveis de privilégio, o núcleo do sistema operacional pode configurar a unidade de gerência de memória (MMU) para criar uma área de memória exclusiva para cada aplicação, isolada das demais aplicações e do núcleo. As aplicações não podem contornar essa barreira de memória, pois a configuração da MMU só pode ser alterada em modo supervisor, ou seja, pelo próprio núcleo.

---

### Chamadas de sistema

O confinamento de cada aplicação em sua área de memória, imposto pela MMU aos acessos em memória em nível usuário, provê robustez e confiabilidade ao sistema, pois garante que uma aplicação não poderá interferir nas áreas de memória de outras aplicações ou do núcleo.

Entretanto, essa proteção introduz um novo problema: invocar, a partir da aplicação, as rotinas oferecidas pelo núcleo para o acesso ao hardware.

Quando ocorre uma interrupção, a execução é desviada para um endereço predefinido (desvio incondicional) e o processador passa a operar em nível núcleo (elevação de privilégio)A solução desse problema está no mecanismo de interrupção. Os processadores atuais implementam uma instrução específica que usa esse mesmo mecanismo para ativar rotinas do núcleo. Ao ser executada, essa instrução comuta o processador para o nível núcleo e executa o código contido em uma rotina predefinida, de forma similar a uma interrupção de hardware. Por essa razão, esse mecanismo é denominado interrupção de software, ou trap.

A ativação de uma rotina do núcleo usando esse mecanismo é denominada chamada de sistema (system call ou syscall). Os sistemas operacionais definem chamadas de sistema para todas as operações envolvendo o acesso a recursos de baixo nível (periféricos, arquivos, alocação de memória, etc.) ou abstrações lógicas (criação e encerramento de tarefas, operadores de sincronização, etc.). Geralmente as chamadas de sistema são oferecidas para as aplicações em modo usuário através de uma biblioteca do sistema (system library), que prepara os parâmetros, invoca a chamada e, no retorno desta, devolve à aplicação os resultados obtidos.

Nos processadores modernos a chamada de sistema e seu retorno são feitos usando instruções específicas como sysenter/sysexit (x86 32 bits), ou syscall/sysret (x86 64 bits). Antes de invocar a chamada de sistema, alguns registradores do processador são preparados com valores específicos, como o número da operação desejada (opcode, geralmente no registrador AX), o endereço dos parâmetros da chamada, etc. As regras para o preenchimento dos registradores são específicas para cada chamada de sistema, em cada sistema operacional.

---

# Parte 2 - Estrutura de um Sistema Operacional

Um SO é formado por um conjunto de rotinas (kernel) que oferece serviços aos usuários e às suas aplicações.

A estrutura de um SO depende da concepção e arquitetura, mas basicamente é composta por:
- Funções do núcleo
- Segurança e proteção do sistema
- Modos de acesso
- Rotinas do sistema
- System calls
- Linguagens de comandos
- Ativação/desativação do sistema

## Funções do núcleo

As rotinas do kernel são executadas concorrentemente sem uma ordem predefinida, com base em eventos dissociados do tempo (eventos assíncronos). Muitos desse eventos estão relacionados ao HW e as tarefas internas do próprio SO.

## Segurança e proteção do sistema

Em um ambiente de multiprogramação, diversos usuários estarão compartilhando os mesmos recursos como memoria, CPU e dispositivos de E/S. O SO deve garantir a confiabilidade na execução concorrente de todos os programas e nos dados dos usuários, além da integridade do próprio SO.

Problemas de segurança e proteção podem ser causados por:

- Um programa monopolizar o uso de forma integral da CPU
- Acesso a diferentes endereços de memória por programas em execução
- Acesso de forma concorrente a um mesmo arquivo presente no HD

Para estes e demais problemas originados pelo ambiente multiprogramável, o SO deve implementar mecanismos de proteção que controlem o acesso concorrente aos diversos recursos do sistema.

## Modos de acesso

Muitas das principais implementações de segurança de um SO utilizam um mecanismo presente no HW dos CPU, conhecido como modo de acesso.

Em geral, os CPUspossuem dois modos de acesso: modo kernel e modo usuário. O modo kernel é utilizado pelo SO e pelos programas que o compõem, enquanto o modo usuário é utilizado pelos programas de aplicação.

Quando o processador trabalha no modo usuário, uma aplicação só pode executar instruções conhecidas como não-privilegiadas.

**omodo de acesso é determinado por um conjunto de bits, localizados no registrador de status do processador, que indica o modo de acesso corrente. Por intermédio desse registrador, o HW verifica se a instrução pode ou não ser executada.**

## Rotinas do sistema (system calls)

As rotinas do SO compõem o núcleo do sistema, oferecendo serviços aos usuários e suas aplicações. Para que um programa possa utilizar os serviços oferecidos pelo núcleo, ele deve invocar uma rotina do sistema, que é uma rotina especial que executa em modo kernel. System calls são portas de entrada para o núcleo do SO.

O que acontece quando um programa executa uma rotina do sistema?

1. O programa executa uma instrução de chamada de sistema (system call)
2. Salva o estado do processador (registradores, pilha, etc)
3. Altera o modo de acesso para modo kernel
4. Executa a rotina do sistema
5. Altera o modo de acesso para modo usuário
6. Restaura o estado do processador

## Linguagens de comandos

A linguagem de comandos, ou linguagem de controle, permite que o usuário se comunique de uma forma simples com o SO, permitindo realizar diversas tarefas como: criar, ler ou eliminar arquivos, consultar diretórios ou verificar a data e hora armazenadas no sistema. Desta forma, o usuário dispõe de uma interface direta com o SO.

- dir
- cd
- mkdir
- type
- copy
- del

De uma modo geral permitem a otimização de tarefas:

- Execução de comandos em lote (batch)
- Arquivos de comando
- Shell Script

## Ativação/desativação do sistema

Os componentes do SO devem ser carregado para a RAM toda vez que o PC é ligado por intermédio de um procedimento denominado ativação do sistemaou boot.

O processo de boot, se dá da seguinte forma:

- Execução de um programa chamado de boot loader, localizado em um endereço fixo de uma memória ROM da máquina;
- Este programa chama a execução de outro programa conhecido como POST, que identifica possíveis problemas de HW do equipamento;
- Próximo passo é verificar se existe algo SO nos dispositivos de armazenamento residentes;
- Caso o passo anterior seja positivo, um conjunto de instruções é carregado para a memória e localizado em um bloco específico do dispositivo conhecido como setor de boot;
- A partir da execução deste código, o SO é finalmente carregado para a memória principal;
- Além da carga, a ativação do sistema consiste também na execução de arquivos de inicialização onde são especificados procedimentos de customização e configuração de HW e SW específicos para cada ambiente.

**Desativação**

- Na maioria dos sistemas existe o processo de desativação ou shutdown;
- Este procedimento permite que as aplicações e componentes do SO sejam desativados ordenadamente, garantindo, desta forma, sua integridade.

## Arquitetura do Núcleo

O projeto de SO é bastante complexo e deve atender a diversos requisitos, algumas vezes conflitantes, como:

- Confiabilidade, portabilidade, fácil manutenção, flexibilidade e desempenho.

O projeto do sistema depende muito da arquitetura do HW a ser utilizado e do tipo de sistema que se deseja construir:

- Batch, tempo compartilhado, monousuário, multiusuário, tempo real, etc.
# Aula 1 - Sistemas Operacionais

O Sistema Operacional (SO) é um programa que gerencia os recursos de um computador. Ele é responsável por gerenciar a memória, os dispositivos de entrada e saída, os processos e as threads. O SO é o responsável por fazer a comunicação entre o hardware e o software.

Suas rotinas são executadas concorrentemente em função de eventos assíncronos ou seja, que podem ocorrer a qualquer momento.

Ele fornece uma abstract layer para o hardware, ou seja, ele fornece uma interface para o hardware, de forma que o software não precisa se preocupar com os detalhes do hardware.

Os drivers lidam com o hardware e fornecem uma interface para ler e escrever blocos de dados, sem entrar nos detalhes. Sistemas operacionais contêm muitos drivers para controlar dispositivos de E/S, por exemplo, um driver para o teclado, um driver para o mouse, um driver para o disco rígido, etc.

As funcionalidades do sistema operacional geralmente são interdependentes: por exemplo, a gerência do processador depende de aspectos da gerência de memória, assim como a gerência de memória depende da gerência de dispositivos e da gerência de proteção.

---

## Modo Núcleo

O SO é executado em um modo especial chamado de modo núcleo. Nesse modo, o SO tem acesso direto ao hardware, e pode executar instruções de baixo nível. O SO é executado em modo núcleo para que ele possa gerenciar os recursos do computador.

O sistema operacional, opera em modo núcleo (supervisor). Nesse modo ele tem acesso completo a todo o hardware e pode executar qualquer instrução que a máquina forneça capaz de executar. O resto do software opera em **modo usuário**, no qual **apenas um subconjunto das instruções da máquina está disponível**. Em particular, aquelas instruções que afetam o controle da máquina ou realizam E/S (Entrada/Saída) são proibidas para programas de modo usuário.

Tudo o que está sendo executado em modo núcleo faz claramente parte do sistema operacional, mas alguns programas executados fora dele também podem ser considerados uma parte dele, ou pelo menos estão associados a ele de modo próximo. Por exemplo, o compilador de um sistema operacional é um programa que está sendo executado em modo usuário, mas é parte do sistema operacional, pois é usado para compilar o próprio sistema operacional. O mesmo vale para o editor de texto, o navegador, o interpretador de comandos, etc.

---

## Gerenciamento de Recursos

### Multiplexação de Tempo

O SO é responsável por gerenciar o tempo de CPU. Ele faz isso através da multiplexação de tempo. A multiplexação de tempo é a capacidade de um sistema operacional de executar vários processos em um único processador, alternando entre eles rapidamente, de forma que cada processo pareça estar sendo executado em um processador dedicado. A multiplexação de tempo é feita através de um mecanismo chamado de **context switch**. Por exemplo, o SO pode executar um processo por 1 milissegundo, depois executar outro processo por 1 milissegundo, e assim por diante.

### Multiplexação de Espaço

Em vez de os clientes se revezarem, cada um tem direito a uma parte do recurso. Por exemplo, a memória principal é normalmente dividida entre vários programas sendo executados, de modo que cada um pode ser residente ao mesmo tempo (por exemplo, a fim de se revezar usando a CPU). Presumindo que há memória suficiente para manter múltiplos programas, é mais eficiente manter vários programas na memória ao mesmo tempo do que dar a um deles toda ela, especialmente se o programa precisa apenas de uma pequena fração do total.

Alocar espaço de disco e controlar quem está usando quais blocos do disco é uma tarefa típica do sistema operacional. O SO pode escalonar o espaço de memória principal requerido por um processo, alocando e desalocando blocos de memória conforme necessário, também pode alocar espaço na memória virtual, que é um espaço de armazenamento em disco que é usado como se fosse memória principal.

---

## Categorias de Sistemas Operacionais

### Batch

Todos os programas a executar são colocados em uma fila, com seus dados e demais informações para a execução. O processador recebe os programas e os processa sem interagir com os usuários, o que permite um alto grau de utilização do sistema. Atualmente, este conceito se aplica a sistemas que processam tarefas sem interação direta com os usuários, como os sistemas de processamento de transações bancárias. Além disso, o termo “em lote” também é usado para designar um conjunto de comandos que deve ser executado em sequência, sem interferência do usuário.

### Multiprocessadores

Um modo cada vez mais comum de obter potência computacional é conectar múltiplas CPUs em um único sistema. Dependendo de como elas estiverem conectadas e o que é compartilhado, esses sistemas são denominados:

- computadores paralelos;
- multicomputadores;
- multiprocessadores.

Estes são divididos em fortemente acopladose fracamente acoplados:

- Fortemente acoplados: vários CPUscompartilham uma mesma memória física e dispositivos de E/S sendo gerenciados por apenas um SO (multiprocessadores).
- Fracamente acoplados: dois ou mais sistemas computacionais conectados através de linhas de comunicação (multicomputadores/clusters).

### De Rede

Um sistema operacional de rede deve possuir suporte à operação em rede, ou seja, a capacidade de oferecer às aplicações locais recursos que estejam localizados em outros computadores da rede, como arquivos e impressoras.

### Distribuído

Em um sistema operacional distribuído, os recursos de cada computador estão disponíveis a todos na rede, de forma transparente aos usuários. Ao lançar uma aplicação, o usuário interage com sua interface, mas não sabe onde ela está executando ou armazenando seus arquivos: o sistema é quem decide, de forma transparente ao usuário.

### Multiusuário

Um sistema operacional multiusuário deve suportar a identificação do “dono” de cada recurso dentro do sistema (arquivos, processos, áreas de memória, conexões de rede) e impor regras de controle de acesso para impedir o uso desses recursos por usuários não autorizados.

### Servidor

Um sistema operacional servidor é um sistema operacional que fornece serviços para outros computadores da rede. Um sistema operacional servidor pode ser um sistema operacional de rede, um sistema operacional distribuído ou um sistema operacional multiusuário.

### Desktop

Um sistema operacional desktop é um sistema operacional que fornece um ambiente de trabalho para um único usuário. O ambiente de trabalho é composto por uma interface gráfica que permite a interação com o usuário, e por um conjunto de aplicativos que podem ser executados pelo usuário.

### Mobile

Um sistema operacional mobile é um sistema operacional que fornece um ambiente de trabalho para um único usuário, mas que é executado em um dispositivo móvel, como um smartphone ou um tablet.

### Embarcado

Um sistema operacional é dito embarcado (embutido ou embedded) quando é construído para operar sobre um hardware com poucos recursos de processamento, armazenamento e energia, como um microcontrolador ou um microprocessador.

### Real-Time

são sistemas nos quais o tempo é essencial. Ao contrário da ideia usual, um sistema operacional de tempo real não precisa ser necessariamente ultrarrápido; sua característica essencial é ter um comportamento temporal previsível, ou seja, seu tempo de resposta deve ser previsível no melhor e no pior caso de operação. A estrutura interna de um sistema operacional de tempo real deve ser construída de forma a minimizar esperas e latências imprevisíveis, como tempos de acesso a disco e sincronizações excessivas.

---

## Tipos de Sistemas Operacionais

### Sistemas Monoprogramáveis (Monotarefa)

Voltados tipicamente para a execução de um único programa, ou seja, qualquer outra aplicação, para ser executada, deveria aguardar o término do programa corrente. Neste tipo de sistema, o processador, a memória e os periféricos permanecem exclusivamente dedicados à execução de um único programa.

### Sistemas Multiprogramáveis / Multitarefa

Neste tipo de sistema os recursos computacionais são compartilhados entre os diversos usuários e aplicações. Enquanto um programa espera por um evento, outros programas podem estar processando neste mesmo intervalo de tempo. O sistema operacional se incumbe de gerenciar o acesso concorrente aos seus diversos recursos.

### Sistemas Multiusuários

Permitem o acesso simultâneo de múltiplos usuários ao computador. Ex.: um servidor Linux onde múltiplos usuários têm acesso via SSH ao shell do sistema ao mesmo tempo.
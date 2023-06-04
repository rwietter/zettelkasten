# Considerações

O sistema operacional executa diretamente sobre o hardware, abstraindo e gerenciando recursos para as aplicações.

Um SO é composto por diversos componentes com objetivos e funcionalidades complementares. Alguns dos componentes mais relevantes são:

- Kernel: é o componente central do SO. Ele é responsável por gerenciar os recursos do sistema, como processadores, memória, dispositivos de entrada e saída, etc. O kernel é o componente que faz a ponte entre o hardware e os aplicativos. Ele é responsável por gerenciar a alocação de recursos, a comunicação entre os aplicativos e o hardware, a execução de processos, a troca de contexto, gerência de tarefas, gerência de proteção, gerência de arquivos, gerência de memória, protocolos de rede, gerência de energia, etc.
- Bot code: a inicialização do hardware requer uma série de tarefas complexas, como reconhecer os dispositivos instalados, testá-los e configurá-los adequadamente para seu uso posterior. Outra tarefa importante é carregar o núcleo do sistema operacional em memória e iniciar sua execução.
- Drivers: módulos de código específicos para acessar os dispositivos físicos. Existe um driver para cada tipo de dispositivo. Muitas vezes o driver é construído pelo próprio fabricante do hardware.
- Programas Utilitários: são programas que facilitam o uso do sistema computacional, fornecendo funcionalidades complementares ao núcleo, como formatação de discos e mídias, configuração de dispositivos, manipulação de arquivos (mover, copiar, apagar), interpretador de comandos, terminal, interface gráfica, gerência de janelas, etc.

A camada mais baixa do sistema operacional, que constitui o kernel, executa em um modo especial de operação do processador, denominado **modo privilegiado ou modo sistema**. Os demais programas e aplicações executam em um modo denominado modo usuário.

- Um SO não é executado de forma linear. Suas rotinas são executadas concorrentemente em função de eventos assíncronos.
- O Sistema Operacional é aquela parte do software executada em modo supervisorou modo núcleo

## Sistemas Monoprogramáveis / Monotarefa

Neste tipo de sistema, o processador, a memória e os periféricos permanecem exclusivamente dedicados à execução de um único programa. Qualquer outra aplicação, para ser executada, deve aguardar o término do programa corrente

## Sistemas Multiprogramáveis / Multitarefa

Os sistemas multiprogramáveis, também conhecidos como sistemas multitarefa, são aqueles que permitem que vários programas sejam executados simultaneamente no sistema. O sistema operacional divide a CPU em pequenos intervalos de tempo e atribui um intervalo para cada programa que está sendo executado. O resultado é que vários programas parecem estar sendo executados simultaneamente. O usuário pode executar vários programas ao mesmo tempo, como ouvir música enquanto navega na internet ou enviar e-mails enquanto executa um programa de edição de texto.

Permite também Sistemas Multiusuários (vários usuários podem utilizar o sistema ao mesmo tempo).

## Sistemas com Múltiplos Processadores

Os sistemas com múltiplos processadores são aqueles que têm mais de uma CPU em um único computador. Os sistemas com múltiplos processadores podem ser classificados como sistemas com multiprocessamento simétrico (SMP) ou sistemas com multiprocessamento assimétrico (AMP). No SMP, todas as CPUs compartilham a mesma memória e dispositivos de entrada / saída, enquanto no AMP, cada CPU tem sua própria memória e dispositivos de entrada/saída. Os sistemas com múltiplos processadores também podem usar paralelismo, onde várias CPUs trabalham em conjunto em um único programa para acelerar a execução do programa.

---

## Operacionais de Computadores

### Grande Porte

- Serviços:
  - em lote (batch): processamento de tarefas em lote, jobs de rotina sem a presença interativa do usuário.
  - processamento de transações
  - tempo compartilhado: múltiplos usuários remotos executam jobs simultaneamente no computador

### Servidores

- Serviços:
  - Servidor de arquivos (file server)
  - Servidor de impressão (spooler)
  - Servidor de aplicação (Java, .NET, etc)
  - Servidor de banco de dados (SQL, Oracle, etc)
  - Servidor de e-mail (SMTP, POP, IMAP)
  - Servidor de web (HTTP, SMTP, FTP, DNS, etc)

### Multiprocessadores

- Múltiplas CPUs em um único sistema
  - Computadores paralelos
  - Multicomputadores
  - Multiprocessadores
    - Fortemente acoplados: vários CPUs compartilham uma mesma memória física e dispositivos de E/S sendo gerenciados por apenas um SO
    - Fracamente acoplados: dois ou mais sistemas computacionais conectados através de linhas de comunicação (multicomputadores/clusters)

### Computadores Pessoais

- Serviços:
  - Interface gráfica
  - Gerenciamento de janelas
  - Gerenciamento de arquivos
  - Gerenciamento de multimídia

### Tempo Real

Se ações precisam ocorrer em determinados instante (ou em determinado intervalo de tempo) então tem-se um sistema de tempo real.

- Monitoramento de controle de processos, de refinarias de petróleo, usinas termoelétricas e nucleares, etc

### Embarcados

Apresentam restrições de tamanho, memória e de consumo de energia que os fazem especiais

- Sistemas de controle de automóveis, aviões, eletrodomésticos, etc
- Sistemas de controle de tráfego aéreo, de tráfego urbano, etc

### Cartões Inteligentes

- Dispositivos do tamanho de um cartão de crédito que contém um chip de CPU
- Alguns deles podem realizar apenas uma única função, como pagamentos eletrônicos

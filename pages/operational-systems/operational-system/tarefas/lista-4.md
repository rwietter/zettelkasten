1. Diferença entre multitarefa e multiprogramavel ?
- Multitarefa: algoritmo de agendamento de tarefas que simula multitarefa
- Multiprogramavel: processos concorrendo por recursos de hardware e compartilhamento de CPU e Memória, afim de executar de forma simultânea. Por exemplo, em um sistema multiprogramavel, enquanto um processo está em espera de I/O, outro processo executa na CPU.

**2. Tipos de sistemas operacionais ?**
- Monoprogramavel: recursos reservado a um programa por vez (MS-DOS)
- Multiprogramavel / multitarefa: recursos divididos entre vários processos concorrentes e usuários (Linux, Windows, MacOS, Solaris, Unix)
- Múltiplos processadores: paralelismo (mainframes como IBM ZOS e IBM VSE)

**3. Função do Sistema Operacional ?**
- Gerenciar os componentes de hardware (processadores, memória principal, discos, impressoras, teclado, etc..)
- O Sistema Operacional é aquela parte do software executada em modo supervisor ou modo núcleo

**4. Rotinas do Sistema Operacional ?**
- SO é composto por eventos e rotinas assíncronas e concorrentes

**5. Tipos de Sistemas Operacionais**
- Sistemas Operacionais de Computadores de Grande Porte: IBM z/OS e IBM VSE
- Sistemas Operacionais de Servidores: Windows Server; Red Hat Enterprise Linux;  Oracle Solaris
- Sistemas Operacionais de Multiprocessadores: Windows Workstations
- Sistemas Operacionais de Computadores Pessoais: Windows e Ubuntu
- Sistemas Operacionais de Tempo Real: VxWorks
- Sistemas Operacionais Embarcados: Android Things e Embedded Linux
- Sistemas Operacionais de Cartões Inteligentes: Java Card e MULTOS

6. Concorrência em SOs multiprogramaveis ?
- A multiprogramação permite que processos possam executar de forma simultânea entre CPU e I/O, o algoritmo de escalonamento gerência a fila de de processos afim de que os processos concorram pelo tempo de CPU e I/O a partir dos algoritmos de escalonamento.

7. Importância da Interrupção para multiprogramação ?
- A interrupção permite que tarefas sejam interrompidas para executar outra tarefa. Em sistemas de multiprogramação isso é comum, pois os processos levam um quantum de tempo, quando o quantum expira, a interrupção salva o estado de contexto, para executar outra tarefa, quando a tarefa B termina, o estado de contexto da tarefa A pode ser restaurado para continuar sua execução. As interrupção são geradas geralmente por hardware o sistema operacional.

- Interrupção -> Salva o contexto A -> Carrega os registradores do processo B -> Executa B -> Salva o contexto B -> Carrega os registradores do processo A -> Executa A

1. O que são Exceções ?
São erros que acontecem a nível de software, que devem ser tratadas pelo programa:
- Division by Zero
- Overflow

1. O que é DMA ?
- Direct Memory Access (DMA) permite que dispositivos de I/O tenha acesso a memória sem passar pela CPU, afim de não sobrecarrega-lá.

1.  O que é a técnica de buffering ?
- O buffer é uma ténica de armazenar dados em uma espécie de cache para não precisar esperar outros processos. Possui a finalidade de auxiliar a transferência de dados entre dispositivos de E/S e a memória.
- O buffer permite minimizar a disparidade de velocidade entre o processador e os dispositivos de E/S.
- Manter tanto os dispositivos de E/S como o processador ocupados a maior parte do tempo.

1.  O que é Spool ?
- Spooling é uma técnica de gerênciar periféricos, cria um armazenamento temporário e uma fila de prioridade para trocar dados com periféricos.

1.  O que é Rentrância ?
- A reentrância é um conceito relacionado à capacidade de um código executar de forma segura em um ambiente compartilhado, como é o caso dos sistemas operacionais multitarefa e multiusuário. Além disso, a instância do processo é compartilhada, afim de que não use tanta memória ram.

1.  Como funcionam as operações de Entrada e Saída ?
As operações de E/S no computador funcionam de três formas básicas:
- Por programa (canal)
- Por Interrupção
- Por DMA (Acesso Direto a RAM)

1.  Rotinas do SO, System Calls e Modo de Acesso ?
O sistema operacional deve rodar em modo kernel e em endereços de memória com restrição de acesso para garantir a segurança. Utilitários do Sistema Operacional quando chamados s~´ao rotinas em modo usuário, para executar em modo kernel, o sistema salva o contexto nos registradores, altera para o modo kernel e executa as rotinas, então muda para o modo usuário e restaura o contexto.

As rotinas do SO e o mecanismo de system call podem ser entendidos como uma porta de entrada para o núcleo do SO e seus serviços.

15. O que é um processo ?
Um processo é uma tarefa ativa que fazer parte de uma entidade passiva (programa). Assim, um programa pode conter muitos processos, que por sua vez, pode conter várias threads. A troca de contexto de processo permite a multiprogramação e concorrência.

16. Quais são os Estados de um Processo ?
- Novo: o processo está sendo criado
- Em execução: as instruções estão sendo executadas
- Em espera: o processo está esperando pela ocorrência de algum evento (como um termino de I/O)
- Pronto: o processo está esperando para ser designado a um processador
- Terminado: o processo terminou sua execução

17. Quais são as mudanças possíveis entre os Estados do Processo ?
- Novo -> Pronto
- Pronto -> Execução
- Execução -> Pronto
- Execução -> Espera
- Espera -> Pronto
- Execução -> Terminado

18. O que é o Bloco de Controle de Processo (PCB) ?
- Cada processo é representado no sistema operacional por um PCB, armazena informações como:
  - Estado do processo
  - Contador de programa
  - Registradores da CPU
  - Informação de gerenciamento da memória
  - Informação de contabilização
  - Informação de estado de I/O

O PCB tem informações de:
- Contexto de HW: (Program Counter, Stack Pointer e registrador de status)
- Contexto de SW: (Nome, PID, UID, Prioridade, Data criação, tempo de processador, tempo de espera e privilégios)
- Espaço de endereçamento

19. O que é I/O Bound e CPU Bound ?
- CPU Bound é quando o processo passa a maior parte do tempo em EXECUÇÃO ou PRONTO na CPU
- I/O Bound é quando o processo passa a maior parte do tempo em estado de ESPERA devido as operações de I/O

20. O que são Threads ?
- Threads são multiplas linhas de execução dentro de um processo. As threads compartilham atributos de um processo. Os processos alocam recursos e reservam o endereçamento, enquanto as threads são as entidades escalonadas pela CPU para a execução de tarefas.

- O ciclo de vida das threads é similar a de processos, mas contém estados a mais como: espera sincronizada e sleeping.

- Threads são mais rápidas de criar, compartilham recursos, geram economia e melhoram consideralmente o desempenho; podem ser utilizadas para processamento paralelo em arquiteruras multiprocessadas.

- Threads de usuários são implementadas por linguagens de programação.
- Threads de kernel gerênciam as threas de usuário e mapeiam para utilização do processador definitivamente.

21. Quais são os modelos de multithreading ?
- Muitos para um
- Um para um
- Muitos para muitos

22. **O que é escalonamento de CPU ?**
O escalonamento é uma forma de escolher processos na fila de prontos para executar quando outro processo está em espera de I/O. Existem diversos algoritmos para escolonamento de CPU que podem se escolhidos dependendo dos critérios:
- Utilização da CPU: o intuito é manter a CPU tão ocupada quanto possível
- Throughput: número de processos que se completam por unidade de tempo
- Tempo de turnaround: corresponde ao intervalo entre o momento em que um processo é submetido e o momento em que ele completa toda a sua execução
- Tempo de Espera: ele influi somente no montante de tempo que um processo gasta esperando na fila pronta
- Tempo de Resposta: intervalo de tempo entre a submissão de uma solicitação e o momento em que a primeira resposta é produzida

23. **O que é escalonamento com Preempção e sem Preempção ?**
- Com Preempção: corresponde à interrupção de um processo que está em execução, seguida da alocação da CPU a um outro processo 
- Sem Preempção: toma posse da CPU até terminar ou ir para o estado de espera

O escalonamento pode ocorrer nos estados de:
- Execução para espera (sem preempsão)
- Execução para pronto (com preempsão)
- Espera para pronto (com preempsão)
- Quando o processo termina (sem preempsão)

24. Algoritmos de escalonamento (escolher processo da fila de prontos) ?
- First-Come First-Served: o processo que primeiro requisita a CPU é o primeiro a ser alocado a CPU
- Menor-Job-Primeiro: quando a CPU está disponível, ela é designada para o processo com o menor próximo pico de CPU
- Prioridades: uma prioridade é associada a cada processo e a CPU é alocada ao processo com prioridade mais alta
- Round-Robin: fornece um quantum de tempo igual para todos os processos e cirucula a fila aplicando a preempção.

25. O que é o problema de inanição ?
- Um problema significativo com algoritmos de escalonamento por prioridades é o bloqueio indefinido (ou inanição). Um algoritmo de escalonamento por prioridades pode deixar alguns processos de baixa prioridade esperando indefinidamente pela CPU.

26. Sistemas Assimétricos e Simétricos
- Sistemas Assimétricos reservam CPU para suas próprias necessidades
- Sistemas Simétricos equacionam a CPU entre suas necessidades e necessidades de usuário.

27. O que é a MMU ?
A Unidade de gerenciamento de memória é responsável por:
- Controlar quais as unidades de memória estão ou não estão em uso, para que sejam alocadas quando necessário
- Liberar as unidades de memória que foram desocupadas por um processo que finalizou
- Tratar do Swapping entre memória principal e memória secundária
- Proteção de memória
- Cache

28. Quais são as Técnicas de Alocação de Memória ?
- Alocação Contígua Simples: A Memória é dividida entre Sistema Operacional e Usuário. Tinha problemas de proteção e de tamanho fixo
- Alocação Particionada Estática: define partições na inicialização, registradores oferecem proteção mas gera fragmentação interna
- Alocação Particionada Dinâmica: o espaço utilizado por um programa é a sua partição, não gera fragmentação interna mas gera fragmentação externa.

Solução: movimentação dos programas na memória principal para evitar fragmentação

29. Quais são os algoritmos de Mapeamento da Memória ?
- Best-Fit (melhor alocação): espaço mais próximo do tamanho do processo (ocorre fragmentação)
- Worst-Fit (pior alocação): cria o maior espaço possível
- First-Fit (primeira alocação): melhor desempenho
- Next-Fit (proxima alocação): inferior ao First-fit

30. O que é swapping ?
- Os processos ficavam na memória principal, mesmo se bloqueados pela espera de algum evento. Processos em espera são enviados ao disco para a memória virtual Swapped-Out, quando a entra na fila de prontos para execução, o processo Swapped-In para a memória principal.
- Processo de Swapped demora devido a disparidade de leitura e gravação entre ram e disco, consome CPU.

31. O que é paginação ?
- A paginação permite que o programa possa ser espalhado por áreas não contíguas de memória. A paginação é uma técnica de gerenciamento de memória em que a memória física é dividida em blocos chamados de páginas, e a memória virtual utilizada pelos processos também é dividida em blocos correspondentes. Quando um processo tenta acessar uma página virtual que ainda não está na memória física, ocorre um page fault e o sistema operacional é responsável por trazer a página para a memória física. A paginação permite que mais processos possam ser executados simultaneamente, mas pode ter um impacto negativo no desempenho.

32. Quais são as Estratégias de Realocação de Páginas ?
- Aleatória: não utiliza nenhum critério de seleção, todas as páginas têm a mesma chance
- FIFO: a página que primeiro foi utilizada será a primeira a ser escolhida
- Least-Recently-Used (LRU): seleciona a página que está a mais tempo sem ser referenciada
- Least-Frequently-Used (LFU): seleciona a página menos freqüentemente usada (mantém um contador)

33. O que é Segmentação ?
- Em um sistema de segmentação, a memória virtual é dividida em segmentos de tamanho variável, em vez de ser dividida em blocos fixos como na paginação. Cada segmento é identificado por um número ou um nome, e é alocado ao processo quando necessário. Somente segmentos referenciados são transferidos para a memória principal. Ocorre fragmentação exterma
- A memória é particionada em páginas ou segmentos para evitar fragmentação.

34. O que é Memória Virtual ?
- Técnica de gerenciamento de memória utilizada em sistemas operacionais para permitir que os processos acessem mais memória do que a disponível fisicamente no sistema.
- Na memória virtual, os processos não acessam diretamente a memória física, mas sim uma área de endereçamento virtual que é mapeada para a memória física pelo sistema operacional.

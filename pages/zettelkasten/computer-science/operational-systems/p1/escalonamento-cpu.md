# 6 Escalonamento de CPU

A partir da redistribuição da CPU entre os processos, o sistema operacional pode tornar o computador mais produtivo. O objetivo da multiprogramação é contar sempre com algum processo em execução para maximizar a utilização da CPU.

Diversos processos são mantidos na memória ao mesmo tempo. Quando um processo em execução tiver que entrar em espera, o SO libera a CPU, alocando-a a um outro processo.

## Ciclos de Picos CPU - I/O

O escalonamento de CPU se dá por um modelo de execução do processo que consiste em um ciclo de execução da CPU e de espera de I/O. Os processos se alternam entre estes dois estados. A execução do processo dá início a umpico de CPU, segue-se  um pico de I/O, então outro pico de CPU,  depois outro pico de I/O e assim por diante. Em dado momento, o último pico de CPU irá chegar ao fim com uma solicitação do sistema para encerrar a execução do processo.

Dependendo se um processo faz mais uso de CPU ou de I/O pode-se selecionar um algoritmo de escalonamento da CPU apropriado.

Sempre que a CPU se torna ociosa, o SO deve solicitar um dos processos existentes na fila pronta para que seja executado. A seleção é executada pelo scheduler de curto prazo (ou scheduler da CPU). O scheduler escolhe dentre os processos na memória que estão prontos para execução, e aloca a CPU a um deles.

Uma fila pronta por sua vez, pode ser implementada como:
- Uma fila FIFO
- Uma fila de prioridades
- Uma árvore
- Uma lista encadeada

### Escalonamento preemptivo e não preemptivo

- **Escalonamento preemptivo**: O escalonador pode interromper um processo em execução e realocar a CPU a outro processo.
  - As decisões de escalonamento da CPU podem ocorrer sob duas seguintes circunstâncias:
    - Quando um processo comuta do estado de execução para o estado de  pronto (ex.:  quando ocorre uma interrupção)
    - Quando um processo comuta do estado de espera para o estado de pronto (ex.: conclusão de I/O)
- **Escalonamento não preemptivo**: O escalonador não pode interromper um processo em execução.
  - Quando o scheduling ocorre somente nas circunstâncias, dizemos que o esquema de escalonamento é sem preempção:
    - Quando um processo comuta do estado de execução para o estado de espera (ex.: requisição de I/O)
    - Quando um processo termina
- Nos outros casos, o escalonamento é com preempção.

Em caso do Scheduling, sem preempção, uma vez que a CPU tenha sido alocada a um processo, este toma conta da CPU até liberá-la.
- Ou porque chegou ao término
- Ou porque comutou para o estado de espera

---

## Despachante (dispatcher)

O despachante é o módulo que passa o controle da CPU ao processo selecionado pelo escalonador de curto prazo. Esta função envolve

- Comutação de contexto
- Comutação para modalidade de usuário
- Desvio para a localização própria no programa do usuário de modo a reiniciá-lo

No escalonamento da UCP, o despachante é responsável por selecionar o próximo processo da fila de prontos a ser executado na UCP. Quando um processo é bloqueado ou aguarda entrada/saída, o despachante seleciona o próximo processo na fila que está pronto para ser executado. O despachante também gerencia a troca de contexto, que é o processo de salvar o estado do processo atual e restaurar o estado do próximo processo a ser executado.

### Critérios de Escalonamento

- **Utilização da CPU**: manter a CPU ocupada o máximo de tempo possível
- **Throughput**: número de processos que completam sua execução por unidade de tempo
- **Turnaround**: tempo entre a submissão e a conclusão de um processo
- **Tempo de espera**: tempo total que um processo passa na fila de pronto esperando para ser executado
- **Tempo de resposta**: tempo entre a submissão e a primeira resposta produzida

### Algoritmos de Escalonamento

O escalonamento da CPU trata do problema de decidir qual dos processos na fila pronta deve ser alocado a CPU. Para isso existem diversos algoritmos de escalonamento:

**FCFS**: First-Come, First-Served (Primeiro que chega, primeiro atendido)
- O processo que primeiro requisita a CPU é o primeiro a ser alocado a CPU (FIFO)
- Quando um processo entra na fila pronta, seu PCB é conectado à cauda da fila
- Quando a CPU fica livre, ela é alocada ao processo na cabeça da fila
- O processo em execução é então removido da fila


**SJF**: Shortest-Job-First (Menor Job Primeiro)
- Quando a CPU está disponível, ela é  designada para o processo com o **menor próximo pico** de CPU
- Se dois processos têm o mesmo tempo de duração do próximo pico de CPU, o escalonamento FCFS é usado para resolver o impasse

**Prioridades**
- Uma prioridade é associada a cada processo e a CPU é alocada ao processo com prioridade mais alta
- Processos com igual prioridade são agendados para execução em ordem FCFS
- Baseia-se na ideia onde a prioridade é o inverso do próximo pico da CPU (Quanto maior o pico da CPU, menor a prioridade)
- Um problema significativo com algoritmos de escalonamento por prioridades é a **inanição**
- Um processo que esteja pronto para executar mas não tenha a posse da CPU pode ser considerado bloqueado em espera pela CPU
- Esse algoritmo pode deixar processos de baixa prioridade esperando indefinidamente pela CPU.

**Escalonamento Round-Robin** (RR)
- Projetado especialmente para sistemas de tempo compartilhado.
- Conta com a Preempção (interrupção) do processo em execução a cada intervalo de tempo (quantum)
- Uma unidade de tempo pequena chamada quantum de tempo é definida (10ms a 100ms)
- A fila pronta é tratada como uma fila circular
- O escalonador da CPU circula a fila pronta alocando a CPU a cada processo, por um intervalo de tempo de até 1 quantum de tempo.

---

## Como o SO gerencia o processador ?

Em um sistema com duas ou mais CPUs, o trabalho é dividido entre os processadores. Os sistemas operacionais neste caso, classificam-se em dois tipos: simétricos e assimétricos (SMP e AMP).

### Sistemas Simétricos (SMP)

Os sistemas operacionais simétricos compartilham as várias CPUs e equacionam a demanda e a disponibilidade da CPU, mesmo quando o sistema operacional é o único aplicativo em execução.

### Sistemas Assimétricos (AMP)

Os sistemas operacionais assimétricos utilizam uma CPU para suas próprias necessidades e dividem os processos dos aplicativos entre as outras CPUs.

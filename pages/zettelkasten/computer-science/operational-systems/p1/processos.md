# 4 Processos

Um programa para ser executado, deve estar sempre associado a um processo. A gerência de processos é uma das principais funções de um sistema operacional, possibilitando aos programas:

- Alocar recursos
- Compartilhar dados
- Trocar informações
- Sincronizar suas execuções
 
Nos sistemas multiprogramáveisos processos são executados concorrentemente, compartilhando uso de CPU, RAM e dispositivos de E/S, etc

Um processo é não só um programa em execução, mas o conjunto necessário de informações para que o sistema operacional implemente a concorrência de programas. 

## Estrutura de um processo

A troca de um processo por outro na CPU, comandada pelo SO é denominada mudança de contexto. Um processo é formado por três partes:

- Contexto de HW
  - Registradores gerais
  - Registrador PC: Contador de programa
  - Registrador SP: Ponteiro de pilha
  - Registrador de status
- Contexto de SW
  - PID
  - Nome
  - Owner
  - Prioridade de execução
  - Data/hora de criação
  - Tempo de CPU utilizado
  - Quota de tempo de CPU
  - Privilégios
- Espaço de endereçamento
  - Endereços de memória alocados

## Contexto de Hardware

Quando um processo está em execução, o seu contexto de HW está armazenado nos registradores da CPU. No momento em que o processo perde a utilização da UCP, o sistema salva as informações no contexto de hardware do processo.

![st](https://i.postimg.cc/mD6wg2KK/Captura-de-tela-de-2023-05-07-22-11-54.png)

## Contexto de Software

Cada usuário possui uma identificação única no sistema (UID). A UID permite implementar um modelo de segurança, onde apenas os objetos que possuem a mesma UID do usuário podem ser acessados.

As quotas são os limites de cada recurso do sistema que um processo pode alocar. Alguns exemplos de quotas presentes na maioria dos SO são:
- Número máximo de arquivos abertos simultaneamente
- Tamanho máximo de RAM e secundária que o processo pode alocar
- Número máximo de operações de E/S pendentes
- Número máximo de processos, subprocessose threads que podem ser criados

Privilégios permitem que as características dos processos possam ser alteradas, tais como:
- Prioridade de execução
- Limites alocados (RAM e HD)
- Alteração de outros processos

**Bloco de Controle do Processo (PCB)**

![pcb](https://i.postimg.cc/1tq90kf4/Captura-de-tela-de-2023-05-08-13-28-13.png)

Um processo é implementado pelo SO através de uma estrutura de dados chamada de PCB. A partir do PCB, o SO mantém todas as informações sobre o contexto de HW, SW e espaço de endereçamento de cada processo.

Os PCBs de todos os processos ativos residem na RAM em uma área exclusiva do SO

A criação de um processo ocorre a partir do momento em que o SO adiciona um novo PCB à sua estrutura e aloca um espaço de endereçamento na memória para uso. No caso da eliminação de um processo, todos os recursos associados ao processo são desalocadose o PCB eliminado pelo SO.

**Criação:**
- Um processo é dito no estado de criação quando o SO já criou um novo PCB, porém ainda não pode coloca-lo na lista de processos do estado de pronto

**Eliminação:**
- Término normal de execução
- Eliminação por um outro processo
- Eliminação forçada por ausência de recursos disponíveis no sistema

**Estados de Criação e Eliminação**
- Execução => Término
- Criação => Pronto

![estados](https://i.postimg.cc/xdqsZYGj/Captura-de-tela-de-2023-05-08-13-46-51.png)


### Estados do Processo

Um processo ativo pode encontrar-se em 03 diferentes estados:

- Execução: O processo está sendo executado pela CPU
- Pronto: O processo está pronto para ser executado, mas está aguardando a CPU
- Espera: O processo está aguardando por um evento externo (E/S, sinal, etc)

O SO é responsável por determinar a ordem e os critérios pelos quais os processos em estado de pronto devem fazer uso do processador. **Este mecanismo é conhecido como escalonamento**.

**Modos de troca de estado:**

- Pronto => Execução
- Execução => Pronto
- Execução => Espera
- Espera => Pronto

---

## Processos CPU-bounde e I/O-bound

- Um processo é definido como CPU-bound, quando passa a maior parte de tempo no estado de execução, utilizando a CPU, ou pronto.
- Um processo é classificado como I/O-boundquando passa a maior parte do tempo no estado de espera, pois realiza um elevado número de operações de E/S.

---

## Processos Foregrounde Background

- Um processo foregroundé aquele que permite a comunicação direta do usuário com o processo durante o seu processamento. Neste caso tanto o canal de entrada quanto o de saída estão associados a um terminal com teclado, mouse e monitor, permitindo assim a interação com o usuário
- Um processo backgroundé aquele onde não existe a comunicação com o usuário durante o seu processamento.

---

## Processos Independentes, Subprocessose Threads

### Processos Independentes

- Criação
- PCB
- Contexto de HW
- Contexto de SW
- Espaços de endereçamento

### Subprocessos

- Criados dentro de uma estrutura hierárquica
- Processos pai e filho
- Processo pai finalizado, todos os demais subprocessossão finalizados

### Threads

- Multiplasinstâncias de um mesmo processo
- O compartilhamento do espaço de endereçamento permite que a comunicação de threads dentro de um mesmo processo de forma simples e rápida

---

## Sinais

Sinais é um mecanismo que permite notificar processos de eventos gerados pelo SO ou por outros processos. Por exemplo, uma combinação das teclas CTRL + C gera um sinal de interrupção (SIGINT) que é enviado ao processo que está em execução no momento.

# Exercícios 3

**1.  O que diferencia o núcleo do restante do sistema operacional?**

A principal diferença é que o núcleo tem acesso privilegiado aos recursos do sistema, enquanto o resto do sistema operacional não. O núcleo é o responsável por gerenciar os recursos do sistema, enquanto o resto do sistema operacional é responsável por gerenciar os recursos do núcleo.

**2. Seria possível construir um sistema operacional seguro usando um processador que não tenha níveis de privilégio? Por quê?**

Teoricamente não, pois em um sistema desse tipo, um atacante poderia acessar os recursos que o núcleo tem acesso, e assim, comprometer o sistema.

**3. Os processadores da família x86 possuem dois bits para definir o nível de privilégio, resultando em 4 níveis distintos. A maioria dos sistemas operacionais para esses processadores usam somente os níveis extremos (0 e 3, ou 002 e 112). Haveria alguma utilidade para os níveis intermediários?**

Os níveis intermediários poderiam ser usado para definir um nível de acesso para um processo que não é de confiança, mas que precisa de acesso a partes menos críticas  de recursos do sistema.

**4. Quais as diferenças entre interrupções, exceções e traps?**

Interrupção: é um evento externo que interrompe a execução de um programa, e que pode ser tratado pelo sistema operacional.
Exceção: é um evento interno que interrompe a execução de um programa, e que deve ser tratado pelo programa.
Trap: são instruções especiais inseridas em um programa para forçar a execução de uma rotina específica no sistema operacional. As traps são usadas para solicitar serviços do sistema operacional, como alocação de memória, abertura de arquivos ou sincronização de processos.

**5. O comando em linguagem C fopen é uma chamada de sistema ou uma função de biblioteca? Por quê?**
fopen é uma função de biblioteca, pois ela é implementada em código de biblioteca, e não em código do núcleo.

**6. A operação em modo usuário permite ao processador executar somente parte das instruções disponíveis em seu conjunto de instruções. Quais das seguintes operações não deveriam ser permitidas em nível usuário? Por quê?**
(a)  Ler uma porta de entrada/saída
(b)  Efetuar uma divisão inteira
(c)  Escrever um valor em uma posição de memória
(d)  Ajustar o valor do relógio do hardware
(e)  Ler o valor dos registradores do processador (f)  Mascarar uma ou mais interrupções


**7. Considerando  um  processo  em  um  sistema  operacional  com  proteção  de memória entre o núcleo e as aplicações, indique quais das seguintes ações do processo teriam de ser realizadas através de chamadas de sistema, justificando suas respostas:**
(a)  Ler o relógio de tempo real do hardware.
(b)  Enviar um pacote através da rede.
(c)  Calcular uma exponenciação.
(d)  Preencher uma área de memória do processo com zeros.
(e)  Remover um arquivo do disco.

**8. Coloque na ordem correta as ações abaixo, que ocorrem durante a execução da função printf("Hello world") por um processo (observe que nem todas as ações indicadas fazem parte da sequência).**
(a) A rotina de tratamento da interrupção de software é ativada dentro do núcleo.
(b) A funçãoprintffinaliza sua execução e devolve o controle ao código do processo.
(c) A função de bibliotecaprintfrecebe e processa os parâmetros de entrada (a string “Hello world”).
(d) A função de bibliotecaprintfprepara os registradores para solicitar a chamada de sistemawrite()
(e) O disco rígido gera uma interrupção indicando a conclusão da operação.
(f) O escalonador escolhe o processo mais prioritário para execução.
(g) Uma interrupção de software é acionada.
(h) O processo chama a funçãoprintfda biblioteca C.
(i) A operação de escrita no terminal é efetuada ou agendada pela rotina de tratamento da interrupção.
(j) O controle volta para a funçãoprintfem modo usuário.


---

## Atividades

**1. O utilitário `strace` do UNIX permite observar a sequência de chamadas de sistema efetuadas por uma aplicação. Em um terminal, execute `strace` date para descobrir quais os arquivos abertos pela execução do utilitário date (que indica a data e hora correntes). Por que o utilitário date precisa fazer chamadas de sistema ?**

Para pegar a data do sistema, o utilitário date precisa fazer chamadas de sistema para acessar o relógio do sistema da Unix Epoch. O relógio do sistema é um dispositivo de hardware que armazena a data e hora correntes, além disso ele é sincronizado com os servidores NTP.

**2. O utilitário ltrace do UNIX permite observar a sequência de chamadas de biblioteca efetuadas por uma aplicação. Em um terminal, execute `ltrace date` para descobrir as funções de biblioteca chamadas pela execução do utilitário date (que indica a data e hora correntes). Pode ser observada alguma relação entre as chamadas de biblioteca e as chamadas de sistema observadas no item anterior ?**

ltrace não consegue interceptar chamadas cujo RPATH esteja definido como `NOW`. Para que seja possível interceptar, o módulo-objeto deve ser compilado com RPATH definido como `LAZY`. O utilitário date não foi compilado com RPATH definido como `LAZY`, então ltrace não consegue interceptar as chamadas de biblioteca. Desta forma, não é possível observar uma relação entre as chamadas de biblioteca e as chamadas de sistema.
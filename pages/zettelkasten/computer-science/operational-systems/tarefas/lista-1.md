---
title: Exercícios
description: Exercícios de SO
icon: vscode-icons:file-type-codekit
---

# Exercícios

### Aula 1 (Sistema Operacionais)

**1. Quais os dois principais objetivos de um sistema operacional?**

- Gerenciar os recursos de hardware do computador.
- Prover uma abstração para os programas de aplicações.

**2. Por que a abstração de recursos é importante para os desenvolvedores de aplicações? Ela tem alguma utilidade para os desenvolvedores do próprio sistema operacional?**

- A abstração de recursos é importante para os desenvolvedores de aplicações, pois eles não precisam se preocupar com a implementação de recursos de hardware.

**3. A gerência de tarefas permite compartilhar o processador, executando mais de uma aplicação ao mesmo tempo. Identifique as principais vantagens trazidas por essa funcionalidade e os desafios a resolver para implementá-la.**

- A principal vantagem é poder realizar multiplas tarefas ao mesmo tempo enquanto minimiza a ociosidade do hardware. Ganhasse paralelismo e eficiência. Os desafios são: escalabilidade, sincronização e comunicação entre os controladores de hardware.

**4. O que é um sistema de arquivos? Quais são as principais funções que ele deve oferecer?**

- Um sistema de arquivos é um conjunto de estruturas de dados e algoritmos que gerenciam o armazenamento de arquivos em um dispositivo de armazenamento. As principais funções são: armazenamento, recuperação e proteção de arquivos.
- Tipos de sistemas de arquivos: GPT, MBR, FAT, NTFS, EXT4, HFS+, APFS, ZFS.

**5. O que caracteriza um sistema operacional de tempo real? Quais as duas classificações de sistemas operacionais de tempo real e suas diferenças?**

- Um sistema operacional de tempo real é um sistema operacional que deve responder a eventos externos em um tempo determinístico. Os sistemas operacionais de tempo real podem ser classificados em dois tipos: soft real time e hard real time. O primeiro tipo de sistema operacional de tempo real é aquele que não garante que as tarefas sejam executadas no tempo determinístico, mas que tenta fazer isso. O segundo tipo de sistema operacional de tempo real é aquele que garante que as tarefas sejam executadas no tempo determinístico.

---

### Aula 2 (Estrutura de um SO)

**1. O que diferencia o núcleo do restante do sistema operacional?** 


**2. Seria possível construir um sistema operacional seguro usando um processador que não tenha níveis de privilégio? Por quê?**


**3. Os processadores da família x86 possuem dois bits para definir o nível de privilégio, resultando em 4 níveis distintos. A maioria dos sistemas operacionais para esses processadores usam somente os níveis extremos (0 e 3, ou 002 e 112). Haveria alguma utilidade para os níveis intermediários?**


**4. Quais as diferenças entre interrupções, exceções e traps?**


**5. O comando em linguagem C fopen é uma chamada de sistema ou uma função de biblioteca? Por quê?**


**6. A operação em modo usuário permite ao processador executar somente parte das instruções disponíveis em seu conjunto de instruções. Quais das seguintes operações não deveriam ser permitidas em nível usuário? Por quê?**

(a) Ler uma porta de entrada/saída
(b) Efetuar uma divisão inteira
(c) Escrever um valor em uma posição de memória
(d) Ajustar o valor do relógio do hardware
(e) Ler o valor dos registradores do processador
(f) Mascarar uma ou mais interrupções

**7. Considerando um processo em um sistema operacional com proteção de memória entre o núcleo e as aplicações, indique quais das seguintes ações do processo teriam de ser realizadas através de chamadas de sistema, justificando suas respostas:**

(a) Ler o relógio de tempo real do hardware.
(b) Enviar um pacote através da rede.
(c) Calcular uma exponenciação.
(d) Preencher uma área de memória do processo com zeros.
(e) Remover um arquivo do disco. 

**8. Coloque na ordem correta as ações abaixo, que ocorrem durante a execução da função printf("Hello world") por um processo (observe que nem todas as ações indicadas fazem parte da sequência).**

(a) A rotina de tratamento da interrupção de software é ativada dentro do núcleo.
(b) A função printf finaliza sua execução e devolve o controle ao código do processo
(c) A função de biblioteca printf recebe e processa os parâmetros de entrada (a string “Hello world”).
(d) A função de biblioteca printf prepara os registradores para solicitar a chamada de sistema write()
(e) O disco rígido gera uma interrupção indicando a conclusão da operação.
(f) O escalonador escolhe o processo mais prioritário para execução.
(g) Uma interrupção de software é acionada.
(h) O processo chama a função printf da biblioteca C.
(i) A operação de escrita no terminal é efetuada ou agendada pela rotina de tratamento da interrupção.
(j) O controle volta para a função printf em modo usuário.


#### Atividades

**1. O utilitário strace do UNIX permite observar a sequência de chamadas de sistema efetuadas por uma aplicação. Em um terminal, execute strace date para descobrir quais os arquivos abertos pela execução do utilitário date (que indica a data e hora correntes). Por que o utilitário date precisa fazer chamadas de sistema?**


**2. O utilitário ltrace do UNIX permite observar a sequência de chamadas de biblioteca efetuadas por uma aplicação. Em um terminal, execute ltrace date para descobrir as funções de biblioteca chamadas pela execução do utilitário date (que indica a data e hora correntes). Pode ser observada alguma relação entre as chamadas de biblioteca e as chamadas de sistema observadas no item anterior?**
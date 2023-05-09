# 2 - Estrutura de um Sistema Operacional

Um SO é formado por um conjunto de rotinas (kernel) que oferece serviços aos usuários e às suas aplicações.

Existem três maneiras distintas de um usuário se comunicar com o kerneldo SO, sendo estas através de:
- Rotinas do sistema realizadas por aplicações
- Utilitários
- Linguagens de comandos

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

### Modos de acesso

Muitas das principais implementações de segurança de um SO utilizam um mecanismo presente no HW dos CPU, conhecido como modo de acesso.

Em geral, os CPUspossuem dois modos de acesso: modo kernel e modo usuário. O modo kernel é utilizado pelo SO e pelos programas que o compõem, enquanto o modo usuário é utilizado pelos programas de aplicação.

Quando o processador trabalha no modo usuário, uma aplicação só pode executar instruções conhecidas como não-privilegiadas.

**O modo de acesso é determinado por um conjunto de bits, localizados no registrador de status do processador, que indica o modo de acesso corrente. Por intermédio desse registrador, o HW verifica se a instrução pode ou não ser executada.**

## Rotinas do sistema (system calls)

As rotinas do SO compõem o núcleo do sistema, oferecendo serviços aos usuários e suas aplicações. Para que um programa possa utilizar os serviços oferecidos pelo núcleo, ele deve invocar uma rotina do sistema, que é uma rotina especial que executa em modo kernel. System calls são portas de entrada para o núcleo do SO.

O que acontece quando um programa executa uma rotina do sistema?

1. O programa executa uma instrução de chamada de sistema (system call)
2. Salva o estado do processador (registradores, pilha, etc)
3. Altera o modo de acesso para modo kernel
4. Executa a rotina do sistema
5. Altera o modo de acesso para modo usuário
6. Restaura o estado do processador

![system-call](https://uploaddeimagens.com.br/images/004/457/012/original/Captura_de_tela_de_2023-05-07_20-19-01.png?1683501759.jpg)

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

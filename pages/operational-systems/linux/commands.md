# Commands

## General

Get folder size
```shell
du -sh /var/cache/pacman/pkg
```

## CPU

```shell
# Verificar a temperatura da CPU
sensors
```

Listar processos por uso de CPU
```shell
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head
```

Listar informações sobre a CPU
```shell
lscpu

# ou
cat /proc/cpuinfo
```

## Operational System

Verificar a versão do sistema operacional
```shell
cat /etc/os-release
```

Dmidecode: informações detalhadas sobre o hardware do sistema, lendo os dados do DMI (Desktop Management Interface).
```shell
sudo pacman -S dmidecode
sudo dmidecode
```

Lsusb: lista todos os dispositivos USB conectados ao sistema
```shell
sudo pacman -S usbutils
lsusb
```

Lspci: lista todos os dispositivos PCI conectados ao sistema
```shell
sudo pacman -S pciutils
lspci
```

Lshw: lista informações detalhadas sobre o hardware do sistema
```shell
sudo pacman -S lshw
lshw
```

Lscpu: informações detalhadas sobre a unidade de processamento central (CPU)
```shell
sudo pacman -S lscpu
lscpu
```

## Logs

### Strace

Strace é um utilitário que permite ver as chamadas de sistema feitas por um programa.

```shell
sudo pacman -S strace

strace date # Ver as chamadas de sistema feitas pelo comando date
strace -c date # Ver as chamadas de sistema feitas pelo comando date e o tempo gasto em cada uma
strace -c -f date # Ver as chamadas de sistema feitas pelo comando date e o tempo gasto em cada uma, incluindo chamadas de sistema feitas por processos filhos
```

### ltrace

O ltrace é uma ferramenta que permite acompanhar as chamadas de funções de uma aplicação. Ele é útil para descobrir o que uma aplicação está fazendo, e pode ser útil para descobrir o que está causando um problema.

Para utilizar o ltrace é necessário instalar o pacote pax-utils.

O ltrace só funciona para compilações lazy binding, ou seja, a ligação preguiçosa pode melhorar o desempenho da inicialização do programa, adiando a resolução dos símbolos das funções. Caso a compilação seja feita com a geração do binário ELF BIND_NOW, o ltrace não funcionará. Quando BIND_NOW estiver ativado, todos os símbolos serão resolvidos antes de executar o código do programa, ou seja, ltrace não pode interceptar as chamadas de funções.

Os programas no Linux usam o formato binário ELF, que fornece muitos recursos. Para fins de compreensão de como as funções da biblioteca são chamadas, vamos direcionar nossa atenção para a Procedure Linkage Table (PLT) e a Global Offset Table (GOT).

O PLT contém um grupo de instruções de montagem por função de biblioteca que é executada quando uma função de biblioteca é chamada. Grupos de instruções de montagem costumam ser chamados de “trampolins”.

1. Quando o programa é carregado na memória, o programa e cada objeto compartilhado dinâmico ( DSO, abreviado, também conhecido como biblioteca compartilhada ), têm seu PLT e GOT mapeados na memória.
2. No início da execução, os locais de memória das funções em uma biblioteca compartilhada não são conhecidos. Isso ocorre porque uma biblioteca compartilhada pode ser carregada em qualquer endereço no espaço de endereço de um programa.
3. Quando uma função da biblioteca é chamada, a execução é transferida para a entrada PLT da função. A entrada PLT é um conjunto de instruções de montagem ( chamado de 'trampolim' ).
4. Este 'trampolim' organiza dados sobre a função que o programa estava tentando chamar e chama o vinculador dinâmico.
5. O vinculador dinâmico é executado, pega os dados organizados pelo trampolim PLT e os usa para encontrar o endereço da função que o programa está tentando chamar.
6. Uma vez encontrado, o endereço é gravado no GOT e a execução é transferida para a função.
7. As chamadas subsequentes para a mesma função não invocam o vinculador dinâmico. Em vez disso, o PLT chama diretamente para a função usando o endereço armazenado no GOT.

```shell
# para verificar se um binário foi compilado com BIND_NOW ou LAZY, instale o pacote pax-utils e execute o comando abaixo
sudo pacman -S pax-utils

# E para verificar se o binário foi compilado com BIND_NOW ou LAZY, execute o comando abaixo
scanelf -a /bin/whoami # verifique o campo `RPATH`

# Se o campo `RPATH` estiver com LAZY, então você pode utilizar o ltrace para obter informações sobre as chamadas de funções do binário
ltrace /bin/whoami
```

### Ptrace

ptrace é um recurso disponível no Unix e em sistemas operacionais similares que permite que um processo pai controle a execução de outro processo filho. Ele é frequentemente usado para depurar programas e entender o comportamento de processos em execução.

O ptrace funciona através da inserção de pontos de parada no processo filho e permitindo que o processo pai examine e modifique o estado do processo filho enquanto ele está em execução.

O ptrace é uma biblioteca e pode ser utilizado para criar depuradores de programas.

```c
#include <sys/ptrace.h>

long ptrace(enum __ptrace_request request, pid_t pid, void *addr, void *data);
```

## Nmap

Verificar portas abertas
```shell
nmap -sT -O localhost # -sT: TCP connect scan, -O: OS detection

# mongodb script
nmap -p 27017 --script mongodb-databases 0.0.0.0
```



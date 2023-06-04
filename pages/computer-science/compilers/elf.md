# ELF (Executable and Linkable Format)

ElF é um formato de arquivo usado em sistemas operacionais baseados em Unix, como Linux, FreeBSD, NetBSD, OpenBSD, Solaris, AIX, HP-UX, IRIX, QNX, e macOS. O formato ELF foi desenvolvido para substituir o formato a.out, que é usado em sistemas operacionais Unix desde o início dos anos 1970. O formato ELF foi desenvolvido para suportar a execução de arquivos binários em arquiteturas de 32 bits e 64 bits, e também para suportar a execução de arquivos binários em arquiteturas big-endian e little-endian.

## ELF Header

O ELF Header é o primeiro campo do arquivo ELF. Ele contém informações sobre o arquivo ELF, como o tipo de arquivo, o tamanho do arquivo, o tipo de arquitetura, o endereço de início do programa, etc.

Para visualizar as informações de um arquivo ELF, podemos usar o comando `readelf`:

```bash
readelf -h ./hello
```

Para visualizar os hexadecimais do arquivo ELF, podemos usar o comando `hexdump`. No endereço `0x00000000` temos as iniciais `7f 45 4c 46`, que são as iniciais do formato ELF em ASCII para HEX.

```bash
hexdump -C ./hello

# alternativamente, podemos usar o comando od
od -t x1 ./hello

# ou o comando xxd
xxd ./hello
```
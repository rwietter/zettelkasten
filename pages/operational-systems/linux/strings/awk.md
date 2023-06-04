# AWK

Awk é um comando útil e poderoso usado para correspondência de padrões, bem como para processamento de texto.

Este comando exibirá apenas a terceira coluna da longa lista de arquivos e diretórios.
```shell
ls -l | awk '{print $3}'
```

NR significa qual linha será obtida
```shell
free -m | awk 'NR==3'
```

Remove caracteres
```shell
# substring [1 = h] = [h, e, l, l, o]
echo "hello" | awk '{print substr($0, 2)}' # ello

# remove first and last caractere
echo "hello" | awk '{print substr($len, 2, length($len) - 1)}'
```
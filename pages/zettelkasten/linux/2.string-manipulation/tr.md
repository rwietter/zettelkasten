---
title: Tr
icon: vscode-icons:file-type-codekit
description: Tr
---

# Tr

este comando é usado para traduzir os caracteres em um arquivo em algumas outras formas, como espremer os caracteres repetitivos e substituí-los pela ocorrência única desse caractere ou excluir um caractere. Isso pode ser feito usando diferentes opções disponíveis com o comando tee.

#### Exemplos
Este comando excluirá toda a ocorrência de vírgula do arquivo
```shell
tr -d ',' < file.txt
```

Apagará toda ocorrência de qualquer um dos caracteres [h, e, l, o] do arquivo.
```shell
tr -d 'hello' < file.txt
```

Remover caracteres
```shell
# remove todos os caracteres h
echo "Hello, how are you?" | tr -d h

# remove todos os caracteres com letras minúsculas
echo "HELLO, How are you?"| tr -d [:lower:]

# remove todos os caracteres com letras maíusculas
echo "HELLO, How are you?"| tr -d [:upper:]

# range
echo "hello, how are you?" | tr -d 'd-h'

# remove parentheses
cat file | tr -d '()' > out_file

# break line
cat file | tr -d '(' | tr ')' '\n'
```
# Sed

Sed é um comando poderoso para editar um 'fluxo' de texto. Ele pode ler a entrada de um arquivo de texto ou de uma entrada canalizada e processar a entrada em uma passagem.

Este comando irá mostrar todas as linhas que contém 'hello'
```shell
sed -n '/hello/p' file
```

Substituirá 'hello' por 'HELLO' em todos os lugares do arquivo.
```shell
sed 's/hello/HELLO/' file
```

Excluirá duas linhas começando com a primeira correspondência de 'hello'
```shell
sed '/hello/,+2d' file
```

Remover caracteres específicos
```shell
echo "hello, how are you?" | sed 's/h//' txt # ello, how are you?

# global analysis
echo "hello, how are you?" | sed 's/h//g' txt # ello, ow are you?

# remove first caractere
echo "hello, how are you?" | sed 's/^.//' txt # ello, how are you?

# remove last caractere
echo "hello, how are you?" | sed 's/.$//' txt # hello, how are you

# remove first and last caractere
echo "hello, how are you?" | sed 's/^.//;s/.$//' # ello, how are you
```

Groups
```shell
echo "[(a,b,c),(e,f,g)]" | sed 's/[()]//g'
```
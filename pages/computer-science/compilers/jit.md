# JIT (Just In Time)

Just in Time é uma espécie de linker que otimiza o código em tempo de execução.

## Cache

O JIT utiliza caching para obter endereços de memória de variáveis e funções, para que não seja necessário fazer uma busca na tabela de símbolos toda vez que uma função ou variável for chamada.
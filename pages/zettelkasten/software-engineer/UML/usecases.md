# Diagramas de Casos de Uso

## Entidades

- Ator: o ator é uma pessoa ou um sistema exterior que interage com o sistema.
- Caso de Uso: um caso de uso é uma sequência de ações que um ator pode realizar no sistema.

## Relacionamentos

- Ator -> Caso de Uso: um ator pode realizar um caso de uso.
- Caso de Uso -> Caso de Uso: um caso de uso pode chamar outro caso de uso.
- Generalização: um caso de uso pode ser uma generalização de outro caso de uso ou atores podem ser uma generalização de um ator. Ex: ator "Usuário" é uma generalização de ator "Cliente" e "Funcionário".
- Inclusão: um caso de uso pode incluir outro caso de uso. Ex: caso de uso "Sacar Dinheiro" inclui o caso de uso "Verificar Saldo".
- Extensão: um caso de uso pode estender outro caso de uso, este é opcional e pode ser realizado ou não. Ex: caso de uso "Sacar Dinheiro" estende o caso de uso "Notificar Cliente".

## Referências

- [Use Case Diagrams](http://www.dsc.ufcg.edu.br/~jacques/cursos/map/html/uml/diagramas/usecases/usecases.htm)
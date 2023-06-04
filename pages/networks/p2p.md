### P2P
```ad-hint
Rede peer-to-peer ou P2P funciona fazendo com que cada um dos nós da rede funcione tanto como cliente quanto servidor. Essa arquitetura permite com que serviços e dados possam ser compartilhados sem a necessidade de um servidor central.
```
- Todos os peers da rede são igualmente privilegiados na aplicação.
- Cada nó fica responsável por uma parte dos recursos da rede: armazenamento de dados, poder de processamento ou largura de banda.
```ad-info
Diferentemente do modelo cliente-servidor, onde um servidor central alimenta os clientes da rede, no modelo P2P todos os nós interligados são fornecedores e consumidores de recurso.
```
- Trocas de arquivos feitas através de uma rede P2P são compartilhadas em partes, de forma que, através da conexão simultânea com vários usuários, seja possível receber partes do arquivo de cada um deles, de acordo com a disponibilidade e maximizando a velocidade de download.

#### Benefícios
1. Escalabilidade Global.
2. Otimização da interação entre nó vizinhos.
3. Disponibilidade.
4. Anonimidade, negabilidade e resistência à censura.

#### Arquiteturas
- **Arquitetura peer-to-peer estruturada**
	- Nesse tipo de arquitetura, os dados são organizados através de uma tabela hash distríbuida (DHT) que mapeia o item ao hospedeiro. São fornecidos identificadores de 128 ou 160 bits tanto para o item quanto para o hospedeiro. Dessa forma, ao fazer a busca por um item específico, são mapeados para o usuário todos os hospedeiros que possuem o item.
- **Arquitetura peer-to-peer não estruturada**
	- Nós possuem uma rede de vizinhos que é construída ao acaso. Ao fazer uma busca por um certo item, um nó consulta primeiro seus vizinhos, depois os viznhos dos vizinhos e assim por diante. Em suma, toda a rede é inundada por essa busca, que causa um grande tráfego de sinalização e torna a rede lenta. Destaca-se também da possibilidade de um cliente não conseguir se comunicar com um hospedeiro se este estiver muito distante por causa de mecanismos que impedem que mensagens se propaguem indefinidamente na rede.

#### Glossário
-   **Peer**
	- Os "peers" ou simplesmente pares são clientes são programas que implementam o protocolo BitTorrent.
- **Seeder**
	- Os "seeders" são os clientes que possuem o arquivo completo já baixado em suas máquinas e contribuem para a "saúde" de um determinado arquivo. Um seeder pode ser o computador que inicialmente compartilha um arquivo ou um peer que já finalizou o download do mesmo via BitTorrent.
- **Leecher**
	- Os "leechers" são os clientes que se conectam à rede par-a-par somente durante a duração do download do seu arquivo. Após a conclusão, se desconectam e atrapalham o resto dos computadores que estão conectados a ele.

#### Como criar uma rede P2P ?


---
### MANET Ad hoc

# DNS

DNS (Domain Name System) é um sistema de tradução de nomes de domínio para endereços IP. Ele é responsável por traduzir os nomes de domínio em endereços IP, que são usados para identificar e localizar computadores e recursos na Internet. O DNS é um componente essencial da funcionalidade da Internet e fornece um mecanismo que permite que os computadores se comuniquem uns com os outros.

O DNS é um sistema distribuído que consiste em vários servidores DNS que são responsáveis por manter um banco de dados de nomes de domínio e seus endereços IP correspondentes. Quando um usuário tenta acessar um site digitando seu nome de domínio em um navegador da web, o navegador envia uma solicitação ao servidor DNS local para obter o endereço IP do site. O servidor DNS local consulta seu banco de dados para obter o endereço IP do site e, em seguida, retorna o endereço IP para o navegador da web, que pode então se conectar ao site.

## Tipos de registros DNS

### A

Um registro A mapeia um nome de domínio para um endereço IPv4. Ele é usado para resolver nomes de domínio para seus endereços IPv4 correspondentes. Por exemplo, se você tiver um registro A para "example.com" com o endereço IP 192.0.2.1, todas as solicitações para "example.com" serão direcionadas para esse endereço IP

### AAAA

Um registro AAAA executa uma função semelhante a um registro A, mas é usado para mapear um nome de domínio para um endereço IPv6. Permite a resolução de nomes de domínio para seus endereços IPv6 correspondentes. Esse registro é essencial para habilitar a conectividade IPv6 em uma rede.

### CNAME

DNS Alias, também conhecido como Nome Canônico (CNAME), é um tipo de registro DNS usado para criar um alias ou apelido para um domínio ou subdomínio. Em vez de apontar diretamente para um endereço IP, um registro CNAME aponta para outro nome de domínio. Quando uma solicitação de DNS é feita para um domínio com um registro CNAME, ela resolve o endereço IP associado ao domínio apontado pelo registro CNAME. Os CNAMEs são comumente usados ​​para balanceamento de carga ou ao configurar vários subdomínios apontando para o mesmo endereço IP.

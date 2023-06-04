# Multitenancy

Multitenancy, ou multilocação é uma arquitetura em que é usada apenas uma instância de software para atender a vários grupos de usuários diferentes. As ofertas de software como serviço (SaaS) são um exemplo de arquitetura de multilocação.

O conceito da multilocação já existe há décadas. Nos anos 1960, as universidades com mainframes caros e poderosos desenvolveram um software de tempo compartilhado (time-sharing) que permitia que vários usuários acessassem o computador praticamente ao mesmo tempo.

Essa ideia nunca foi abandonada de fato e, atualmente, é o conceito de multitenancy que viabiliza a cloud computing. Em uma nuvem pública, um pool de recursos compartilhados (como capacidade de processamento e memória) é dividido entre vários locatários. Os dados e as cargas de trabalho de cada locatário permanecem isolados, mesmo quando executados na mesma máquina ou grupo de máquinas físicas.

Se levarmos essa ideia um passo adiante e a aplicarmos à arquitetura de software, chegamos ao conceito moderno de SaaS. Um provedor de SaaS executa uma instância da aplicação e oferece o acesso a clientes individuais. Os dados de cada usuário permanecem isolados, mesmo que todos eles estejam acessando o mesmo software.
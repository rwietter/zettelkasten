---
title: Testes
icon: vscode-icons:file-type-codekit
---

# Filosofias de Testes

### BDD

O Behavioral-Driven Development (BDD) é uma abordagem de teste derivada da metodologia Test-Driven Development (TDD). No BDD, os testes são baseados principalmente no comportamento do sistema. Essa abordagem define várias maneiras de desenvolver um recurso com base em seu comportamento. Na maioria dos casos, a abordagem Given-When-Then é usada para escrever casos de teste:

- Dado que o usuário inseriu credenciais de login válidas.
- Quando um usuário clica no botão de login.
- Em seguida, exiba a mensagem de validação bem-sucedida

<img src="https://www.leapwork.com/hs-fs/hubfs/Aktiv%2041.png?width=568&name=Aktiv%2041.png" width="100%">


### TDD

Desenvolvimento Orientado a Testes (Test-Driven Development) é uma metodologia de teste ou uma prática de programação implementada da perspectiva de um desenvolvedor. É necessário escrever casos de teste para cada pequena funcionalidade de um aplicativo. A principal intenção desta técnica é modificar ou escrever um novo código somente quando o teste falhar. Portanto, resulta em menor duplicação de scripts de teste. Em uma abordagem TDD, os scripts de teste automatizados são escritos antes das partes funcionais do código. A metodologia TDD envolve os seguintes passos:

- Com base nos requisitos especificados nos documentos, um desenvolvedor escreve um caso de teste automatizado
- Esses testes são executados e, em alguns casos, eles falham, pois são desenvolvidos antes do desenvolvimento de um recurso real
- A equipe de desenvolvimento então refatora o código para que o teste passe com sucesso

<img src="https://dkrn4sk0rn31v.cloudfront.net/2019/11/04105020/img-tdd.png" width="80%">

### ATDD

Na técnica de Desenvolvimento Orientado a Testes de Aceitação (ATDD), um único teste de aceitação é escrito a partir da perspectiva do usuário. Ele se concentra principalmente em satisfazer o comportamento funcional do sistema. Essa técnica tenta responder à pergunta – O código está funcionando conforme o esperado?

Nota: O Desenvolvimento Orientado a Testes de Aceitação é muito semelhante ao Desenvolvimento Orientado a Comportamento. No entanto, uma diferença fundamental entre eles é: o BDD se concentra mais no comportamento do recurso, enquanto o ATDD se concentra na captura dos requisitos precisos.

- Analisar e discutir os cenários do mundo real.
- Decidir os critérios de aceitação para esses cenários de teste.
- Automatizando os casos de teste de aceitação.
- Focando no desenvolvimento desses casos de requisitos

---

## Tests

### 1. Testes de unidade

Testes de unidade são feitos em um nível muito baixo, próximo ao código-fonte do aplicativo. Eles consistem em testar métodos e funções individuais de classes, componentes ou módulos usados pelo software. Testes de unidade, em geral, têm custo baixo para automatizar e podem ser executados com rapidez por um servidor de integração contínua.

### 2. Testes de integração

Testes de integração verificam se diferentes módulos ou serviços usados pelo seu aplicativo funcionam bem juntos. Por exemplo, pode ser testar a interação com o banco de dados ou garantir que os microsserviços funcionem juntos conforme o esperado. A execução desses tipos de testes tem um custo maior, uma vez que exigem que várias partes do aplicativo estejam ativas e em execução.

### 3. Testes funcionais

Os testes funcionais têm como foco os requisitos de negócios de uma aplicação. Eles só verificam a saída de uma ação e não verificam os estados intermediários do sistema ao executar essa ação.

Às vezes há uma confusão entre testes de integração e testes funcionais, uma vez que ambos exigem vários componentes para interagirem entre si. A diferença é que um teste de integração pode simplesmente verificar que você pode consultar o banco de dados, enquanto um teste funcional esperaria obter um valor específico do banco de dados conforme definido pelos requisitos do produto.

### 4. Testes de ponta a ponta

Teste de ponta a ponta replica o comportamento de um usuário com o software em um ambiente de aplicativo completo. Ele verifica se vários fluxos de usuário funcionam como o esperado e podem ser tão simples quanto carregar uma página da web ou fazer login ou cenários muito mais complexos verificando notificações por e-mail, pagamentos on-line etc.

Testes de ponta a ponta são muito úteis, mas têm um alto custo e podem ser difíceis de atualizar quando automatizados. Recomendamos ter alguns testes de ponta a ponta essenciais e contar mais com tipos de testes de nível inferior (testes de unidade e de integração) para poder identificar rapidamente alterações que causam falha.

### 5. Testes de aceitação

Os testes de aceitação são testes formais executados para verificar se um sistema atende aos requisitos de negócios. Eles exigem que todo o aplicativo esteja ativo e em execução e foca em replicar os comportamentos do usuário. Porém, também pode ir mais além e medir o desempenho do sistema e rejeitar alterações se determinadas metas não forem cumpridas.

### 6. Testes de desempenho

Os testes de desempenho avaliam o desempenho de um sistema sob uma carga de trabalho específica. Esses testes ajudam a medir a confiabilidade, a velocidade, a escalabilidade e a capacidade de resposta de um aplicativo. Por exemplo, o teste de desempenho pode observar tempos de resposta ao executar um grande número de solicitações, ou ver como o sistema se comporta com quantidade significativa de dados. Ele pode determinar se um aplicativo atende aos requisitos de desempenho, localizar gargalos, medir a estabilidade durante picos de tráfego e muito mais.

### 7. Teste de sanidade (smoke test)

Testes de sanidade são testes básicos que verificam a funcionalidade básica do aplicativo. Eles são feitos para terem execução rápida e sua meta é garantir que os principais recursos do seu sistema estejam funcionando conforme o esperado.

Os testes de sanidade podem ser úteis logo após um novo build ser feito para decidir se você pode ou não executar testes mais caros, ou logo após uma implementação para garantir que o aplicativo esteja sendo executado como deveria no ambiente recém-implementado.

### 8. Testes de regressão

Testes de regressão são testes que verificam se uma alteração recente causou algum efeito colateral. Eles são executados após uma alteração no código-fonte para garantir que o comportamento do sistema não tenha sido alterado.

### 9. Testes de segurança

Testes de segurança são testes que verificam se o aplicativo está vulnerável a ataques comuns. Eles podem ser executados manualmente ou automatizados e são muito úteis para garantir que o aplicativo não tenha vulnerabilidades conhecidas.
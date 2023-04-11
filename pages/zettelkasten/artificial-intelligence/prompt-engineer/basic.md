# Prompt Engineering

Prompt Engineering é uma forma de escrever promps bem elaborados para obter melhores resultados em GPT-3.

## Instruções

Você pode criar prompts eficazes para várias tarefas simples usando comandos para instruir o modelo sobre o que deseja alcançar, como "Escrever", "Classificar", "Resumir", "Traduzir", "Ordenar" etc.

```md
### Traduzir ###
Traduza o texto abaixo para pt-BR:
Texto: "Hello"
```

## Especificidade

É importante ter um bom formato e um prompt descritivo. Na verdade, fornecer exemplos no prompt é muito eficaz para obter a saída desejada em formatos específicos.

```md
Extraia o nome dos lugares no texto a seguir.
Formato desejado: <nome_do_lugar>
Local: <comma_separated_list_of_company_names>
Contribuição: "Embora estes desenvolvimentos sejam encorajadores para os investigadores, muito ainda é um mistério. “Muitas vezes temos uma caixa preta entre o cérebro e o efeito que vemos na periferia”, diz Henrique Veiga-Fernandes, neuroimunologista do Centro Champalimaud de o Desconhecido em Lisboa. “Se queremos utilizá-lo no contexto terapêutico, precisamos de facto de perceber o mecanismo.""
```

## Precisão

É importante ter um prompt preciso e claro. Se você não especificar o que deseja, o modelo pode não entender o que você deseja e retornar uma resposta inútil.

Exemplo de prompt impreciso:

```md
Explique o conceito de engenharia imediata. Mantenha a explicação curta, apenas algumas frases, e não seja muito descritivo.
```

```md
O seguinte é um agente que recomenda filmes a um cliente. NÃO PEÇA INTERESSES. NÃO PEÇA INFORMAÇÕES PESSOAIS.
Cliente: Por favor, recomende um filme baseado nos meus interesses.
Agente:
```

Exemplo de prompt preciso:

```md
Use 2 a 3 frases para explicar o conceito de engenharia imediata a um aluno do ensino médio.
```

```md
O seguinte é um agente que recomenda filmes a um cliente. O agente é responsável por recomendar um filme dos principais filmes de tendências globais. Deve abster-se de perguntar aos usuários sobre suas preferências e evitar pedir informações pessoais. Se o agente não tiver um filme para recomendar, ele deve responder "Desculpe, não foi possível encontrar um filme para recomendar hoje.".
Cliente: Por favor, recomende um filme baseado nos meus interesses.
Agente:
```

## Extração de Informações

```md
As declarações de contribuição do autor e os agradecimentos em trabalhos de pesquisa devem indicar clara e especificamente se, e em que medida, os autores usaram tecnologias de IA, como ChatGPT, na preparação de seus manuscritos e análises. Eles também devem indicar quais LLMs foram usados. Isso alertará os editores e revisores para examinar os manuscritos com mais cuidado em busca de possíveis vieses, imprecisões e créditos de origem impróprios. Da mesma forma, os periódicos científicos devem ser transparentes sobre o uso de LLMs, por exemplo, ao selecionar manuscritos enviados.

Mencione o produto baseado em modelo de linguagem grande mencionado no parágrafo acima:

> ChatGPT
```

## Classificação

```md
Classifique o seguinte texto em uma escala de 1 a 5, sendo 1 a pior nota e 5 a melhor nota.
Texto: "O modelo de linguagem GPT-3 é um modelo de linguagem de última geração que pode ser usado para gerar texto, classificar texto, traduzir texto, extrair informações de texto, entre outras coisas."

> 5
```

```md
Classifique o texto em neutro, negativo ou positivo.
Texto: Acho que a comida estava boa.
Sentimento:

> Positivo
```

## Conversação

Talvez uma das coisas mais interessantes que você pode conseguir com a engenharia imediata seja instruir o sistema LLM sobre como se comportar, sua intenção e sua identidade. Isso é particularmente útil quando você está construindo sistemas de conversação, como chatbots de atendimento ao cliente.

```md
A seguir, uma conversa com um assistente de pesquisa de IA. O tom assistente é técnico e científico.
Humano: Olá, quem é você?
AI: Saudações! Eu sou um assistente de pesquisa de IA. Como posso te ajudar hoje?
Humano: Você pode me falar sobre a criação de buracos negros?
IA:

> Claro! Buracos negros são regiões do espaço-tempo onde a força gravitacional é tão forte que nada, nem mesmo a luz, consegue escapar dela. Eles são criados quando uma estrela muito massiva morre e seu núcleo colapsa sobre si mesmo, formando uma singularidade de densidade infinita. A intensa gravidade da singularidade atrai toda a matéria e radiação ao seu redor, criando o buraco negro.
```

## Geração de Código

```md
/*
Pergunte ao usuário o nome dele e diga "Olá"
*/

> let name = prompt("Qual é o seu nome?");
> console.log(`Olá, ${name}!`);
```

```md
"""
Tabela departamentos, colunas = [DepartmentId, DepartmentName]
Alunos da tabela, colunas = [DepartmentId, StudentId, StudentName]
Crie uma consulta MySQL para todos os alunos do Departamento de Ciência da Computação
"""

> SELECT StudentId, StudentName FROM students WHERE DepartmentId IN (SELECT DepartmentId FROM departamentos WHERE DepartmentName = 'Ciência da Computação');
```

## Raciocínio

Talvez uma das tarefas mais difíceis para um LLM hoje seja aquela que requer alguma forma de raciocínio. O raciocínio é uma das áreas que mais me entusiasma devido aos tipos de aplicativos complexos que podem surgir dos LLMs.

Resultado incorreto:

```md
Os números ímpares neste grupo somam um número par: 15, 32, 5, 13, 82, 7, 1.
A:

> Não, os números ímpares neste grupo somam um número ímpar: 119.
```

Forneça as etapas de raciocínio:

```md
Os números ímpares neste grupo somam um número par: 15, 32, 5, 13, 82, 7, 1.
Resolva dividindo o problema em etapas. Primeiro, identifique os números ímpares, some-os e indique se o resultado é par ou ímpar.
A:

> Números ímpares: 15, 5, 13, 7, 1
> Total 41
> 41 é um número ímpar.
```
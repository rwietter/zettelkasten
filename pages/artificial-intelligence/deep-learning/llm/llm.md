---
title: LLM
description: LLM are large language models that are trained on a large amount of text data. They are used to generate text.
icon: vscode-icons:file-type-codekit
---

# LLM (Large Language Model)


### Example (GPT-4)

GPT é um modelo de linguagem que foi treinado com 175 bilhões de parâmetros. Utiliza um algoritmo de treinamento denominado Reinforcement Learning from Human Feedback (RLHF).

Para produzir respostas de linguagem natural, os LLMs usam modelos de deep learning, que usam redes neurais de várias camadas para processar, analisar e fazer previsões com dados complexos.

Os LLMs são únicos em sua capacidade de gerar texto coerente e de alta qualidade, muitas vezes indistinguível do de um ser humano. Um dos LLMs mais conhecidos é o GPT, que significa Generative Pretrained Transformer, desenvolvido pela OpenAI.

#### 7 Key terms

- **Word embedding:** um algoritmo usado em LLMs para representar o significado das palavras em uma forma numérica para que possa ser alimentado e processado pelo modelo de IA. Word embedding é um algoritmo fundamental usado nos LLMs, pois é usado para representar o significado das palavras em um formato numérico, que pode ser processado pelo modelo de IA. Isso é alcançado mapeando palavras para vetores em um espaço de alta dimensão, onde palavras com significados semelhantes estão localizadas mais próximas.
- **Attention mechanisms:** Um algoritmo usado em LLMs que permite que a IA se concentre em partes específicas do texto de entrada, por exemplo, palavras do texto relacionadas a sentimentos, ao gerar uma saída. Os mecanismos de atenção são outro algoritmo importante nos LLMs, permitindo que a IA se concentre em partes específicas do texto de entrada ao gerar sua saída. Isso permite que o LLM considere o contexto ou sentimento de uma determinada entrada, resultando em respostas mais coerentes e precisas.
- **Transformer:** Um tipo de arquitetura de rede neural que é popular na pesquisa LLM que usa mecanismos de auto-atenção para processar dados de entrada. Os transformadores são um tipo de arquitetura de rede neural que se tornou popular na pesquisa LLM. Essas redes usam mecanismos de autoatenção para processar dados de entrada, permitindo que eles capturem efetivamente dependências de longo prazo na linguagem humana. Esses algoritmos são cruciais para o desempenho dos LLMs, pois permitem processar e entender entradas de linguagem natural e gerar saídas o mais humano possível.
- **Fine-tuning:** o processo de adaptação de um LLM para uma tarefa ou domínio específico, treinando-o em um conjunto de dados menor e relevante.
- **Prompt Engineering:** O design habilidoso de prompts de entrada para LLMs produzir saídas coerentes e de alta qualidade.
- **Bias:** A presença de preferências ou preconceitos sistemáticos e injustos em um conjunto de dados de treinamento, que pode então ser aprendido por um LLM e resultar em saídas discriminatórias.
- **Interpretability**: A capacidade de entender e explicar as saídas e decisões de um sistema de IA, que geralmente é um desafio e uma área de pesquisa contínua para LLMs devido à sua complexidade.

#### Fine-tuning

Fine-tuning de LLMs refere-se ao processamento da adaptação de um modelo de uso geral para uma tarefa ou domínio específico.

Isso é alcançado treinando o LLM em um conjunto de dados menor que seja relevante para a tarefa em questão, por exemplo, fornecendo um conjunto de prompts e respostas ideais para permitir que a IA aprenda os padrões e nuances desse domínio específico.

Por exemplo, um LLM afinado pode ser treinado em:

- Um conjunto de dados de registros médicos para ajudar no diagnóstico médico.
- Um conjunto de dados de documentos legais para fornecer consultoria jurídica.
- Um conjunto de dados financeiros, como registros da SEC ou relatórios de analistas.

Essa abordagem personalizada geralmente resulta em desempenho superior na tarefa específica, em comparação com o uso de um LLM de uso geral como o ChatGPT.

Fine-tuning de um LLM também pode ajudar a influenciar os dados originais do treinamento. Em particular, usando um conjunto de dados mais focado, o LLM pode ser treinado em um conjunto diversificado de entradas, reduzindo assim a probabilidade de resultados discriminatórios.

Dito isto, é importante observar que o fine-tuning de um LLM tem algumas limitações. Por exemplo, o desempenho do modelo de IA pode ser limitado pela qualidade e tamanho do conjunto de dados de fine-tuning. Além disso, o fine-tuning de um LLM pode ser um processo demorado e intensivo em recursos, pois você precisa preparar todos os prompts e respostas, o que geralmente requer um conhecimento significativo do domínio.



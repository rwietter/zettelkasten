# Zero-shot

Prompts de Zero-shot são aqueles que não necessitam de treinamento. Eles são baseados em modelos pré-treinados, como o GPT-3, e são capazes de gerar conteúdo a partir de uma única palavra-chave.

## Como funciona?

Observe que no prompt abaixo não fornecemos nenhum exemplo ao modelo, esses são os recursos de tiro zero em ação.

```md
Classifique o texto em neutro, negativo ou positivo.
Texto: Acho que as férias estão boas.
Sentimento:

> Neutro
```

Essa técnica pode ser melhorada se for realizado finetuning no modelo, ou seja, treinando o modelo com exemplos de sentimentos positivos e negativos.
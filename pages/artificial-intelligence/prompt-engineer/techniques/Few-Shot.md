# Few-Shot

Few-shot é uma técnica que permite que o modelo seja treinado com poucos exemplos. Essa técnica é muito útil quando não temos muitos dados para treinar o modelo

```md
Um "whatpu" é um pequeno animal peludo nativo da Tanzânia. Exemplo de frase que usa
a palavra whatpu é:
Estávamos viajando pela África e vimos esses whatpus muito fofos.

Fazer um "farduddle" significa pular para cima e para baixo muito rápido. Exemplo de frase que usa
a palavra farduddle é:

> Quando ganhamos o jogo, todos começamos a festejar.
```

Podemos observar que o modelo aprendeu de alguma forma como executar a tarefa fornecendo apenas um exemplo (ou seja, 1-shot). Para tarefas mais difíceis, podemos experimentar aumentar as demonstrações (por exemplo, 3 shot, 5 shot, 10 shot, etc.).

Essa técnica, no momento, falha miservalmente para tarefas mais complexas, como raciocínio lógico, por exemplo. Mas, para tarefas mais simples, como classificação de texto, essa técnica funciona muito bem.
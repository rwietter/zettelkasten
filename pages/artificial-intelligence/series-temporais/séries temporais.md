---
title: Séries Temporais
icon: vscode-icons:file-type-codekit
---

# Séries Temporais

Uma **série temporal** é uma coleção de observações feitas sequencialmente ao longo do tempo. Dito de outra forma, é uma sequência de pontos (dados numéricos) em ordem sucessiva, geralmente ocorrendo em intervalos uniformes. Portanto, uma série temporal é uma sequência de números coletados em intervalos regulares durante um período de tempo.

Em modelos de [regressão linear](https://pt.wikipedia.org/wiki/Regress%C3%A3o_linear "Regressão linear") com [dados cross-section](https://pt.wikipedia.org/wiki/Dados_cross-section "Dados cross-section") a ordem das observações é irrelevante para a análise, em séries temporais a ordem dos dados é fundamental. Uma característica muito importante deste tipo de dados é que as observações vizinhas são dependentes e o interesse é analisar e modelar essa dependência.

Uma série temporal é geralmente representada por uma [letra](https://pt.wikipedia.org/wiki/Letra "Letra"). A [variável](https://pt.wikipedia.org/wiki/Vari%C3%A1vel "Variável") representada assume diferentes valores em diferentes momentos do tempo, e por isso utiliza-se um subscrito junto à [letra](https://pt.wikipedia.org/wiki/Letra "Letra") para denotar o período a que o valor específico (realização) se refere. Por exemplo, se a [variável](https://pt.wikipedia.org/wiki/Vari%C3%A1vel "Variável") "PIB anual do Brasil" for representada pela letra y, podemos denotar por y0 o PIB do primeiro período.

## Componentes de uma série temporal
![](https://lh4.googleusercontent.com/i_Lg8UA7j1YQFaB8R7m9tTSgaK2UHPAgZIvNHN4LSJTFNTPscC6R-40Yyki8bBw05pdfhBAZgp04lCNmXURu=w1366-h660-rw)

## Lei de formação das séries temporais

As séries temporais são muitas vezes representadas por meio de funções matemáticas, ou seja, assume-se que o valor obtido é função de alguma outra variável (ou de diversas variáveis), ou, o que é a mesma coisa, que existe uma lei de formação que determina esta série temporal.

A função que determina a série temporal não precisa ser sempre linear. Na verdade, ela pode ter qualquer formato (quadrática, exponencial...) e pode depender de mais de uma variável. No entanto, uma boa parte da (mas não toda a) econometria trata apenas de funções lineares, que são mais fáceis de modelar.

Os componentes de uma série temporal podem ser determinísticos e/ou estocásticos.

## Componente determinístico

Quando os valores da série podem ser escritos através de uma função matemática perfeitamente determinada por uma ou mais variáveis, diz-se que ela contém apenas o componente determinístico. Nesta função, a variável $Y_t$ depende de, ou é determinada pela, variável $X_t$

Onde:
-   $y$ representa o dado obtido.
-   $a$ representa o intercepto
-   $x$ representa a [variável](https://pt.wikipedia.org/wiki/Vari%C3%A1vel "Variável") que determina y.
-   $t$ indica o período à qual o dado se refere.

$$\begin{array}
 /Y = f(x) \\
  Y_t = a + b * X_t \\
  Y_t = 1 + 2 * X_2 \\
  Y_t = 1 + (2 * (1*2)) \\
  Y_t = 5
\end{array}
$$

## Componente estocástico

A representação de uma série temporal pode incluir um componente aleatório, que deverá ser gerado por um processo estocástico, normalmente representado por $\epsilon_t$ ou $u_t$

$$\begin{array} \\
 y_t = determinístico + estocástico \\
 y_t = a + b * x_t + \epsilon_t
\end{array}
$$

Neste caso, a série temporal é denominada de estocástica. Note-se que uma série estocástica $y_t$ pode ou não conter um componente determinístico. O que lhe confere um carácter estocástico é o fato de não se poder determinar o seu valor exato mesmo conhecendo a sua especificação e o valor de todos os seus determinantes, isto porque a série possui uma natureza intrinsecamente aleatória. Exemplo:

![](https://lh3.googleusercontent.com/fife/AAWUweUhIoUh6pREn1rihza23qsUYP3nykdY9-olORkocKQZc2sVz9mw9wL6rd_KncXVr3xxNI5ZA7r1ZonbW0Yg8qqpCvReQkRICSg-ZSkZVgSkBXpDff-ck9e3oD16GtK1mQ4LcYidmBRA9lFil8_RE3vaZkxKyjqUJQ209TjqHPlLxJJ-4c38SYwYa0tjYy4h2MuccNJxf8rV2kgmUlH6avU15EvxD1Iy2VPNCLXq_dCND99VX7mNWnZixnjEWbDc_GkkmU56USpGGaTfPrtEZQfe1_D-F-ITLL1PFCg_dgf6xWLoi0LnorHL2fZOt6Cjn-2omrH-hYkMirh3V6FKWKIcsbl3mCaVf1FyfJuDExJqk70o4CRAXb4v3uendDZwNRjWM0asldufFV_o-KcOMFCuDpOjssLm_LtfWAQr_wbV5qfp8v5e_-o_xBN6rEbuZdRHpTLsSSx_M3udTnk3baMxPg69l5x51USoEHYo8d8YB_hE1m3lvKuHl4sedKVFNVH6C8HEz_iV60YrH67mGhm4yzoN66LvX4WNgA0cYu1AP_9FQ6gt677axOM3vUNP1HELApBvpBzFhaOzfPTd9oqUaqV_k8k8_58wwtLwA8uPETysmb_iQ1_yMA0QEKEUFDP03e6jSLcbUo36GroVrvPqhton5hb-RQl_eGirvK8OhYRjYfX5PaTJvYpCDAPYd3Y-LMCZms1HBznc5lm2gxl74gA9v1kmj4RNpdxAOe7EDpzuN2MEbpUmfgisJRd7fxAEXWBbRrz3xdY1SPqb1qEwn7DBT9RXOOOvm4JVaZ-b672r-yK2PFaAUervCwWpIdk0dXO591YSxensXpV7GwcgcMgt8_X6Ld0beWXSnoL1zLrTnNxGZ4N1uIYW9ihfqusW0XcsQF_wtrQ1k_DsTMlBclCNLm5pWnKdsOtFLMAUlc9aPfoGvrhTDoFDod7ekp0VXPGT4qbmspEBbrSmc9mq1qBDPdtvBmiiomYs6IIDtW5os6kU_r7ASkP_UOFC4gH5Nw98qbBNwAULu9duAn9JXUlstprNkHG88sDMpaVenxWlTWRiIBglVlNZBfm5zinmZht7ijAY3E88t6a_ZrHrcqvjuX2yNXGYEYTNbEResyqZumUs4QVABykPiuvPdzrjdctpMS9o3ltGvrz_w3UDfyqUT_1D2KRhztCR8BZz5xgrji1lw_BqSn-LiQ1zNWK3xHUFG4qzUEUj3JwzFw1DLNZSJaN5VkHz4a686PkBxSQtcEXNTfjm3rqm8bB3i9BJkES1VA=w906-h660)

## Classificação das séries temporais
As séries temporais podem ser **estacionárias** ou **não estacionárias** (têm ou não raiz unitária). Além disso, podem ser estocásticas ou determinísticas.

- Quando os valores da série podem ser escritos através de uma função matemática $y=f(tempo)$ diz-se que a série é determinística.
- Quando a série envolve, além de uma função matemática do tempo, também um termo aleatório $y = f(tempo, \ \varepsilon )$ a série é chamada estocástica.
- Normalmente as séries temporais são analisadas a partir de seus principais movimentos descritos como: tendência, ciclo, sazonalidade e variações aleatórias.

### Série estacionária
Uma série estacionária é o que em matemática costuma se chamar série convergente, ou seja, aquela que flutua em torno de uma mesma média ao longo do tempo.

### Série não estacionária
A série não estacionária (ou divergente, em matemática), é aquela que tem raiz unitária.

## Estudos

Os modelos para estudar as séries temporais são muito conhecidos por seus acrônimos em inglês, montados a partir de AR (modelos auto-regressivos), 'I' (modelos integrados) e MA (modelos de média móvel). Por exemplo, o modelo **ARIMA** é um modelo auto-regressivo, integrado e de média móvel.

- [Flow Forecast](https://github.com/AIStream-Peelout/flow-forecast)
- [Artigo: Deep Transformer Models for Time Series Forecasting: The Influenza Prevalence Case](https://arxiv.org/pdf/2001.08317.pdf)
- [Transformer Time Series Prediction](https://github.com/oliverguhr/transformer-time-series-prediction)
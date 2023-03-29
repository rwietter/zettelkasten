## Kohonen network (KN)

A **rede Kohonen** também é chamada de **mapa auto-organizável** (_self organizing map, SOM_). Ela usa aprendizado competitivo para classificar os dados sem supervisão. Os dados de entrada são comparados com os valores dos neurônios (inicializados aleatoriamente) através de uma métrica de similaridade, e as conexões que representam maior similaridade são fortalecidas. Os neurônios então se ajustam para representar os dados originais de forma ainda mais similar, “arrastando” junto os neurônios em sua proximidade. Assim, ao final do treinamento, os dados originais podem ser classificados em clusters de similaridade na forma de um mapa definido pelos neurônios da rede.

Os SOMs são capazes de organizar dados para que os clusters formados possam ser explorados posteriormente. Por exemplo, eles podem indicar se um equipamento complexo está funcionando corretamente a partir das medições de sensores embutidos.

![](https://cdn.shortpixel.ai/spai/w_153+q_+ret_img+to_webp/https://www.asimovinstitute.org/wp-content/uploads/2016/09/kn.png)
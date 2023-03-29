## Deep residual network (DRN)

A **rede residual profunda** é uma FFN com muitas camadas, e que possui conexões extras ligando camadas não subsequentes. Dessa forma, as camadas mais profundas não recebem somente a informação da camada imediatamente anterior, mas também de outras camadas anteriores. Por causa dessa estrutura, as DRNs podem aprender padrões tendo até 150 camadas de profundidade – FFNs costumam ser limitadas a 5. Mas alguns trabalhos comparam o desempenho dessa estrutura com aquele de RNNs, sendo portanto as DRNs chamadas de RNNs sem a construção explícita de tempo, ou ainda LSTMs sem portão.

A aplicação é derivada das estruturas recorrentes que a DRN acaba emulando.

![](https://cdn.shortpixel.ai/spai/w_316+q_+ret_img+to_webp/https://www.asimovinstitute.org/wp-content/uploads/2016/09/drn.png)


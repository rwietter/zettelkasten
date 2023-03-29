## Hopfield network (HN)

A **rede de Hopfield** tem estrutura similar às cadeias de Markov, mas seu funcionamento é diferente. Primeiro, todos os neurônios são conectados entre si, o que não é requisito na estrutura anterior. Segundo, os neurônios têm todas as funções das camadas de uma rede neural, funcionando como entrada no início, camada escondida durante o treinamento, e saída ao final. A rede é treinada para que seu estado convirja para um estado estável de interesse.

Devido à sua característica prática, ela também é chamada de **memória associativa**, já que é capaz de se “lembrar” do estado de interesse recebendo como entrada um estado similar. Assim, ela pode ser usada para reconstruir informações completas quando, por exemplo, apenas metade da informação está disponível.

![](https://cdn.shortpixel.ai/spai/w_130+q_+ret_img+to_webp/https://www.asimovinstitute.org/wp-content/uploads/2016/09/hn.png)


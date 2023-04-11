## Deep convolutional inverse graphics network (DCIGN)

A **rede profunda de gráfico inverso convolucional** nada mais é que uma VAE que possui uma CNN como encoder e uma DN como decoder. Como ela aprende a representar a informação no espaço dimensional reduzido como uma distribuição probabilística, ela é capaz de gerar um dado “misto”, formado por dois dados que ela recebeu separadamente.

Imagine, por exemplo, uma rede convolucional especializada em classificar rostos de duas etnias diferentes. A DCIGN poderia gerar um rosto de uma etnia mista. Em outras palavras, ela poderia responder à pergunta: como seria o filho de duas pessoas dessas etnias?

![](https://cdn.shortpixel.ai/spai/w_283+q_+ret_img+to_webp/https://www.asimovinstitute.org/wp-content/uploads/2016/09/dcign.png)


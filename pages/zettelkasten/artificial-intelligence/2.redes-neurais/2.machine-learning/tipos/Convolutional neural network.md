## Convolutional neural network (CNN) ou Deep convolutional network (DCN)

A **rede neural convolucional** tem uma estrutura bem diferente daquelas apresentadas até aqui. Nas camadas de convolução, a informação passa por vários filtros (que na prática são matrizes numéricas) com a função de acentuar padrões regulares locais, ao mesmo tempo em que vão reduzindo a dimensão dos dados originais. Os resultados de vários filtros são sumarizados por operações de _pooling._ Na parte mais profunda das convoluções, espera-se que os dados num espaço dimensional reduzido contenham informação suficiente sobre esses padrões locais para atribuir um valor semântico ao dado original. Esses dados passam então por uma estrutura de FFN clássica para a tarefa de classificação.

Por essas características, a aplicação mais comum das CNNs é na classificação de imagens; os filtros acentuam atributos dos objetos necessários à sua correta classificação. Uma CNN especializada em classificar rostos, por exemplo, nas primeiras camadas reconhece contornos, curvas e bordas; mais adiante, usa essa informação para reconhecer boca, olhos, orelha e nariz; e no final, reconhece o rosto inteiro. Além de imagens, qualquer informação com regularidade local pode se beneficiar do uso de CNNs, como áudio por exemplo.

![](https://cdn.shortpixel.ai/spai/w_268+q_+ret_img+to_webp/https://www.asimovinstitute.org/wp-content/uploads/2016/09/cnn.png)


## Auto-encoder (AE)

Os auto-encoders são projetados para representar a informação de entrada em um espaço dimensional menor. Por isso, a camada escondida central dessa rede, que representa esse espaço, deve ter menos neurônios que a camada de entrada. A camada de saída é uma cópia da informação de entrada, de forma que, durante o treinamento, os auto-encoders aprendem a representar a informação original em menos espaço, mas com informação suficiente para reconstruir os dados originais. A primeira metade da rede, que comprime a informação, é chamada de _encoder_, e a segunda de _decoder._

Os auto-encoders podem ser usados tanto para compactar dados para armazenamento e/ou transmissão, quanto para que representar os dados em forma reduzida para que, por exemplo, outra rede neural especializada em uma tarefa específica possa utilizá-los.

![](https://cdn.shortpixel.ai/spai/w_89+q_+ret_img+to_webp/https://www.asimovinstitute.org/wp-content/uploads/2016/09/ae.png)

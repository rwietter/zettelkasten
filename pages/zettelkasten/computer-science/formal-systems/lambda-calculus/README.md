## Lambda Calculus

Uma abstração lambda é um tipo de expressão que denota uma função. O λ determina que existe uma função, e é imediatamente seguido por uma variável, denominada parâmetro formal da função.

Existem três maneiras principais de resolver um cálculo lambda: by reduction, by expansion, e by normalization. By reduction é a técnica de cálculo lambda mais simples. Consiste em aplicar as regras de redução para simplificar uma expressão lambda até que ela seja irredutível. By expansion é uma técnica mais avançada que usa as regras de expansão para transformar uma expressão lambda em uma forma equivalente que pode ser mais fácil de reduzir. By normalization é a técnica mais abrangente e consiste em aplicar as regras de redução e expansão de forma interativa até que a expressão lambda seja normalizada, ou seja, seja irredutível e não possa mais ser expandida.

```bash
λx. x + 1 # f(x) -> x + 1
(λx. λy. 5 + y) 2 # f(x) -> f(y) -> 5 + 2

# Examples
(λx. x) y
(λx. f  x)
x y
(λx. x) (λx. x)
(λx. x y) z
(λx y. x) t f
(λx y z. z x y) a b (λx y. x)
(λf g. f g) (λx. x) (λx. x) z
(λx y. x y) y
(λx y. x y) (λx. x) (λx. x)
(λx y. x y) ((λx. x) (λx. x))
```

**Associatividade, aplicação e multiplicidade**

A expressão Lambda se estende para a direita
```
λf. xy ≡ λ f.(x y)
```

A aplicação é associativa à esquerda 
```
xyz ≡ (xy)z
```

Múltiplos lambdas podem ser omitidos 
```
λ fg.x ≡ λ f.λg.x
```
 
**Variáveis Livres e Ligadas**

A variável *x* é ligada por *λ* na expressão: `λ x.e` caso a variável não seja ligada, então é considerada *livre*. As variáveis livres de um termo são definidas como:

![livre-atada](lambda-livre-atada.png)

Para a expressão abaixo, y é ligada e x é uma variável livre:

```
λy . x y
```
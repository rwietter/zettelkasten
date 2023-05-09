# Orientação a Objetos

Orientação a objetos é um paradigma de programação baseado no conceito de "objetos", que podem conter dados na forma de campos (atributos) e códigos, na forma de procedimentos (métodos).

A Orientação a Objetos pode ter implementações diferentes, dependendo da linguagem de programação. Por exemplo, em Java, a Orientação a Objetos é baseada em classes, enquanto em JavaScript, é baseada em protótipos, na linguagem Self é puramente Objetos.

Para Alan Kay, precursor da OOP. OOP significa apenas mensagens, retenção local e proteção, ocultação do processo de estado e ligação tardia extrema de todas as coisas. Em outras palavras:
- **Messaging**: o foco deve estar em passar mensagens entre objetos em vez de invocar métodos em objetos.
- **Local retention and protection**: objetos devem ser autocontidos e encapsulados, devem manter seu próprio estado e protegê-lo de acesso externo (só pode ser acessado e modificado pelos métodos do próprio objeto).
- **Hiding of state-process**: o estado interno de um objeto não deve ser visível para outros objetos. A única maneira de interagir com um objeto é por meio de seus métodos públicos.
- **Extreme late-binding of all things**: OOP deve permitir um comportamento flexível e dinâmico, adiando decisões sobre como os objetos irão interagir uns com os outros até o tempo de execução.

```java
public class Person {
    private String name;
    
    public Person(String name) {
        this.name = name;
    }
    
    public String greet() {
        return "Hello, my name is " + name + "!";
    }
}

public class Greeter {
    public String greet(Person person) {
        return person.greet();
    }
}

Person john = new Person("John");
Greeter greeter = new Greeter();
String greeting = greeter.greet(john);
```

No código acima, passamos uma mensagem entre os objetos sem que o objeto `Greeter` precise saber como o objeto `Person` irá responder a essa mensagem. O objeto `Greeter` não precisa saber nada sobre o objeto `Person`, apenas que ele entende a mensagem `greet()`. Isso é o que Kay chama de "extrema ligação tardia de todas as coisas". Nossa variável name é privada, então não podemos acessá-la diretamente, mas podemos acessá-la por meio do método público `greet()`. Isso é o que Kay chama de "ocultação do processo de estado". O objeto `Person` é autocontido e encapsulado, ele mantém seu próprio estado e protege-o de acesso externo. Isso é o que Kay chama de "retenção local e proteção".

Uma linguagem "ser" de um paradigma consiste em ela dar suporte a programar usando um certo *modelo da computação*. Por exemplo, uma linguagem que dá suporte a programação funcional é uma linguagem que permite que o programador escreva programas usando funções como unidades de abstração. Uma linguagem que dá suporte a programação orientada a objetos é uma linguagem que permite que o programador escreva programas usando objetos como unidades de abstração (Self, Erlang, Smalltalk, Java, JavaScript, PHP etc). Essa abstração é um suporte sintático que implementa a filosofia de um paradigma.

Na programação imperativa, computar é executar instruções em sequência que alteram um estado mutável. Na funcional, é encontrar o valor de funções matemáticas. Na lógica, é encontrar provas de teoremas. Na orientação a objetos, é enviar mensagens para objetos via despacho dinâmico.

A programação orientada a objetos é a disciplina imposta sobre a transferência indireta de controle. Encapsulamento, herança e polimorfismo não são exclusivas da OO, mas são as ferramentas que ela usa para implementar a transferência indireta de controle.

- [JS é uma linguagem Orientada a Objetos - Coproduto](https://twitter.com/coproduto/status/1532792373696135168?s=20)
- [Dynamic Dispatch in Object Oriented Languages](https://condor.depaul.edu/ichu/csc447/notes/wk10/Dynamic2.htm)
- [Dr. Alan Kay  on the Meaning of “Object-Oriented Programming”](https://userpage.fu-berlin.de/~ram/pub/pub_jf47ht81Ht/doc_kay_oop_en)

## Mixins


## Traits

Traits são uma forma de composição de comportamento. Eles são uma forma de reuso de código que não depende de herança. Em vez disso, eles são uma forma de composição de comportamento. Um trait é uma coleção de métodos que podem ser usados em várias classes. Traits podem ser vistos como uma forma de herança múltipla, mas sem os problemas que a herança múltipla traz.

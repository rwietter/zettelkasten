# Herança

A herança é um dos pilares da programação orientada a objetos. Ela permite que classes sejam derivadas de outras classes, permitindo que novas classes compartilhem comportamentos e atributos de classes já existentes.

## Herança é ruim?

Pra aplicações modulares, a herança não é uma boa ideia pois acopla o código.

### Exemplo

```java
public class Animal {
    private String name;
    
    public Animal(String name) {
        this.name = name;
    }
    
    public void speak() {
        System.out.println("The " + name + " says something");
    }
}

public class Dog extends Animal {
    public Dog(String name) {
        super(name);
    }
    
    @Override
    public void speak() {
        System.out.println("The dog barks");
    }
}
```

## Composition Rules

Composition Rules é uma técnica de programação que permite que você crie componentes que sejam mais flexíveis e menos acoplados. Ela é baseada em 3 regras:

1. Não herde de classes concretas;
2. Não herde de classes que você não controla;
3. Não herde de classes que não sejam estáveis.

### Exemplo

```java
public interface Speaker {
    public void speak();
}

public class Animal {
    private String name;
    private Speaker speaker;
    
    public Animal(String name, Speaker speaker) {
        this.name = name;
        this.speaker = speaker;
    }
    
    public void speak() {
        speaker.speak();
    }
}

public class DogSpeaker implements Speaker {
    @Override
    public void speak() {
        System.out.println("The dog barks");
    }
}

public class Main {
    public static void main(String[] args) {
        Speaker dogSpeaker = new DogSpeaker();
        Animal dog = new Animal("dog", dogSpeaker);
        dog.speak();
    }
}
```
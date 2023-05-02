# Mapped Types

Mapped types são uma funcionalidade do TypeScript que permite a criação de novos tipos a partir de tipos existentes. Eles permitem percorrer todas as propriedades de um tipo existente e criar um novo tipo com as mesmas propriedades, mas com tipos diferentes ou modificados.

Suponha que você tenha um tipo Person com duas propriedades: name e age. Você pode usar um mapped type para criar um novo tipo que tenha as mesmas propriedades, mas com tipos diferentes. Por exemplo, você pode querer que a propriedade name seja do tipo string e a propriedade age seja do tipo number:

```ts
type Person = {
  name: string;
  age: number;
};

type PersonProps = { [K in keyof Person]: Person[K] extends string ? boolean : string };

const personProps: PersonProps = {
  name: true,
  age: '20',
};
```

Outro exemplo de extends é o seguinte:

```ts
type Animal = {
  legs: number;
};

type AnimalProps<T> = { [K in keyof Animal]: K extends 'legs' ? T : Animal[K] };

// Agora podemos criar uma nova variável do tipo AnimalProps, que terá a propriedade legs do
// tipo string e quaisquer outras propriedades de Animal com os mesmos tipos.
const animalProps: AnimalProps<string> = {
  legs: 'four',
};
```

---

Criando objetos com mapped types:

```ts
type OnlyBoolsAndHorses = {
  [key: string]: boolean | Horse;
};
 
const conforms: OnlyBoolsAndHorses = {
  del: true,
  rodney: false,
};
```

---

Um tipo mapeado é um tipo genérico que usa uma união de PropertyKeys (frequentemente criadas por meio de um keyof) para iterar pelas chaves para criar um tipo

Neste exemplo, OptionsFlags pegará todas as propriedades do tipo Type e mudará seus valores para um booleano.

```ts
type OptionsFlags<Type> = {
  [Property in keyof Type]: boolean;
};

type Options = {
  compress: string;
  complete: number;
} 

const obk: OptionsFlags<Options> = {
  compress: true,
  complete: false,
}
```

## Mapping Modifiers

Existem dois modificadores adicionais que podem ser aplicados durante o mapeamento: readonly e ? que afetam a mutabilidade e a opcionalidade, respectivamente.

```ts
// - removes readonly modifiers of another type
type CreateMutable<Type> = {
  -readonly [Property in keyof Type]: Type[Property];
};

type LockedAccount = {
  readonly id: string;
  readonly name: string;
}

const res: CreateMutable<LockedAccount> = {
  id: '10020202',
  name: 'John'
};

res.id = '10020202'
```

**Removes Optional**

```ts
type Concrete<Type> = {
  [Property in keyof Type]-?: Type[Property];
};
 
type MaybeUser = {
  id: string;
  name?: string;
  age?: number;
};
 
type User = Concrete<MaybeUser>;
```

## Key Remapping via `as`

No TypeScript 4.1 e posteriores, você pode remapear chaves em tipos mapeados com uma cláusula as em um tipo mapeado

Você pode aproveitar recursos como tipos literais de modelo para criar novos nomes de propriedades a partir dos anteriores:

```ts
type Getters<Type> = {
    [Property in keyof Type as `get${Capitalize<string & Property>}`]: () => Type[Property]
};
 
interface Person {
  name: string;
  age: number;
  location: string;
}
 
type LazyPerson = Getters<Person>;
```

## Exclude Properties from a Type

Você pode filtrar as chaves produzindo nunca por meio de um tipo condicional:

```ts
// Remove the 'kind' property
type RemoveKindField<Type> = {
  [Property in keyof Type as Exclude<Property, "kind">]: Type[Property]
};
 
interface Circle {
  kind: "circle";
  radius: number;
}
 
type KindlessCircle = RemoveKindField<Circle>;
```
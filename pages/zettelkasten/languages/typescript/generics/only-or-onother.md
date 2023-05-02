---
title: OnlyOrAnother
description: OnlyOrAnother
icon: vscode-icons:file-type-codekit
---

# Only Or Another Type

Esse tipo 

```ts
type Only<I, J> = {
  [P in keyof I]: I[P]
} & {
  [P in keyof J]?: never
}

type OneOrAnother<I, J> = Only<I, J> | Only<J, I>;

type Username = {
  nome: string;
  username: string;
};

type Email = {
  email: string;
}

type User = OneOrAnother<Username, Email>

const user1: User = {
  email: ''
};

const user2: User = {
  username: '',
  nome: ''
};
```
# React Domain-Feature Architecture

Esta arquitetura é orientada a domínio, o que significa que o código é agrupado por domínio e não por tipo de arquivo. Isso significa que você não deve ter uma pasta `components` ou `hooks` ou `stores` ou `utils` ou `types` ou `routes` ou `api` ou qualquer outra coisa. Em vez disso, você deve ter uma pasta `domain` que contém todos os arquivos relacionados a um domínio específico. Por exemplo, se você tiver um recurso `todos`, todos os arquivos relacionados a esse recurso devem ser agrupados em uma pasta `todos`. Isso significa que você terá um arquivo `todos/hooks/useTodos.js`, `todos/components/TodoList.js`, `todos/stores/TodoStore.js`, `todos/types/Todo.js`, e assim por diante.

A feature é um diretório onde tem recursos especiais que resolvem um problema de negócio. Por exemplo, em um domínio de `User`, você pode ter as features `Login`, `Signup`, `Profile`, `Settings`, etc.

Isso torna muito mais fácil encontrar o código relacionado a um recurso específico e também torna muito mais fácil mover o recurso para outro aplicativo, pois você pode simplesmente copiar a pasta `todos` e ter tudo o que precisa para o recurso.

Você também deve ter um diretórios `globals` ou `shared` que contém todos os arquivos que são compartilhados entre os domínios. Por exemplo, você pode ter um arquivo `shared/hooks/useLocalStorage.js` que é usado em vários domínios.

```sh
.
├── domains/
│   └── user/
│       ├── components/
│       │   └── Avatar.tsx
│       ├── enums/
│       ├── features/
│       │   ├── profile/
│       │   │   └── UserProfile.tsx
│       │   └── settings/
│       │       └── UserSettings.tsx
│       ├── types/
│       │   └── User.ts
│       └── hooks/
│           └── useUserPreferences.tsx
├── shared/
│   ├── components/
│   ├── enums/
│   ├── hooks/
│   ├── routes/
│   ├── store/
│   └── types/
├── pages/
│   ├── blog/
│   │   └── article/
│   │       └── [slug].tsx
│   └── index.tsx
├── public/
│   └── assets/
│       └── images/
│           ├── mastercard.png
│           └── visa.png
├── .gitignore
├── package.json
└── README.md
```


## Feature Architecture

Para escalar o aplicativo da maneira mais fácil e sustentável, mantenha a maior parte do código dentro da pasta `features`, que deve conter diferentes coisas baseadas em recursos. Cada pasta `feature` deve conter um código específico de domínio para um determinado recurso. Isso permitirá que você mantenha as funcionalidades no escopo de um recurso e não misture suas declarações com coisas compartilhadas. Isso é muito mais fácil de manter do que uma estrutura de pastas simples com muitos arquivos.

```sh
src
|
+-- assets            # assets folder can contain all the static files such as images, fonts, etc.
|
+-- components        # shared components used across the entire application
|
+-- config            # all the global configuration, env variables etc. get exported from here and used in the app
|
+-- features          # feature based modules
|
+-- hooks             # shared hooks used across the entire application
|
+-- lib               # re-exporting different libraries preconfigured for the application
|
+-- providers         # all of the application providers
|
+-- routes            # routes configuration
|
+-- stores            # global state stores
|
+-- test              # test utilities and mock server
|
+-- types             # base types used accross the application
|
+-- utils             # shared utility functions
```

Uma feature pode ter a seguinte estrutura:

```sh
src/features/awesome-feature
|
+-- api         # exported API request declarations and api hooks related to a specific feature
|
+-- assets      # assets folder can contain all the static files for a specific feature
|
+-- components  # components scoped to a specific feature
|
+-- hooks       # hooks scoped to a specific feature
|
+-- routes      # route components para páginas de recursos específicos
|
+-- stores      # state stores para um recurso específico
|
+-- types       # typescript types para domínio de recurso específico de TS
|
+-- utils       # funções de utilidade para um recurso específico
|
+-- index.ts    # ponto de entrada para o recurso, ele deve servir como a API pública do recurso fornecido e exporta tudo o que deve ser usado fora do recurso
```

Exemplo detalhado:

```sh
└── src/
		├── # As "features" contém tudo relacionado as funcionalidades especificamente
    ├── features/
    │   ├── alerts/
    │   ├── issues/
    │   ├── todos/
    │   │   ├── # o index.js é usado para exportar os módulos relevantes, também conhecidos como API pública.
    │   │   ├── index.js
    │   │   ├── create-todo-form/
    │   │   ├── edit-todo-modal/
    │   │   ├── todo-form/
    │   │   ├── todo-list/
    │   │   │   ├── # a API pública do componente (exporta o componente de lista de tarefas e o hook)
    │   │   │   ├── index.js
    │   │   │   ├── todo-item.component.js
    │   │   │   ├── todo-list.component.js
    │   │   │   ├── todo-list.context.js
    │   │   │   ├── todo-list.test.js
    │   │   │   ├── use-todo-list.js
    │   ├── organization/
    │   ├── projects/
    │   │   ├── index.js
    │   │   ├── create-project-form/
    │   │   │   ├── project-card.js
    │   │   │   └── project-list.js
    │   │   ├──project-list/
    │   ├── ui/
    │   │   ├── index.js
    │   │   ├── card/
    │   │   ├── header/
    │   │   ├── footer/
    │   │   ├── side-navigation/
    │   │   └── tag/
    │   │   └── button/
    │   │   └── checkbox/
    │   │   └── text-field/
    │   │   └── modal/
    │   │─── users/
    │       ├── index.js
    │       ├── login/
    │       ├── signup/
    │       └── use-auth.js
    └── pages/
				│   # tudo o que resta na pasta pages são arquivos JS simples
        │   # cada arquivo representa uma página (como Next.js)
        ├── alerts.js
        ├── issues.js
        ├── projects.js
        ├── settings.js
        └── users.js
```

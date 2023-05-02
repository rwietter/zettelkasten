# Template Literal Types

Template literal types são uma funcionalidade do TypeScript que permite a criação de novos tipos a partir de tipos existentes. Eles permitem a criação de tipos que são strings literais com interpolação de tipos.

```ts
type techs = "Javascript" | "Typescript" | "React Native" | "Firebase";

type ProjectTech = `Este projeto usa ${techs} como principal tecnologia`;

// Autocomplete
const projectIntro: ProjectTech = "Este projeto usa Typescript como principal tecnologia";

// Does not compile
const projectIntro2: ProjectTech = "Este projeto usa Flow";
``` 
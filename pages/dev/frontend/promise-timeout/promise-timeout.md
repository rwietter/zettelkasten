# Promise Timeout

Algumas promises podem nunca resolver, a depender de como são construídas ou do que estão fazendo, se possuem unreacheable code, callbacks perdidos, etc etc. Nesse caso vc teria um memory leak e problemas de fluxo...

Isso significa que **a Promise terá o tempo que vc estipular para ser resolvida ou rejeitada**, se nada disso acontecer, ela será automaticamente rejeitada. Pra fazer isso usamos "Promise.race"

```js
const timeout = (promise, time) => Promise.race([
  promise,
  new Promise((_, reject) => setTimeout(() => reject({ cause: { name: 'timeout', code: 500 } }), time))
]);

timeout(fetch('https://jsonplaceholder.typicode.com/todos/1'), 100)
  .then(response => response.json())
  .then(json => console.log(json))
  .catch(err => console.log(err.cause));
```

Promise.race aceita um array de Promises e resolve o valor da Promise que se resolver primeiro. O que acontece é que se nossa promise original não resolver ou falhar, a que setamos com timeout vai trigar um reject e o race vai ser resolvido, liberarando a memória.

## AbortController

O AbortController é uma API que permite que vc cancele uma requisição, por exemplo, se o usuário clicar em um botão de cancelar, ou se a requisição demorar muito tempo, ou se vc quiser cancelar uma requisição que já foi feita.

```js
const controller = new AbortController();

fetch('https://jsonplaceholder.typicode.com/todos/1', { signal: controller.signal })
  .then(response => response.json())
  .then(json => console.log(json))
  .catch(err => console.log(err));

setTimeout(() => controller.abort(), 100);

// { name: 'AbortError', message: 'The user aborted a request.' }
```
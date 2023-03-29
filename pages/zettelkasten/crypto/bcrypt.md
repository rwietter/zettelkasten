---
title: Bcrypt
icon: vscode-icons:file-type-codekit
---

# Bcrypt

Salt é um dado aleatório usado como uma entrada adicional para uma função unidirecional que faz o hash de uma senha ou outros dados. Sua finalidade é impedir ataques pré-computados, como rainbow tables, que poderiam ser usadas para quebrar rapidamente um grande número de senhas com hash.

No contexto do algoritmo de hashing de senha Bcrypt, as rodadas salt referem-se ao número de vezes que a senha e o salt são hashed juntos. Quanto maior o número de rodadas de salt, mais tempo leva para hash da senha e mais caro computacionalmente se torna para quebrar as senhas com hash.

No Bcrypt, o salt é gerado aleatoriamente para cada senha e, em seguida, é combinado com a senha e hash várias vezes com base nas rodadas salt especificadas. O hash resultante é armazenado em um banco de dados ou outro meio de armazenamento para comparação posterior quando um usuário tenta fazer login. O salt também é armazenado junto com o hash no banco de dados, para que o mesmo salt possa ser usado durante logins subsequentes para recriar o mesmo hash para comparação com o hash armazenado.

Bcrypt armazena o salt como parte da string de senha com hash, que normalmente é uma string de 60 caracteres que inclui o salt, as rodadas de salt e o hash resultante. O salt e o salt rounds são armazenados como parte da string em um formato específico que permite que o hash seja verificado e o salt e o salt rounds sejam extraídos para verificações de senha subsequentes.

---

### Cost-factor

O fator de custo, também conhecido como fator de trabalho, é um parâmetro usado em algoritmos de hash de senha como o Bcrypt para controlar a quantidade de tempo que leva para fazer o hash de uma senha. Quanto maior o fator de custo, mais tempo leva para hash da senha, o que torna mais difícil para um invasor adivinhar ou decifrar a senha.

O fator de custo é normalmente representado como um valor logarítmico, onde o custo real é calculado como fator de custo 2^n. Por exemplo, um fator de custo de 10 resultaria em um custo de 2^10 ou 1.024. Isso significa que a função de hash de senha seria executada 1.024 vezes para fazer o hash da senha.

Para determinar um fator de custo apropriado para um determinado aplicativo ou sistema, é necessário encontrar um equilíbrio entre segurança e desempenho. Um fator de custo mais alto fornece maior segurança, mas também requer mais recursos computacionais e pode aumentar o tempo necessário para autenticar os usuários. Um fator de custo mais baixo fornece autenticação mais rápida, mas pode ser mais vulnerável a ataques.

Uma abordagem comum para determinar um fator de custo apropriado é comparar a função de hash de senha no sistema de destino e ajustar o fator de custo até que o nível desejado de segurança e desempenho seja alcançado. Isso envolve medir o tempo que leva para fazer o hash de uma senha com vários fatores de custo e selecionar um fator de custo que forneça um nível aceitável de segurança enquanto ainda permite tempos de autenticação razoáveis.

---

### Step by step

1. Escolha uma senha para hash, por exemplo "mysecretpassword".
2. Gere um sal aleatório, por exemplo "bW#5&Fm!n^".
3. Concatene a senha e salt, por exemplo "mysecretpasswordbW#5&Fm!n^".
4. Faça o hash da string concatenada usando Bcrypt com um fator de custo especificado, por exemplo, um fator de custo de


Isso resultará em uma string de senha com hash, que para o nosso exemplo pode ter esta aparência:

```bash
$2y$12$HxvnwyjJzXf/zFWIeLk1IOGWK0vF2fjBPl5l5b5x0nDclzQXkThmK
```

Onde:

- Os primeiros quatro caracteres "$2y$" indicam que o algoritmo Bcrypt está sendo usado.
- Os próximos dois caracteres "12" indicam o fator de custo usado para gerar o hash.
- Os próximos 22 caracteres "HxvnwyjJzXf/zFWIeLk1IO" representam o sal usado para gerar o hash.
- Os caracteres restantes "GWK0vF2fjBPl5l5b5x0nDclzQXkThmK" representam a própria senha com hash.

Armazene a senha salt e hash em um banco de dados ou outro meio de armazenamento para comparação posterior durante a autenticação.

---

Bcrypt é um algoritmo de hash de senha amplamente usado e confiável que é considerado seguro, mas também existem outros algoritmos de hash de senha seguros disponíveis. Alguns exemplos de algoritmos de hash de senha segura incluem Argon2, Scrypt e PBKDF2.

Argon2 é um algoritmo mais recente projetado para ser mais resistente a ataques que utilizam hardware especializado como GPUs e ASICs. Ele usa uma abordagem de memória difícil que torna mais difícil e caro realizar ataques de força bruta.

Scrypt é outro algoritmo de memória rígido projetado para ser resistente a ataques que usam grandes quantidades de computação paralela. Geralmente é usado em conjunto com uma senha para fornecer uma camada adicional de segurança.

PBKDF2 é um algoritmo mais antigo que ainda é amplamente utilizado e considerado seguro. É uma função de derivação de chave que usa várias iterações de uma função hash para gerar uma chave. É freqüentemente usado em conjunto com um sal para fornecer segurança adicional.

Ao selecionar um algoritmo de hash de senha, é importante escolher um que seja bem testado e amplamente utilizado, pois esses algoritmos foram submetidos a testes e análises rigorosos por especialistas em segurança. Também é importante usar um fator de custo suficientemente alto para tornar os ataques de força bruta mais difíceis e demorados e usar um sal exclusivo para cada senha para evitar ataques que utilizam tabelas pré-computadas de senhas com hash.
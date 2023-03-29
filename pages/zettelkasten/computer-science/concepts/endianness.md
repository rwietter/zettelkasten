---
title: Endianness
description: Endianness is the order in which bytes are stored in memory.
icon: vscode-icons:file-type-codekit
---

# Endianness

Endianness refere-se à ordem na qual os bytes são organizados na memória do computador. Existem três tipos principais de endianidade:

- Big-endian: O byte mais significativo (MSB) é armazenado no endereço de memória mais baixo, enquanto o byte menos significativo (LSB) é armazenado no endereço de memória mais alto. Isso também é conhecido como ordem de byte de rede.

- Little-endian: O byte menos significativo (LSB) é armazenado no endereço de memória mais baixo, enquanto o byte mais significativo (MSB) é armazenado no endereço de memória mais alto. Esta é a ordem de bytes mais comum para computadores modernos.

- Middle-endian: Esta é uma combinação de big-endian e little-endian. Os bytes são divididos em dois ou mais grupos e cada grupo é armazenado em uma ordem de byte diferente. Middle-endian não é amplamente utilizado.

- bi-endian: Esta é uma combinação de big-endian e little-endian. Os bytes são divididos em dois ou mais grupos e cada grupo é armazenado em uma ordem de byte diferente. bi-endian não é amplamente utilizado.

A escolha da endianidade pode ter implicações importantes para sistemas de computador, particularmente nos casos em que os dados precisam ser trocados entre sistemas com diferentes endianidades. Muitos protocolos de rede e formatos de arquivo definem um endianness específico para garantir que os dados possam ser interpretados corretamente por diferentes sistemas.

## Conflicting Endianness

Em sistemas de computador, a endianidade é um conceito importante que pode ter implicações significativas. Por exemplo, se um sistema de computador armazena um número inteiro como uma sequência de bytes, a ordem em que os bytes são armazenados na memória pode afetar a maneira como o número é interpretado. Por exemplo, considere o número inteiro 0x12345678. Se os bytes forem armazenados em ordem big-endian, o número inteiro será armazenado como 0x12 0x34 0x56 0x78. Se os bytes forem armazenados em ordem little-endian, o número inteiro será armazenado como 0x78 0x56 0x34 0x12 e em middle-endian, o número inteiro será armazenado como 0x34 0x12 0x78 0x56.

O conflito surge porque os dados são armazenados na memória em unidades de múltiplos bytes (por exemplo, palavras de 16 bits ou 32 bits), e há diferentes maneiras de organizar a ordem desses bytes na memória. O conflito ocorre quando dois sistemas com convenções de endianness diferentes precisam trocar dados entre si. Por exemplo, um sistema que usa a convenção big-endian pode enviar dados para um sistema que usa a convenção little-endian.

---

## Dates

Para datas, o formato mais comum é o padrão ISO 8601, que especifica um formato big-endian. Nesse formato, as informações mais significativas são apresentadas primeiro, seguidas das informações menos significativas. Por exemplo, a data "15 de março de 2023" seria representada como "2023-03-15" na ISO 8601.

No entanto, vale a pena observar que diferentes países e regiões podem ter diferentes convenções para formatos de data. Por exemplo, nos Estados Unidos, a convenção costuma ser escrever primeiro o mês, seguido do dia e depois do ano (por exemplo, "15/03/2023"). Em alguns países europeus, a convenção é escrever primeiro o dia, seguido do mês e depois do ano (por exemplo, "15/03/2023"). Essas convenções geralmente são baseadas em fatores culturais e históricos, e não em considerações técnicas.

- [Endianness](https://pt.wikipedia.org/wiki/Extremidade_(ordena%C3%A7%C3%A3o))
---
title: SQL
icon: vscode-icons:file-type-codekit
---

# SQL

## Tipos de bancos

- **NoSQL**: Cassandra, Redis, FaunaDB
- **SQL**: MySQL, Postgres, MariaDB
- **GraphOriented**: NEO4J

---

## Modelagem

- **Entidade Relacionamento (ER)**
- **Cardinalidade**
  - Você deve pegar sempre a cardinalidade máxima para criar o modelo físico

::card{icon="mdi:code-json"}
#title
DDL - Linguagem de Definição de Dados
#description
É o grupo de comandos dentro da linguagem SQL utilizado para a criação, modificação e remoção de objetos de banco de dados.
::

---

## Basic Query

### CREATE

```sql
CREATE TABLE Cliente
  (
  Nome VARCHAR(50) NOT NULL,
  CPF VARCHAR(11) PRIMARY KEY NOT NULL,
  DataNascimento Date NOT NULL,
  IdEndereco INT
);
```
        

### ALTER
> Permite modificar a estrutura de uma tabela de banco de dados.

```sql
ALTER TABLE `vendas` ADD CONSTRAINT
`fk_vendas_codcliente` FOREIGN KEY (`codcliente`)
  REFERENCES `clientes` (`codcliente`) ;
```
        
### DROP
> Apaga um objeto do banco de dados

```sql
DROP TABLE name_table
```
        
::card{icon="mdi:code-json"}
#title
DML - Linguagem de Manipulação de Dados
#description
É o grupo de comandos dentro da linguagem SQL utilizado para a recuperação, inclusão, remoção e modificação de informações em bancos de dados.
::

### INSERT

```sql
insert into Especialidade(cod_espec,espec)
values (100, 'Pediatria');
```

### UPDATE

```sql
update Cliente
set Cidade = 'Sarandi'
where nome = 'Lucas'
```

### DELETE

```sql
DELETE from Cliente WHERE nome = 'Lucas'
```

### ALTER

```sql
ALTER TABLE Clientes DROP COLUMN Rua;
```

### SELECT

```sql
SELECT codCliente, nome, rua, cidade From cliente
Where cidade = "Porto Alegre"
```

---

## Operadores
    
### NOT NULL

Garante que uma coluna não possa receber o valor NULL.
    
```sql
CREATE TABLE Estudante (
  Id integer NOT NULL, 
  Nome varchar(45) NOT NULL, 
  Turma varchar(10)
);
```
    
### DEFAULT

Atribui um valor padrão quando nenhum valor é especificado.
    
```sql
CREATE TABLE Estudante (
  Id integer Unique,
  Nome varchar (30), 
  Turma varchar (30), 
  Média DEFAULT 70
);
```
    
### UNIQUE

Garante que todos os valores numa coluna sejam diferentes.
    
```sql
CREATE TABLE Estudante (
  Id integer UNIQUE,
  Nome varchar (30), 
  Turma varchar (30)
);
```
    
### CHECK

Garante que todos os valores numa coluna satisfaçam um determinado critério.
    
```sql
CREATE TABLE Estudante (
  Id integer CHECK (Id > 0), 
  Nome varchar (30),
  Turma varchar (30), 
  Média DEFAULT 70
);
```
    
### AUTO INCREMENT

Auto incrementa o valor de uma coluna.
    
```sql
CREATE TABLE Clientes (
  idcliente int NOT NULL AUTO_INCREMENT,
  nome varchar(255) NOT NULL,
);
```
    
### SEQUENCE

Sequence é um objeto que gera uma sequência de números. É muito útil para gerar valores únicos para uma coluna.
    
```sql
CREATE SEQUENCE cod_seq 
MINVALUE 1 MAXVALUE 1000
INCREMENT BY 1 START WITH 1;

-- How to use this
INSERT INTO Estudante (ID, NOME)
VALUES (cod_seq.nextval, 'jose');
```
    
### DISTINCT

Faz com que o resultado da consulta não tenha valores repetidos.
    
```sql
SELECT DISTINCT cod_med
FROM consulta
WHERE cod_pac = 100
```
        
---

## Funções de agregação

Operam sobre um conjunto de tuplas úteis na determinação de alguns cálculos matemáticos na consulta.
    
### COUNT

Contador de ocorrências. Não conta valores nulos. Ex: obter o total de tuplas da tabela de pacientes.

```sql
SELECT count(*) FROM paciente
```

### SUM

Função de somar valores de atributos numéricos.

```sql
SELECT Sum(salario)
FROM funcionario
WHERE setor = 'b'
```

### AVG

Média de valores de atributos numéricos

```sql
SELECT avg(idade) FROM medico;
```

### GROUP BY

Agrupa parte do result de uma query, da qual da pra usar funções de agregação. Ex: buscar o código dos médicos e o total de consultas para cada médico

```sql
SELECT cod_med, count(*)
FROM consulta
GROUP BY cod_med
```

### HAVING

O having é usado para filtrar o resultado de uma consulta agrupada.

```sql
SELECT cod_med, COUNT(data_hora)
FROM consulta
GROUP BY cod_med
HAVING COUNT(*) > 5
```
        
---

## STRING E CHAR

::card{icon="mdi:code-json"}
#title
**LIKE**: Permite a definição de padrões de busca
#description
**LIKE ‘c%’**: o valor do atributo inicia com o caracter ou string c. :br
**LIKE ‘%c’**: o valor do atributo termina com o caracter ou string c. :br
**LIKE ‘%c%’**: o valor do atributo possui o caracter ou string c no meio da cadeia.
::

```sql
SELECT nome
FROM paciente
WHERE nome LIKE 'C%'
```

---
    
## DATE E DATETIME

- **DATE**: YYYY-MM-DD

```sql
SELECT * FROM Orders WHERE OrderDate='2008-11-11'
```

- **DATETIME**: YYYY-MM-DD HH:MI:SS

```sql
SELECT * FROM Orders WHERE OrderDate='2008-11-11 12:10:20'
```

- **TIMESTAMP**: YYYY-MM-DD HH:MI:SS
- **YEAR**: YYYY or YY
- **EXTRACT**: estrair partes de uma data ou datetime.

```sql
SELECT EXTRACT(DAY FROM data) from table_name;
SELECT EXTRACT(MONTH FROM data) from table_name;
SELECT EXTRACT(YEAR FROM data) from table_name;
SELECT EXTRACT(HOUR FROM data) from table_name;
```
        
---

## INNER JOIN

```sql
Table A       Table B
id name       id  name
-- ----       --  ----
1  Pirate     1   Rutabaga
2  Monkey     2   Pirate
3  Ninja      3   Darth Vader
4  Spaghetti  4   Ninja
```

> Juntar duas ou mais tabelas por chaves correspondentes.
    

### LEFT JOIN

> permite obter não apenas os dados relacionados de duas tabelas, mas também os dados não relacionados encontrados na tabela à esquerda da cláusula JOIN.
    

### LEFT OUTER JOIN

> Produz um conjunto completo de registros da Tabela A, com os registros correspondentes (quando disponíveis) na Tabela B. Se não houver correspondência, o lado direito conterá nulo.
    
```sql
SELECT * FROM TableA
LEFT OUTER JOIN TableB
ON TableA.name = TableB.name

-- result
id  name       id    name
1   Pirate     2     Pirate
2   Monkey     null  null
3   Ninja      4     Ninja
4   Spaghetti  null  null

--------------------------------
-- Sem valores ta tabela B
SELECT * FROM TableA
LEFT OUTER JOIN TableB
ON TableA.name = TableB.name
WHERE TableB.id IS null

-- result
id  name       id     name
2   Monkey     null   null
4   Spaghetti  null   null
```
    
### RIGHT JOIN

> Ao contrário do LEFT JOIN, a cláusula RIGHT JOIN retorna todos os dados encontrados na tabela à direita de JOIN.
    
    
### FULL JOIN

> Juntar o poder das junções (Join) internas (Inner), a listagem de todas as outras linhas não associadas, tanto do lado direito (Right) da junção como do lado esquerdo (Left). Não é suportado pelo Mysql.
    
    
### FULL OUTER JOIN

> Produz o conjunto de todos os registros na Tabela A e na Tabela B, com registros correspondentes de ambos os lados, quando disponíveis. Se não houver correspondência, o lado ausente conterá null.
    
```sql
SELECT * FROM TableA
FULL OUTER JOIN TableB
ON TableA.name = TableB.name

-- result
id    name       id    name
1     Pirate     2     Pirate
2     Monkey     null  null
3     Ninja      4     Ninja
4     Spaghetti  null  null
null  null       1     Rutabaga
null  null       3     Darth Vader
```
    
### SEMI JOIN

> São joins que retornam linhas de uma tabela A baseado na existência de linhas correlacionadas em uma tabela B. Se a consulta retorna apenas atributos (campos) da tabela da esquerda, então o join é chamado de Left Semi Join; se retorna apenas atributos da tabela da direita, então é chamado de Right Semi Join. Um semi join pode ser produzido usando INNER JOINS, EXISTS, IN e também com o INTERSECT.*
    
```sql
-- recuperar todos os clientes que já realizaram compras na empresa com IN
SELECT
  c.ClienteID,
  c.Nome,
  c.Sobrenome
FROM
  dbo.Clientes c
WHERE
  c.ClienteID IN (
    SELECT
      v.ClienteID
    FROM
      dbo.Vendas v
  )

-- recuperar todos os clientes que já realizaram compras na empresa com EXISTS
SELECT
  c.ClienteID,
  c.Nome,
  c.Sobrenome
FROM
  dbo.Clientes c
WHERE
  EXISTS (
    SELECT
      1
    FROM
      dbo.Vendas v
    WHERE
      v.ClienteID = c.ClienteID
  )
```
    
### ANTI-SEMI JOIN

> Ocorre quando linhas em uma tabela A não possuem correspondentes em uma tabela B (é baseado na não-existência). É possível alcançar um anti-semi join através de subconsultas utilizando NOT IN ou EXISTS, ou ainda através do operador EXCEPT. Também é possível alcançar um anti-semi join utilizando outer join, filtrando somente as outer rows.
    
```sql
-- 1) Usando NOT IN
SELECT
  c.ClienteID,
  c.Nome,
  c.Sobrenome
FROM
  dbo.Clientes c
WHERE
  c.ClienteID NOT IN (
    SELECT
      v.ClienteID
    FROM
      dbo.Vendas v
  )

-- 2) Usando NOT EXISTS
SELECT
  c.ClienteID,
  c.Nome,
  c.Sobrenome
FROM
  dbo.Clientes c
WHERE
  NOT EXISTS (
    SELECT
      1
    FROM
      dbo.Vendas v
    WHERE
      v.ClienteID = c.ClienteID
  )
```
    
---

## SQL Query Optimization

- [N+1 Problem tweet](https://twitter.com/coproduto/status/1581589266160910337?s=20&t=OYeT3V1tur8BodtwQfzA-A)
- [N+1 Problem Stackoverflow](https://stackoverflow.com/questions/97197/what-is-the-n1-selects-problem-in-orm-object-relational-mapping#:~:text=The%20N%2B1%20query%20problem%20happens%20when%20the%20data%20access,the%20larger%20the%20performance%20impact.)
- [Fast and maintainable patterns for fetching from a database](https://sophiebits.com/2020/01/01/fast-maintainable-db-patterns.html)
- [Prisma Query Optimization](https://www.prisma.io/docs/guides/performance-and-optimization/query-optimization-performance#solving-n1-in-graphql-with-findunique-and-prismas-dataloader)

---

## SQL Injection

SQL Injection é a vulnerabilidade mais encontrada em aplicações Web, que permite a um usuário mal-intencionado invadir bancos de dados associados a páginas Web explorando falhas de programação.

> Num perfil de ataque SQL Injection, o usuário mal-intencionado irá explorar as falhas da aplicação (provenientes de uma cláusula SQL sem tratamento de dados) para conseguir acesso ao sistema, procurando inserir valores que sejam sempre verdadeiros para o sistema.

```sql
select * from tabela_Usuarios where campo_email = '' OR 1=1;
'/*' and campo_senha = '/*--';
```

Essa entrada de dados pelo usuário configura um caso de SQL Injection, pois mesmo os valores sendo incoerentes para conceder acesso a aplicação Web, quando o sistema for executado retornará sempre verdadeiro. O ataque ocorre devido aos caracteres especiais “ /* ” e “--” e também pela condição sempre verdadeira de “1 = 1”. Nesse caso os caracteres especiais serão interpretados como comentários de código para a linguagem SQL, anulando, portanto, o código após os caracteres especiais e verificando apenas a condição “1=1”, que sempre retornará verdadeiro, permitindo ao usuário acessar a aplicação sem saber o e-mail e senha corretos.

Em um caso mais grave, o usuário mal-intencionado pode já saber algumas informações do banco de dados, como nome de tabelas e colunas, para formular uma cláusula SQL Injection mais elaborada. O usuário mal-intencionado executa o comando da própria linguagem SQL “DROP TABLE senha”, onde excluirá qualquer tabela especificada. Também é possível alterar, adicionar e retornar dados já armazenado no banco de dados.

```sql
select * from tabela_Usuarios where campo_email = '123';
DROP TABLE senha; '/*' and campo_senha = '/*--';
```

## References

- [Explaning SQL Joins](https://blog.codinghorror.com/a-visual-explanation-of-sql-joins/)
- [SQL Bolt](https://sqlbolt.com/)
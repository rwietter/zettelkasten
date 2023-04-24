---
title: Docker
icon: vscode-icons:file-type-codekit
---

## Docker

Docker é uma engine que gerência virtualização de containers. Ele utiliza os recursos de hardware e o sistema operacional do computador, utiliza uma imagem com utilitários isolados por namespaces para executar em cima do seus sistema operacional. 

Docker tem uma camada read-only e outra read-write, entretanto para persistir os dados, precisando salvar em volumes. Se modificar uma imagem read-only, os containers dependentes irão copiar novamente o conteúdo dela.

namespaces: namespace são do dos sistema operacional que permitem isolar módulos do host (redes, user). 
cgroups: isolar recursos de CPU e memória, desenvolvido pela Google.

**Run container**:

```sh
docker run -d(aemon) -p 80(container):(bind)80(host) postgres
```

**Docker logs**:

```sh
docker logs -f container_id
```

**Docker exec**:

```sh
docker container exec -it container_id sh
```

**Docker build**:

```sh
docker build -t name-of-image /directory || .
```

**Docker inspect**:

```sh
docker image inspect name-of-image:tag
docker container inspect container_id
```

**Persistir dados com volumes**:

```sh
docker volume create todo-db
docker volume inspect todo-db

# rodar container com o volume criado apontando para o diretório que precisa persistir dentro do container
docker run -d -p 3000:3000 -v todo-db:/etc/todos image
```

**Docker networks**:

```sh
docker network create mysql-todo-db

# --network-alias mysql -> nome para o container na rede
docker run -d -v mysql-todo-db:/var/lib/mysql --network todo-app --network-alias mysql -e MYSQL_ROOT_PASSWORD=secret -e MYSQL_DATABASE=todos mysql:5.7


docker run -dp 3000:3000 \
   -w /app -v "$(pwd):/app" \
   --network todo-app \
   -e MYSQL_HOST=mysql \
   -e MYSQL_USER=root \
   -e MYSQL_PASSWORD=secret \
   -e MYSQL_DB=todos \
   node:12-alpine \
   sh -c "yarn install && yarn run dev"
```
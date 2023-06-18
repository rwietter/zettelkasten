---
title: Compose
description: Docker Compose is a tool for defining and running multi-container Docker applications.
icon: vscode-icons:file-type-codekit
---

# Docker Compose

Docker Compose is a tool for defining and running multi-container Docker applications. With Compose, you use a YAML file to configure your application’s services. Then, with a single command, you create and start all the services from your configuration.

## Commands

- `docker-compose up`: create and start containers
- `docker-compose up -d`: create and start containers in detached mode
- `docker-compose down`: stop and remove containers, networks, images, and volumes
- `docker-compose ps`: list containers
- `docker-compose logs`: view output from containers
- `docker-compose exec <service> <command>`: execute command in running container
- `docker-compose exec <service> sh`: run shell in running container
- `docker-compose exec <service> /bin/bash`: run bash in running container (if bash is installed)
- `docker-compose exec <service> /bin/ash`: run ash in running container (if ash is installed)
- `docker-compose exec <service> /bin/zsh`: run zsh in running container (if zsh is installed)
  
## Docker Compose file

Docker Compose file is a YAML file that contains all the commands a user could call on the command line to assemble an image. Using docker-compose up users can create an automated build that executes several command-line instructions in succession.

## Networks

Docker Compose automaticamente cria uma rede para os containers. Para acessar um container de outro container, basta utilizar o nome do serviço como host.

### Comunicação entre containers

Para que um container possa acessar outro container, é necessário que ambos estejam na mesma rede. Para isso, basta adicionar a propriedade `networks` no arquivo `docker-compose.yml`:

```yaml
version: '3.8'

services:
  server:
    build: ./server
    ports:
      - 4000:4000
    depends_on:
      - db
      - redis
    environment:
      - REDIS_HOST=redis
      - REDIS_PORT=6379
      - POSTGRES_HOST=db
      - POSTGRES_USER=postgres
      - POSTGRES_DB=postgres
      - POSTGRES_PASSWORD=postgres
      - POSTGRES_PORT=5432
      - JWT_SECRET=secret
      - CORS_ORIGIN=http://localhost:3000
      - PORT=4000
      - NODE_ENV=development
    volumes:
      - ./server:/usr/src/app
      - /usr/src/app/node_modules
    command: npm run dev

  db:
    image: postgres
    restart: always
    environment:
      POSTGRES_PASSWORD: postgres
      POSTGRES_USER: postgres
      POSTGRES_DB: postgres
    volumes:
      - db-data:/var/lib/postgresql/data
    networks:
      - app-network

  redis:
    image: redis
    restart: always
    volumes:
      - redis-data:/data
    networks:
      - app-network

  web:
    build: ./web
    ports:
      - 3000:3000
    depends_on:
      - server
    volumes:
      - ./web:/usr/src/app
      - /usr/src/app/node_modules
    command: npm run dev
    networks:
      - app-network

volumes:
    db-data:
    redis-data:

networks:
  app-network:
    driver: bridge
```

### Docker Compose file example

Docker compose with four services: `server`, `db`, `redis`, and `web`.

```yaml
version: '3.8'

services:
  server:
    build: ./server
    ports:
      - 4000:4000
    depends_on:
      - db
      - redis
    environment:
      - REDIS_HOST=redis
      - REDIS_PORT=6379
      - POSTGRES_HOST=db
      - POSTGRES_USER=postgres
      - POSTGRES_DB=postgres
      - POSTGRES_PASSWORD=postgres
      - POSTGRES_PORT=5432
      - JWT_SECRET=secret
      - CORS_ORIGIN=http://localhost:3000
      - PORT=4000
      - NODE_ENV=development
    volumes:
      - ./server:/usr/src/app
      - /usr/src/app/node_modules
    command: npm run dev

  db:
    image: postgres
    restart: always
    environment:
      POSTGRES_PASSWORD: postgres
      POSTGRES_USER: postgres
      POSTGRES_DB: postgres
    volumes:
      - db-data:/var/lib/postgresql/data

  redis:
    image: redis
    restart: always
    volumes:
      - redis-data:/data

  web:
    build: ./web
    ports:
      - 3000:3000
    depends_on:
      - server
    volumes:
      - ./web:/usr/src/app
      - /usr/src/app/node_modules
    command: npm run dev

volumes:
    db-data:
    redis-data:
```


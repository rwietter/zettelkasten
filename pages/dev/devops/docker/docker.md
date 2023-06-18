# Docker

Docker is a set of platform as a service products that use OS-level virtualization to deliver software in packages called containers. Containers are isolated from one another and bundle their own software, libraries and configuration files; they can communicate with each other through well-defined channels. All containers are run by a single operating-system kernel and are thus more lightweight than virtual machines. Containers are created from images that specify their precise contents. Images are often created by combining and modifying standard images downloaded from public repositories.

## Dockerfile

Dockerfile is a text document that contains all the commands a user could call on the command line to assemble an image. Using docker build users can create an automated build that executes several command-line instructions in succession.

## Dockerfile example

```dockerfile
FROM node:12.18.3-alpine3.9 # base image

WORKDIR /app # set working directory

COPY package.json . # copy package.json to working directory

RUN npm install # install dependencies

COPY . . # copy all files to working directory

EXPOSE 3000 # expose port 3000

CMD ["npm", "start"] # run command
```

---

## Bind Ports

Para que um container possa ser acessado externamente, é necessário fazer o bind de uma porta do host para uma porta do container.

```bash
docker run -p <host-port>:<container-port> <image-name>
```

## WORKDIR

A instrução `WORKDIR` define o diretório de trabalho para quaisquer instruções RUN, CMD, ENTRYPOINT, COPY e ADD que o seguem no Dockerfile. Se o `WORKDIR` não existir, ele será criado mesmo que não seja usado em nenhuma instrução Dockerfile subsequente.

```dockerfile
WORKDIR /usr/src/app

COPY package.json ./
```

## COPY

A instrução `COPY` copia novos arquivos ou diretórios do `<src>` e os adiciona ao sistema de arquivos do container no caminho `<dest>`.

```dockerfile
COPY package.json ./
```

## RUN

A instrução `RUN` executará qualquer comando em uma nova camada no topo da imagem atual e confirmará o resultado. O resultado será uma nova imagem e um novo contêiner.

```dockerfile
RUN npm install
```

## CMD

A instrução `CMD` define o comando padrão a ser executado quando o contêiner for iniciado. O comando padrão pode ser substituído por outro comando especificado ao iniciar o contêiner. Isso significa que o `CMD` será executado quando o contêiner for iniciado.

```dockerfile
CMD ["npm", "start"]
```

## ENTRYPOINT


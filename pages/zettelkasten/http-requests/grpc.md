# GRPC

A parte "RPC" do nome significa "Chamada de Procedimento Remoto", que indica como a comunicação acontece. No gRPC, o cliente se comunica com o servidor chamando seus métodos como se fossem locais. Isso é possível criando um esboço ( cliente ) com os mesmos métodos que o servidor gRPC. Você então usa o cliente para chamar os métodos do servidor.

Eles trocam dados usando buffers de protocolo Protobuf ( ), em comparação com o GraphQL, que usa o JSON baseado em texto para trocar dados. O Protobuf é mais um mecanismo que serializa dados estruturados em formato binário. Se você quiser saber mais sobre os buffers de protocolo, poderá fazê-lo aqui.

Semelhante ao GraphQL, o gRPC possui um arquivo semelhante ao esquema, .proto, que descreve o serviço da API. Ele especifica os métodos disponíveis que podem ser chamados e seus parâmetros e tipos de retorno. A linguagem de definição de interface padrão e mais comum ( IDL ) para gravar arquivos "proto" é o Protobuf ( buffers de protocolo ).

```rust
syntax = "proto3";

service User {
  rpc GetUser (UserRequest) returns (UserResponse) {}
}

message UserRequest {
  int32 id = 1;
}

message UserResponse {
  string name = 1;
  int32 age = 1;
  string address = 1;
}
```

Um benefício do uso do gRPC é o desempenho da troca de dados. O gRPC usa o Protobuf para serializar dados em formato binário, o que melhora o tamanho da carga útil. Como resultado, a troca de dados é mais rápida e eficiente.

Outra vantagem do uso do gRPC é que ele suporta vários tipos de streaming. Suporta
- Streaming do servidor - o cliente faz uma solicitação e o servidor responde com um fluxo de mensagens
- Streaming do cliente - o cliente envia um fluxo de mensagens para o servidor, que responde após o cliente terminar o streaming
- Streaming bidirecional - o cliente e o servidor podem enviar e receber fluxos de mensagens

## GraphQL Vs gRPC

Quando se trata de busca de dados, o GraphQL é mais preciso que o gRPC. Isso significa que você pode recuperar exatamente os dados desejados - nada mais, nada menos. gRPC, com certos designs de API, pode retornar dados extras do servidor ( semelhante ao REST ).

Em relação ao desempenho, o gRPC é consideravelmente mais rápido que o GraphQL, graças ao Protobuf e HTTP / 2. Os dados da carga útil são serializados em formato binário, o que reduz seu tamanho e o torna mais eficiente do que os formatos baseados em texto JSON ou XML.


# Lazy Loading

Lazy pode deixar o aplicativo lento

## Quando usar ?

Em minha experiência, "lazy" só é útil para componentes opcionais que dependem das interações do usuário:
- uma imagem que pode nunca ser renderizada porque no fundo
- coisas que são entregues apenas com um clique
- coisas que não são a versão padrão (digamos, apenas 20% do tempo)
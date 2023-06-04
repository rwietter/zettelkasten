# Magic Links

Magic links são uma forma de autenticação por email. O usuário recebe um email com um link que o leva para uma página de login. O link contém um token que é usado para autenticar o usuário. O token é gerado pelo servidor e é único para cada usuário.

Quando um usuário abre um Magic Link, o Auth0 o conecta diretamente. É semelhante em função a receber um e-mail com uma senha de uso único (OTP), retornar ao seu aplicativo e inserir o OTP, mas sem ter que executar essas etapas.

- [Auth0 Magic Link](https://auth0.com/docs/authenticate/passwordless/authentication-methods/email-magic-link)
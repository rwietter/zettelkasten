# SSH

## Generate SSH key

```bash
ssh-keygen -t ed25519 -C "your_email@example.com"
```

## Add SSH key to ssh-agent

```bash
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
```

## Add SSH key to GitHub

- Settings > SSH and GPG keys > New SSH > Add SSH key

```bash
cat ~/.ssh/id_ed25519.pub
```

## References

- [Gerando uma nova chave SSH e adicionando-a ao agente SSH](https://docs.github.com/pt/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
- [Adicionar uma nova chave SSH à sua conta do GitHub](https://docs.github.com/pt/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account)
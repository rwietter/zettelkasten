# Log

Para ver todos os commits que modificaram um determinado arquivo, use o comando:

> Alias: `git logf`
  
```bash
git log --pretty=format:'%C(yellow)%h | %C(blue)%d | %C(white)%s | %C(cyan)%cn, %C(green)%cr' --follow <file>
```

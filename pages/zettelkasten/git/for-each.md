# For-each

Para ver a data do último commit em todos os branches, use o comando:

```bash
git for-each-ref --sort=-committerdate --format='%(committerdate:short) %(refname:short)' refs/heads/ # 2023-04-11 main
git for-each-ref --sort=-committerdate refs/heads/ --format='%(refname:short) %(committerdate:relative)' # main 34 minutes ago
```
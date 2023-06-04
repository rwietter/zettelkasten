# Diff

## Listar arquivos commitados e o status deles

Este comando usa a opção `diff-tree` do Git para listar todos os arquivos que foram modificados em um determinado commit, especificado pelo hash do commit.

- --name-only: lista apenas os nomes dos arquivos modificados.
- --name-status: lista o nome dos arquivos modificados e o status (Added, Modified, Deleted)
- --no-commit-id: suprime a exibição do hash do commit.

Para listar todos os arquivos que foram modificados em um determinado commit, use o seguinte comando:

```bash
git diff-tree --no-commit-id --name-status -r <hash do commit>
```
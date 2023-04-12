# Branch

## Show current branch

```bash
git branch --show-current
git rev-parse --abbrev-ref HEAD
```

## List all branches

```bash
git branch -a
```

## Show remote principal branch

```bash
git remote show origin | grep HEAD | awk '{print $3}' # request from remote origin (lazy fetch)
git rev-parse --abbrev-ref origin/HEAD | sed 's#^origin/##' # origin/HEAD -> origin/main (fast)
```
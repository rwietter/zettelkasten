# Continuous Integration

Integração Contínua (CI) é a parte onde juntamos as mudanças de forma frequente. Fazendo isso, a gente consegue identificar e consertar problemas rapidamente, mantendo o código sempre atualizado e estável.

- [ ] Automatize o Build
- [ ] Automatize os testes

## Estratégias de continuos integration

Algumas estratégias podem ser adotadas para a continuos integration, como:
- Trunk-based development (commit direto na branch master)
- Feature branch (feature branch + pull request + review + merge)
- Ship / Show / Ask
  - Ship: desenvolvedor faz o commit direto na branch master (feature, bugfix, docs, improvement)
  - Show: desenvolvedor abre um pull request e faz merge sem review, serve como uma forma de mostrar o que foi feito (feedback, refactoring, bugfix)
  - Ask: desenvolvedor abre um pull request e espera a aprovação de um revisor (feature, bugfix, docs, improvement)

## Referências

- [Continuous Integration](https://martinfowler.com/articles/continuousIntegration.html)
- [Ship / Show / Ask](https://martinfowler.com/articles/ship-show-ask.html)
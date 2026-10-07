# 0001. Registrar decisões de arquitetura

- **Status:** Aceita
- **Data:** 2026-10-07
- **Responsáveis:** Samuel Tovo
- **Substitui / Substituída por:** —

## Contexto

Decisões sobre modelagem, convenções do dbt, ferramentas e infraestrutura
acabam se perdendo em conversas e PRs. Sem um histórico, fica difícil
entender por que algo foi feito de determinado jeito ou revisitar uma escolha.

## Decisão

Vamos registrar as decisões relevantes do projeto como ADRs (Architecture
Decision Records) em `decisions/`, versionados junto com o código, seguindo o
modelo em [`template.md`](template.md).

## Alternativas consideradas

- **Wiki / Notion:** fácil de editar, mas desacoplado do código e sem revisão
  via pull request.
- **Não registrar:** custo zero agora, custo alto de contexto perdido depois.

## Consequências

- Cada decisão relevante passa a ter um arquivo revisado em PR.
- Há um pequeno custo de escrita a cada decisão.
- O histórico de mudanças fica rastreável pelo `git log`.

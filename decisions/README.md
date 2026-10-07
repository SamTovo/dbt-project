# Registro de Decisões

Este diretório guarda as decisões relevantes do projeto no formato
**ADR (Architecture Decision Record)**. Cada decisão fica em um arquivo
Markdown próprio, numerado sequencialmente e imutável depois de aceito.

## Como registrar uma decisão

1. Rode `./scripts/new-decision.sh "Título da decisão"` (ou copie
   [`template.md`](template.md) para `NNNN-titulo-em-kebab-case.md`).
2. Preencha contexto, decisão, alternativas e consequências.
3. Abra um pull request com status `Proposta`; ao ser aprovado, mude para `Aceita`.
4. Adicione a decisão ao índice abaixo.

## Status possíveis

| Status         | Significado                                               |
|----------------|-----------------------------------------------------------|
| Proposta       | Em discussão, ainda não vale.                             |
| Aceita         | Em vigor.                                                 |
| Rejeitada      | Avaliada e descartada (mantida para histórico).           |
| Descontinuada  | Deixou de valer sem substituta.                           |
| Substituída    | Trocada por outra decisão (indicar `Substituída por NNNN`). |

Decisões aceitas não são reescritas: para mudar algo, crie uma nova decisão
que substitua a anterior e atualize o status da antiga.

## Índice

| Nº   | Título                                                                 | Status | Data       |
|------|------------------------------------------------------------------------|--------|------------|
| 0001 | [Registrar decisões de arquitetura](0001-registrar-decisoes-de-arquitetura.md) | Aceita | 2026-10-07 |

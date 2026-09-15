# SQL Practice — Exercícios e Projetos Aplicados

Repositório com os exercícios de SQL que venho praticando ao longo do meu aprendizado em análise de dados, organizados por tema. O objetivo é consolidar em um só lugar o que venho estudando sobre modelagem de banco de dados, manipulação de dados e consultas — do básico (`CREATE TABLE`) ao avançado (`VIEW`, `FUNCTION`, `PROCEDURE`).

A maior parte dos scripts usa como estudo de caso o banco de dados de um **restaurante fictício** (clientes, funcionários, produtos e pedidos), evoluindo lição a lição: cada pasta representa um novo conceito aplicado sobre esse mesmo modelo de dados.

## 🛠️ Tecnologias

- **SQL** (MySQL)
- Modelagem relacional (chaves primárias e estrangeiras)
- MySQL Workbench

## 📁 Estrutura do repositório

| Pasta | Conteúdo | Conceitos praticados |
|---|---|---|
| `01-fundamentos` | Criação de banco e tabelas | `CREATE DATABASE`, `CREATE TABLE`, tipos de dados, `AUTO_INCREMENT`, `UNIQUE` |
| `02-alteracoes-tabela` | Alterações de estrutura | `ALTER TABLE` (`ADD`, `DROP`, `MODIFY`, `CHANGE`, `RENAME`), chaves primárias e estrangeiras |
| `03-modelagem-restaurante` | Modelagem do projeto principal | Modelo relacional com 5 tabelas (`funcionarios`, `clientes`, `produtos`, `pedidos`, `info_produtos`) e `FOREIGN KEY` |
| `04-manipulacao-dados` | Manipulação de dados | `INSERT`, `UPDATE`, `DELETE` |
| `05-consultas-condicionais` | Consultas com filtros e lógica condicional | `WHERE`, `CASE WHEN`, `LIKE`, `IN`, `NOT`, `ORDER BY`, `LIMIT`/`OFFSET` |
| `06-agregacoes` | Agregações e funções | `GROUP BY`, `HAVING`, `COUNT`, `AVG`, `MAX`, `MIN`, `RANK() OVER`, `COALESCE`, backup de tabelas |
| `07-joins-multiplas-tabelas` | Consultas entre tabelas | `INNER JOIN` entre múltiplas tabelas relacionadas |
| `08-consultas-avancadas` | Consultas e objetos avançados | `VIEW`, `CREATE FUNCTION`, `CREATE PROCEDURE`, `EXPLAIN`, `DELIMITER` |
| `09-migracao-dados` | Projeto de migração/backup | Modelagem a partir de tabelas de backup, `STR_TO_DATE`, carga de dados entre tabelas |

## 🎯 O que este repositório demonstra

- Modelagem de banco de dados relacional do zero, com integridade referencial (chaves estrangeiras)
- Evolução incremental de um schema (criação → alteração → manipulação → consultas)
- Consultas condicionais e de agregação para responder perguntas de negócio (ex: produtos mais caros, clientes por período, pedidos por status)
- Uso de `JOIN` para combinar dados de múltiplas tabelas
- Criação de `VIEW`s para simplificar consultas recorrentes
- Funções e procedures armazenadas (`FUNCTION`/`PROCEDURE`) para lógica reutilizável no banco
- Rotina de backup e migração de dados entre tabelas

## ▶️ Como executar

Os scripts foram desenvolvidos e testados em **MySQL** (Workbench). Para rodar:

1. Abra o MySQL Workbench (ou outro cliente MySQL de sua preferência)
2. Execute os scripts na ordem das pastas (01 → 09), já que os schemas evoluem entre as etapas
3. Cada arquivo contém comentários (`--`) explicando o objetivo das consultas mais relevantes

## 👤 Sobre

Repositório feito por **Guilherme Spindola**, como parte dos estudos em Análise de Dados na EBAC.


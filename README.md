# 🍕 Pizzaria BomSabor — Sistema de Gerenciamento de Pedidos

[![GitHub License](https://img.shields.io/github/license/PauloPSAS/Sistema-de-Gerenciamento-de-Pedidos?style=for-the-badge)](LICENSE)


Projeto acadêmico desenvolvido para a disciplina de Banco de Dados.

---

## 📌 Descrição

Sistema de banco de dados para gerenciamento de pedidos de uma pizzaria,
visando automatizar pedidos, melhorar o controle e reduzir falhas operacionais.

## 🧠 Minimundo

O estabelecimento enfrenta dificuldades no gerenciamento e controle de pedidos...
(Resumo curto aqui)

📄 Para mais detalhes, consulte o documento completo do minimundo: [docs/minimundo.md](docs/minimundo.md)

## 🗂 Modelagem

- Esquema Conceitual: [modelo/modelo-conceitual](modelo/modelo-conceitual)
- Esquema Relacional: [modelo/modelo-relacional](modelo/modelo-relacional)

## 🛠 Tecnologias

- ![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4169E1?style=for-the-badge&logo=postgresql&logoColor=white)
- ![SQL](https://img.shields.io/badge/SQL-003B57?style=for-the-badge&logo=databricks&logoColor=white)


## 📂 Estrutura do Projeto

- `sql/01_create_tables.sql` → Criação das tabelas
- `sql/02_insert_dados.sql` → Inserção dos dados
- `sql/03_consultas.sql` → Consultas SQL do projeto

## ▶️ Como executar

1. Crie um banco de dados
2. Execute `01_create_tables.sql`
3. Execute `02_insert_dados.sql`
4. Teste as consultas em `03_consultas.sql`

## Estrutura do repositório

```bash
Sistema-de-Gerenciamento-de-Pedidos
│
├── README.md
│
├── modelo/
│   ├── esquema-conceitual.png
│   └── esquema-relacional.png
│
├── sql/
│   ├── 01_create_tables.sql
│   ├── 02_insert_dados.sql
│   └── 03_consultas.sql
│
└── docs/
    └── minimundo.md


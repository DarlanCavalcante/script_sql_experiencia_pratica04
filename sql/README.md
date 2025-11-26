# Experiência Prática 04: Criação e Manipulação de Dados com SQL

Este repositório contém scripts SQL para a criação e manipulação de dados em um banco de dados relacional para um sistema de biblioteca (mini-mundo).

## Estrutura do Projeto

- `schema.sql`: Script DDL para criação das tabelas do banco de dados.
- `inserts.sql`: Script DML com comandos INSERT para povoar as tabelas.
- `selects.sql`: Script com consultas SELECT variadas.
- `updates_deletes.sql`: Script com comandos UPDATE e DELETE.

## Modelo Lógico

O banco de dados modela um sistema de biblioteca com as seguintes entidades:

- **Autores**: Armazena informações sobre autores de livros.
- **Livros**: Contém dados dos livros, relacionados aos autores.
- **Usuarios**: Dados dos usuários da biblioteca.
- **Emprestimos**: Registra os empréstimos de livros aos usuários.

## Tipos de Dados Utilizados

- `INT`: Para IDs e anos.
- `VARCHAR`: Para textos como nomes, títulos e emails.
- `DATE`: Para datas de nascimento e empréstimos.

## Ferramentas de Desenvolvimento

Recomenda-se o uso de MySQL Workbench ou pgAdmin para execução dos scripts.

## Instruções de Execução

1. Crie um novo banco de dados no seu SGBD (ex: MySQL ou PostgreSQL).
2. Execute o script `schema.sql` para criar as tabelas.
3. Execute o script `inserts.sql` para inserir dados de exemplo.
4. Execute o script `selects.sql` para testar as consultas.
5. Execute o script `updates_deletes.sql` para testar atualizações e exclusões.

## Comandos Principais

### INSERT
Utilizados para inserir dados nas tabelas, garantindo coerência com os tipos de dados e relacionamentos.

### SELECT
Consultas com filtros (WHERE), ordenação (ORDER BY), limitação (LIMIT) e junções (JOIN).

### UPDATE
Atualizações condicionais para modificar dados existentes.

### DELETE
Exclusões condicionais, respeitando integridade referencial.

## Versionamento

Este projeto utiliza Git para versionamento. Faça commits regulares e pushes para o repositório GitHub.

## Contribuição

Para contribuir, faça um fork do repositório, crie uma branch para suas mudanças e envie um pull request.
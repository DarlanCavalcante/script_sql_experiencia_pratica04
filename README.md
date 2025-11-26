# Projeto de Banco de Dados: Clínica Veterinária

Este projeto implementa um banco de dados relacional para uma clínica veterinária, utilizando SQL para criação, manipulação e consulta de dados. O modelo lógico foi desenvolvido com base em um diagrama de entidade-relacionamento, aplicando conceitos de normalização e integridade referencial.

## Estrutura do Banco de Dados

O banco de dados contém as seguintes tabelas:

- **cliente**: Armazena informações dos donos dos pets (id_cliente, nome, telefone).
- **pet**: Armazena informações dos pets (id_pet, nome, especie, idade, id_cliente - FK).
- **veterinario**: Armazena informações dos veterinários (id_veterinario, nome, crmv).
- **consulta**: Registra as consultas realizadas (id_consulta, data, tipo_serviço, id_pet - FK, id_veterinario - FK).
- **medicamento**: Armazena medicamentos (id_medicamento, nome, quantidade, validade_medicamento, id_consulta - FK).
- **medicamento_consulta**: Tabela de relacionamento muitos-para-muitos entre medicamento e consulta (id_medicamento, id_consulta, quantidade).

## Pré-requisitos

- Sistema de gerenciamento de banco de dados relacional (ex: SQLite, MySQL, PostgreSQL).
- Ferramenta de administração (ex: Workbench, PGAdmin, ou linha de comando).

## Instruções de Execução

1. **Criar o banco de dados e tabelas**:
   - Execute o script `AULA BANCO DADOS 03 ESQUEMA TABELAS` (ou renomeie para `create_tables.sql` se preferir) para criar as tabelas.

2. **Inserir dados**:
   - Execute o script `insert_data.sql` para popular as tabelas com dados de exemplo.

3. **Executar consultas**:
   - Execute o script `queries.sql` para visualizar as consultas SELECT implementadas.

4. **Manipular dados (UPDATE e DELETE)**:
   - Execute o script `updates_deletes.sql` para aplicar atualizações e exclusões. **Atenção**: Os comandos DELETE podem remover dados permanentemente. Execute com cuidado.

## Scripts Incluídos

- `AULA BANCO DADOS 03 ESQUEMA TABELAS`: Script de criação das tabelas.
- `insert_data.sql`: Comandos INSERT para povoar as tabelas principais.
- `queries.sql`: Consultas SELECT com WHERE, ORDER BY, JOIN, GROUP BY, etc.
- `updates_deletes.sql`: Comandos UPDATE e DELETE com condições.

## Taxonomia de Bloom

- **Aplicar**: Execução de comandos SQL para manipulação de dados reais.
- **Criar**: Desenvolvimento de scripts SQL completos e bem estruturados.

## Taxonomia de Fink

- **Aplicação**: Utilização de ferramentas como Workbench ou PGAdmin para criação e testes.
- **Integração**: Combinação de modelagem lógica, normalização e integridade com DML.
- **Aprendendo a aprender**: Lidar com erros de sintaxe e buscar soluções técnicas.

## Como Contribuir

1. Faça um fork do repositório.
2. Crie uma branch para suas modificações.
3. Commit suas mudanças.
4. Abra um Pull Request.

## Licença

Este projeto é para fins educacionais.
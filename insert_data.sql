-- Script para inserir dados nas tabelas principais

-- Inserir clientes
INSERT INTO cliente (nome, telefone) VALUES ('João Silva', '(11) 99999-0001');
INSERT INTO cliente (nome, telefone) VALUES ('Maria Oliveira', '(11) 99999-0002');
INSERT INTO cliente (nome, telefone) VALUES ('Pedro Santos', '(11) 99999-0003');
INSERT INTO cliente (nome, telefone) VALUES ('Ana Costa', '(11) 99999-0004');
INSERT INTO cliente (nome, telefone) VALUES ('Carlos Pereira', '(11) 99999-0005');

-- Inserir veterinários
INSERT INTO veterinario (nome, crmv) VALUES ('Dr. Roberto Lima', 'CRM/SP 12345');
INSERT INTO veterinario (nome, crmv) VALUES ('Dra. Fernanda Alves', 'CRM/SP 67890');
INSERT INTO veterinario (nome, crmv) VALUES ('Dr. Marcos Souza', 'CRM/SP 54321');

-- Inserir pets
INSERT INTO pet (nome, especie, idade, id_cliente) VALUES ('Rex', 'Cachorro', 3, 1);
INSERT INTO pet (nome, especie, idade, id_cliente) VALUES ('Mia', 'Gato', 2, 2);
INSERT INTO pet (nome, especie, idade, id_cliente) VALUES ('Buddy', 'Cachorro', 5, 3);
INSERT INTO pet (nome, especie, idade, id_cliente) VALUES ('Luna', 'Gato', 1, 4);
INSERT INTO pet (nome, especie, idade, id_cliente) VALUES ('Max', 'Cachorro', 4, 5);

-- Inserir consultas
INSERT INTO consulta (data, tipo_serviço, id_pet, id_veterinario) VALUES ('2023-10-01', 'Consulta Geral', 1, 1);
INSERT INTO consulta (data, tipo_serviço, id_pet, id_veterinario) VALUES ('2023-10-02', 'Vacinação', 2, 2);
INSERT INTO consulta (data, tipo_serviço, id_pet, id_veterinario) VALUES ('2023-10-03', 'Cirurgia', 3, 3);
INSERT INTO consulta (data, tipo_serviço, id_pet, id_veterinario) VALUES ('2023-10-04', 'Consulta Geral', 4, 1);
INSERT INTO consulta (data, tipo_serviço, id_pet, id_veterinario) VALUES ('2023-10-05', 'Vacinação', 5, 2);

-- Inserir medicamentos
INSERT INTO medicamento (nome, quantidade, validade_medicamento, id_consulta) VALUES ('Antibiótico A', 10, '2024-12-31', 1);
INSERT INTO medicamento (nome, quantidade, validade_medicamento, id_consulta) VALUES ('Vacina B', 5, '2025-06-30', 2);
INSERT INTO medicamento (nome, quantidade, validade_medicamento, id_consulta) VALUES ('Analgésico C', 20, '2024-10-15', 3);

-- Inserir na tabela de relacionamento medicamento_consulta
INSERT INTO medicamento_consulta (id_medicamento, id_consulta, quantidade) VALUES (1, 1, 2);
INSERT INTO medicamento_consulta (id_medicamento, id_consulta, quantidade) VALUES (2, 2, 1);
INSERT INTO medicamento_consulta (id_medicamento, id_consulta, quantidade) VALUES (3, 3, 3);
-- Script com comandos UPDATE e DELETE

-- UPDATE 1: Atualizar o telefone de um cliente
UPDATE cliente
SET telefone = '(11) 99999-9999'
WHERE id_cliente = 1;

-- UPDATE 2: Atualizar a idade de um pet
UPDATE pet
SET idade = 4
WHERE id_pet = 1;

-- UPDATE 3: Atualizar o tipo de serviço de uma consulta
UPDATE consulta
SET tipo_serviço = 'Consulta de Emergência'
WHERE id_consulta = 3;

-- DELETE 1: Deletar um medicamento específico
DELETE FROM medicamento_consulta
WHERE id_medicamento = 3 AND id_consulta = 3;

DELETE FROM medicamento
WHERE id_medicamento = 3;

-- DELETE 2: Deletar uma consulta específica
DELETE FROM medicamento_consulta
WHERE id_consulta = 5;

DELETE FROM consulta
WHERE id_consulta = 5;

-- DELETE 3: Deletar um pet (cuidado com chaves estrangeiras)
DELETE FROM medicamento_consulta
WHERE id_consulta IN (SELECT id_consulta FROM consulta WHERE id_pet = 4);

DELETE FROM consulta
WHERE id_pet = 4;

DELETE FROM pet
WHERE id_pet = 4;
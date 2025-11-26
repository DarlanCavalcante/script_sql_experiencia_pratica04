-- Script com consultas SELECT

-- Consulta 1: Listar todos os pets com seus donos
SELECT p.nome AS pet_nome, p.especie, p.idade, c.nome AS dono_nome
FROM pet p
JOIN cliente c ON p.id_cliente = c.id_cliente;

-- Consulta 2: Consultas realizadas em outubro de 2023, ordenadas por data
SELECT co.data, co.tipo_serviço, p.nome AS pet_nome, v.nome AS vet_nome
FROM consulta co
JOIN pet p ON co.id_pet = p.id_pet
JOIN veterinario v ON co.id_veterinario = v.id_veterinario
WHERE co.data BETWEEN '2023-10-01' AND '2023-10-31'
ORDER BY co.data;

-- Consulta 3: Medicamentos prescritos em uma consulta específica (id_consulta = 1)
SELECT m.nome AS medicamento_nome, mc.quantidade
FROM medicamento_consulta mc
JOIN medicamento m ON mc.id_medicamento = m.id_medicamento
WHERE mc.id_consulta = 1;

-- Consulta 4: Contar o número de pets por espécie
SELECT especie, COUNT(*) AS total_pets
FROM pet
GROUP BY especie;

-- Consulta 5: Veterinários que realizaram mais de uma consulta
SELECT v.nome, COUNT(co.id_consulta) AS total_consultas
FROM veterinario v
JOIN consulta co ON v.id_veterinario = co.id_veterinario
GROUP BY v.id_veterinario, v.nome
HAVING COUNT(co.id_consulta) > 1;
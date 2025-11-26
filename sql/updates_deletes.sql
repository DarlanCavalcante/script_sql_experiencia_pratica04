-- Script de UPDATE e DELETE

-- UPDATE 1: Atualizar a data de devolução de um empréstimo
UPDATE Emprestimos SET data_devolucao = '2023-02-15' WHERE id = 2;

-- UPDATE 2: Atualizar o email de um usuário
UPDATE Usuarios SET email = 'joao.novo@email.com' WHERE nome = 'João Silva';

-- UPDATE 3: Atualizar o ano de publicação de um livro
UPDATE Livros SET ano = 1998 WHERE titulo = 'Harry Potter e a Pedra Filosofal';

-- DELETE 1: Deletar um empréstimo específico
DELETE FROM Emprestimos WHERE id = 1;

-- DELETE 2: Deletar livros de um autor (cuidado com chaves estrangeiras, assumindo que empréstimos foram deletados)
DELETE FROM Livros WHERE autor_id = (SELECT id FROM Autores WHERE nome = 'Harper Lee');

-- DELETE 3: Deletar usuários que não têm empréstimos
DELETE FROM Usuarios WHERE id NOT IN (SELECT DISTINCT usuario_id FROM Emprestimos);
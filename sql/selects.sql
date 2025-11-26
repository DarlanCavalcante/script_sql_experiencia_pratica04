-- Script de consultas SELECT

-- 1. Selecionar todos os livros de um autor específico
SELECT Livros.titulo, Livros.ano FROM Livros JOIN Autores ON Livros.autor_id = Autores.id WHERE Autores.nome = 'J.K. Rowling';

-- 2. Selecionar empréstimos não devolvidos, ordenados por data de empréstimo
SELECT Usuarios.nome, Livros.titulo, Emprestimos.data_emprestimo FROM Emprestimos JOIN Usuarios ON Emprestimos.usuario_id = Usuarios.id JOIN Livros ON Emprestimos.livro_id = Livros.id WHERE Emprestimos.data_devolucao IS NULL ORDER BY Emprestimos.data_emprestimo DESC;

-- 3. Contar o número de livros por autor
SELECT Autores.nome, COUNT(Livros.id) AS num_livros FROM Autores LEFT JOIN Livros ON Autores.id = Livros.autor_id GROUP BY Autores.id ORDER BY num_livros DESC;

-- 4. Selecionar usuários que emprestaram livros em 2023, limitando a 2 resultados
SELECT DISTINCT Usuarios.nome FROM Usuarios JOIN Emprestimos ON Usuarios.id = Emprestimos.usuario_id WHERE YEAR(Emprestimos.data_emprestimo) = 2023 LIMIT 2;

-- 5. Selecionar livros publicados após 1950, ordenados por ano
SELECT titulo, ano FROM Livros WHERE ano > 1950 ORDER BY ano;
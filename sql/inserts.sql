-- Script de INSERT para povoar as tabelas

-- Inserir autores
INSERT INTO Autores (nome, nascimento) VALUES ('J.K. Rowling', '1965-07-31');
INSERT INTO Autores (nome, nascimento) VALUES ('George Orwell', '1903-06-25');
INSERT INTO Autores (nome, nascimento) VALUES ('Harper Lee', '1926-04-28');

-- Inserir livros
INSERT INTO Livros (titulo, ano, autor_id) VALUES ('Harry Potter e a Pedra Filosofal', 1997, 1);
INSERT INTO Livros (titulo, ano, autor_id) VALUES ('1984', 1949, 2);
INSERT INTO Livros (titulo, ano, autor_id) VALUES ('O Sol é para Todos', 1960, 3);
INSERT INTO Livros (titulo, ano, autor_id) VALUES ('Harry Potter e a Câmara Secreta', 1998, 1);

-- Inserir usuários
INSERT INTO Usuarios (nome, email) VALUES ('João Silva', 'joao@email.com');
INSERT INTO Usuarios (nome, email) VALUES ('Maria Santos', 'maria@email.com');
INSERT INTO Usuarios (nome, email) VALUES ('Pedro Oliveira', 'pedro@email.com');

-- Inserir empréstimos
INSERT INTO Emprestimos (usuario_id, livro_id, data_emprestimo, data_devolucao) VALUES (1, 1, '2023-01-01', '2023-01-15');
INSERT INTO Emprestimos (usuario_id, livro_id, data_emprestimo, data_devolucao) VALUES (2, 2, '2023-02-01', NULL);
INSERT INTO Emprestimos (usuario_id, livro_id, data_emprestimo, data_devolucao) VALUES (3, 3, '2023-03-01', '2023-03-10');
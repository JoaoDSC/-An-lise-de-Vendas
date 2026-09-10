CREATE DATABASE vendas_db
 DEFAULT CHARACTER SET = 'utf8mb4';
USE vendas_db;

CREATE TABLE clientes(
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    cidade VARCHAR(100),
    idade INT);

CREATE TABLE vendas(
    id INT PRIMARY KEY,
    cliente_id INT,
    produto VARCHAR(100),
    categoria VARCHAR(50),
    valor DECIMAL(10,2),
    data DATE,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id));

INSERT INTO clientes (id, nome, cidade, idade) VALUES
(1, 'Ana Silva', 'São Paulo', 34),
(2, 'Bruno Costa', 'Rio de Janeiro', 28),
(3, 'Carla Souza', 'São Paulo', 45),
(4, 'Daniel Lima', 'Belo Horizonte', NULL),
(5, 'Elaine Rocha', 'Rio de Janeiro', 39),
(6, 'Fábio Alves', 'São Paulo', 22);

INSERT INTO vendas (id, cliente_id, produto, categoria, valor, data) VALUES
(1, 1, 'Notebook', 'Eletrônicos', 3200.00, '2026-01-15'),
(2, 2, 'Mouse', 'Eletrônicos', 80.00, '2026-01-16'),
(3, 1, 'Teclado', 'Eletrônicos', 150.00, '2026-02-01'),
(4, 3, 'Cadeira', 'Móveis', 600.00, '2026-02-10'),
(5, 4, 'Mesa', 'Móveis', 900.00, '2026-02-15'),
(6, 2, 'Monitor', 'Eletrônicos', 1200.00, '2026-03-01'),
(7, 5, 'Notebook', 'Eletrônicos', 3200.00, '2026-03-05'),
(8, NULL, 'Fone de Ouvido', 'Eletrônicos', 200.00, '2026-03-10'),
(9, 3, 'Sofá', 'Móveis', 2500.00, '2026-03-20'),
(10, 6, 'Mouse', 'Eletrônicos', 80.00, '2026-04-01'),
(11, 6, 'Mouse', 'Eletrônicos', 80.00, '2026-04-01'),
(12, 2, 'Cadeira Gamer', 'Móveis', 1100.00, '2026-04-10');

-- Criação das tabelas
CREATE TABLE produtos (
  id_produto INT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  preco DECIMAL(10,2) NOT NULL,
  estoque INT NOT NULL
);

CREATE TABLE pedidos (
  id_pedido INT PRIMARY KEY,
  id_produto INT,
  quantidade INT NOT NULL,
  data_pedido DATE NOT NULL,
  FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);

-- Inserção de registros em produtos
INSERT INTO produtos VALUES (1, 'Banana', 3.50, 100);
INSERT INTO produtos VALUES (2, 'Maçã', 4.20, 80);
INSERT INTO produtos VALUES (3, 'Laranja', 2.80, 120);

-- Inserção de registros em pedidos
INSERT INTO pedidos VALUES (1, 1, 10, '2024-06-01');
INSERT INTO pedidos VALUES (2, 2, 5, '2024-06-02');
INSERT INTO pedidos VALUES (3, 3, 20, '2024-06-03'); 
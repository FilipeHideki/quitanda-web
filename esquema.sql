-- Tabela de clientes
CREATE TABLE clientes (
  id_cliente INT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  email VARCHAR(100) UNIQUE NOT NULL
);

-- Tabela de produtos
CREATE TABLE produtos (
  id_produto INT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  preco DECIMAL(10,2) NOT NULL,
  estoque INT NOT NULL
);

-- Tabela de pedidos
CREATE TABLE pedidos (
  id_pedido INT PRIMARY KEY,
  id_cliente INT,
  data_pedido DATE NOT NULL,
  FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

-- Tabela de itens do pedido
CREATE TABLE itens_pedido (
  id_pedido INT,
  id_produto INT,
  quantidade INT NOT NULL,
  PRIMARY KEY (id_pedido, id_produto),
  FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido),
  FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
); 
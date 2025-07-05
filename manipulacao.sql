-- Inserção de clientes
INSERT INTO clientes VALUES (1, 'Maria', 'maria@email.com');
INSERT INTO clientes VALUES (2, 'João', 'joao@email.com');

-- Inserção de produtos
INSERT INTO produtos VALUES (1, 'Banana', 3.50, 100);
INSERT INTO produtos VALUES (2, 'Maçã', 4.20, 80);

-- Inserção de pedidos
INSERT INTO pedidos VALUES (1, 1, '2024-06-01');
INSERT INTO pedidos VALUES (2, 2, '2024-06-02');

-- Inserção de itens do pedido
INSERT INTO itens_pedido VALUES (1, 1, 10); -- Pedido 1, Banana, 10 unidades
INSERT INTO itens_pedido VALUES (2, 2, 5);  -- Pedido 2, Maçã, 5 unidades

-- Atualização de estoque de produto
UPDATE produtos SET estoque = estoque - 10 WHERE id_produto = 1;

-- Remoção de um cliente
DELETE FROM clientes WHERE id_cliente = 2;

-- Consulta: Listar todos os pedidos com nome do cliente
SELECT p.id_pedido, c.nome, p.data_pedido
FROM pedidos p
JOIN clientes c ON p.id_cliente = c.id_cliente;

-- Consulta: Listar produtos de um pedido
SELECT ip.id_pedido, pr.nome, ip.quantidade
FROM itens_pedido ip
JOIN produtos pr ON ip.id_produto = pr.id_produto
WHERE ip.id_pedido = 1; 
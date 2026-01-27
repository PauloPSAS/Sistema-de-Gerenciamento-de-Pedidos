INSERT INTO administrador (nome, email, senha) VALUES
('Benjamin Araújo', 'admin@pizzariabomsabor.com', 'admin123');

INSERT INTO produto (nome, categoria, preco, descricao) VALUES
('Pizza Calabresa', 'Pizza', 39.90, 'Calabresa com cebola e mussarela'),
('Pizza Frango com Catupiry', 'Pizza', 41.90, 'Frango desfiado com catupiry'),
('Pizza Margherita', 'Pizza', 37.90, 'Mussarela, tomate e manjericão'),
('Pizza Portuguesa', 'Pizza', 42.90, 'Presunto, ovo, cebola e azeitona'),
('Pizza Quatro Queijos', 'Pizza', 44.90, 'Mussarela, provolone, parmesão e gorgonzola'),
('Refrigerante 2L', 'Bebida', 12.00, 'Refrigerante 2 litros'),
('Refrigerante Lata', 'Bebida', 6.00, 'Refrigerante lata 350ml'),
('Suco Natural', 'Bebida', 8.50, 'Suco natural da casa'),
('Pizza Bacon', 'Pizza', 43.90, 'Pizza de bacon com mussarela'),
('Pizza Vegetariana', 'Pizza', 40.90, 'Legumes frescos e queijo');

INSERT INTO cliente (nome, telefone, cidade, rua, numero) VALUES
('Ana Souza', 11911111111, 'Areial', 'Rua A', 10),
('Bruno Lima', 11922222222, 'Areial', 'Rua B', 20),
('Carla Mendes', 11933333333, 'Areial', 'Rua C', 30),
('Daniel Rocha', 11944444444, 'Areial', 'Rua D', 40),
('Eduarda Nunes', 11955555555, 'Areial', 'Rua E', 50),
('Felipe Costa', 11966666666, 'Areial', 'Rua F', 60),
('Gabriela Alves', 11977777777, 'Areial', 'Rua G', 70),
('Henrique Pires', 11988888888, 'Areial', 'Rua H', 80),
('Isabela Freitas', 11999999999, 'Areial', 'Rua I', 90),
('João Victor', 11811111111, 'Areial', 'Rua J', 100),
('Karen Silva', 11822222222, 'Areial', 'Rua K', 110),
('Lucas Moreira', 11833333333, 'Areial', 'Rua L', 120),
('Mariana Lopes', 11844444444, 'Areial', 'Rua M', 130),
('Nicolas Araujo', 11855555555, 'Areial', 'Rua N', 140),
('Olivia Ramos', 11866666666, 'Areial', 'Rua O', 150),
('Paulo Teixeira', 11877777777, 'Areial', 'Rua P', 160),
('Quezia Farias', 11888888888, 'Areial', 'Rua Q', 170),
('Rafael Cunha', 11899999999, 'Areial', 'Rua R', 180),
('Sofia Martins', 11711111111, 'Areial', 'Rua S', 190),
('Tiago Barros', 11722222222, 'Areial', 'Rua T', 200);

INSERT INTO pedido (id_cliente, quantidade, valor_total, status, taxa) VALUES
(1, 2, 85.80, 'Em preparo', 5.00),
(2, 3, 98.70, 'Saiu para entrega', 5.00),
(3, 1, 42.90, 'Entregue', 5.00),
(4, 2, 81.80, 'Em preparo', 5.00),
(5, 4, 150.60, 'Entregue', 5.00),
(6, 1, 39.90, 'Cancelado', 0.00),
(7, 3, 92.70, 'Entregue', 5.00),
(8, 2, 83.80, 'Em preparo', 5.00),
(9, 1, 44.90, 'Entregue', 5.00),
(10, 2, 78.80, 'Saiu para entrega', 5.00),
(11, 3, 99.70, 'Em preparo', 5.00),
(12, 1, 37.90, 'Entregue', 5.00),
(13, 2, 88.80, 'Em preparo', 5.00),
(14, 4, 162.60, 'Entregue', 5.00),
(15, 1, 40.90, 'Entregue', 5.00),
(16, 2, 83.80, 'Em preparo', 5.00),
(17, 3, 102.70, 'Saiu para entrega', 5.00),
(18, 2, 85.80, 'Entregue', 5.00),
(19, 1, 12.00, 'Entregue', 5.00),
(20, 3, 95.70, 'Em preparo', 5.00),
(1, 2, 82.80, 'Entregue', 5.00),
(2, 1, 41.90, 'Entregue', 5.00),
(3, 3, 120.70, 'Saiu para entrega', 5.00),
(4, 2, 89.80, 'Entregue', 5.00),
(5, 1, 44.90, 'Em preparo', 5.00),
(6, 2, 78.80, 'Entregue', 5.00),
(7, 3, 105.70, 'Em preparo', 5.00),
(8, 1, 39.90, 'Entregue', 5.00),
(9, 2, 81.80, 'Saiu para entrega', 5.00),
(10, 3, 99.70, 'Entregue', 5.00),
(11, 2, 83.80, 'Em preparo', 5.00),
(12, 1, 37.90, 'Entregue', 5.00),
(13, 2, 88.80, 'Entregue', 5.00),
(14, 3, 132.70, 'Saiu para entrega', 5.00),
(15, 2, 83.80, 'Entregue', 5.00),
(16, 1, 42.90, 'Em preparo', 5.00),
(17, 3, 105.70, 'Entregue', 5.00),
(18, 2, 85.80, 'Saiu para entrega', 5.00),
(19, 1, 12.00, 'Entregue', 5.00),
(20, 2, 78.80, 'Em preparo', 5.00);

INSERT INTO item_venda (valor_item, quantidade_venda, id_pedido, id_produto) VALUES

-- Pedido 1
(39.90, 1, 1, 1),
(45.90, 1, 1, 2),
(12.00, 1, 1, 6),

-- Pedido 2
(42.90, 1, 2, 4),
(39.90, 1, 2, 1),
(6.00, 2, 2, 7),

-- Pedido 3
(37.90, 1, 3, 3),

-- Pedido 4
(44.90, 1, 4, 5),
(39.90, 1, 4, 1),

-- Pedido 5
(41.90, 2, 5, 2),
(12.00, 2, 5, 6),

-- Pedido 6
(39.90, 1, 6, 10),

-- Pedido 7
(43.90, 2, 7, 9),
(6.00, 1, 8, 7),

-- Pedido 8
(40.90, 2, 9, 10),
(12.00, 1, 9, 6),

-- Pedido 9
(44.90, 1, 10, 5),

-- Pedido 10
(39.90, 2, 11, 1),
(6.00, 1, 11, 7);


INSERT INTO item_venda (valor_item, quantidade_venda, id_pedido, id_produto) VALUES

-- Pedido 11
(37.90, 1, 1, 3),
(39.90, 1, 2, 1),
(6.00, 1, 3, 7),

-- Pedido 12
(37.90, 1, 4, 3),

-- Pedido 13
(44.90, 1, 5, 5),
(39.90, 1, 6, 1),

-- Pedido 14
(41.90, 2, 7, 2),
(12.00, 2, 8, 6),

-- Pedido 15
(40.90, 1, 9, 10),

-- Pedido 16
(39.90, 1, 10, 1),
(12.00, 1, 11, 6),

-- Pedido 17
(42.90, 1, 12, 4),
(39.90, 1, 13, 1),
(6.00, 1, 14, 7),

-- Pedido 18
(44.90, 1, 15, 5),
(39.90, 1, 15, 1),

-- Pedido 19
(12.00, 1, 16, 6),

-- Pedido 20
(43.90, 1, 17, 9),
(39.90, 1, 17, 1),
(6.00, 1, 17, 7),

-- Pedido 21
(41.90, 1, 40, 2),
(12.00, 1, 40, 6),

-- Pedido 22
(41.90, 1, 20, 2),

-- Pedido 23
(42.90, 1, 18, 4),
(6.00, 1, 18, 7),
(12.00, 1, 18, 6),

-- Pedido 24
(39.90, 1, 19, 1),
(12.00, 1, 19, 6),

-- Pedido 25
(44.90, 1, 20, 5),

-- Pedido 26
(39.90, 2, 21, 1),

-- Pedido 27
(43.90, 2, 22, 9),
(6.00, 1, 22, 7),

-- Pedido 28
(39.90, 1, 23, 1),

-- Pedido 29
(44.90, 1, 24, 5),
(39.90, 1, 24, 1),

-- Pedido 30
(41.90, 2, 25, 2),
(12.00, 1, 25, 6),

-- Pedido 31
(39.90, 1, 26, 1),
(6.00, 1, 26, 7),

-- Pedido 32
(37.90, 1, 27, 3),

-- Pedido 33
(44.90, 1, 28, 5),
(39.90, 1, 29, 1),

-- Pedido 34
(42.90, 2, 30, 4),
(12.00, 1, 30, 6),

-- Pedido 35
(40.90, 1, 31, 10),
(6.00, 1, 31, 7),

-- Pedido 36
(42.90, 1, 32, 4),

-- Pedido 37
(43.90, 2, 33, 9),
(12.00, 1, 33, 6),

-- Pedido 38
(44.90, 1, 34, 5),
(39.90, 1, 35, 1),

-- Pedido 39
(12.00, 1, 36, 6),

-- Pedido 40
(39.90, 1, 37, 1),
(6.00, 1, 38, 7);

INSERT INTO item_venda (valor_item, quantidade_venda, id_pedido, id_produto) VALUES

-- Pedido 39
(37.90, 1, 39, 5),
(39.90, 1, 39, 5),
(6.00, 1, 39, 6);
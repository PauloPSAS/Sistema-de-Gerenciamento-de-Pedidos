-- Liste os nomes dos clientes que fizeram 2 ou mais pedidos por ordem alfabética. (PAULO)
SELECT
	c.nome,
    COUNT(*) AS quantidade_pedidos
FROM cliente c
JOIN pedido p ON p.id_cliente = c.id
GROUP BY p.id_cliente, c.nome
HAVING COUNT(p.id_cliente) >= 2
ORDER BY c.nome ASC;

-- Mostre os nomes e o valor total dos clientes que já gastaram mais de R$150,00 no valor total de pedidos (PAULO).
SELECT
	c.nome,
    SUM(p.valor_total) AS valor_total
FROM pedido p
JOIN cliente c ON p.id_cliente = c.id
GROUP BY c.nome
HAVING SUM(p.valor_total) >= 150.00;

-- Mostre o nome e a quantidade de vendas dos produtos com pelo menos 10 vendas (PAULO).
SELECT
	p.id,
	p.nome,
    COUNT(i.id_produto) AS quantidade_venda
FROM item_venda i
JOIN produto p ON i.id_produto = p.id
GROUP BY p.nome, p.id
HAVING COUNT(i.id_produto) >= 10
ORDER BY p.id;

-- Mostre o id, nome, preço unitário, quantidade de venda por produto e valor médio da venda, dos produtos cujo a média de vendas é maior que R$39.00 (PAULO).
 SELECT
 	p.id,
    p.nome,
    p.preco AS valor_unitario,
    COUNT(i.id_produto) AS quantidade_venda,
    ROUND(AVG(i.valor_item), 2) AS venda_media 
FROM item_venda i
JOIN produto p ON i.id_produto = p.id
GROUP BY p.nome, p.id
HAVING AVG(i.valor_item) >= 40;

-- Mostre o id, nome, quantidade de pedidos e a soma desses pedidos  dos clientes cujo valor soma esteja entre R$130.00 e R$170.00, ordenado do menor valor ao maior (PAULO).
SELECT
  	c.id,
	c.nome,
    COUNT(p.id_cliente) AS quantidade_pedidos,
    SUM(p.valor_total) AS soma_pedidos
FROM pedido p
JOIN cliente c ON p.id_cliente = c.id
GROUP BY p.id_cliente, c.id, c.nome
HAVING SUM(p.valor_total) BETWEEN 130.00 AND 170.00
ORDER BY soma_pedidos ASC;
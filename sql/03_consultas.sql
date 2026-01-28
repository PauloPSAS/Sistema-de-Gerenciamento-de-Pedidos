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

-- Exiba o id e o valor dos pedidos com 'entregue' e o nome do cliente. (ROSE)
SELECT
    c.nome,
    p.id,
    p.valor_total,
    p.status
FROM
    cliente c JOIN pedido p
    ON c.id = p.id_cliente
WHERE
    status LIKE '%Entregue%';

-- Produto mais vendido (ROSE).
SELECT
    p.id,
    p.nome,
    p.categoria,
    SUM(i.quantidade_venda) AS total_vendido
FROM 
    item_venda i JOIN produto p 
    ON p.id = i.id_produto
GROUP BY 
    p.id, p.nome, p.categoria
ORDER BY 
    total_vendido DESC
LIMIT 1;

-- 12. Mostre os pedidos que não possuem nenhum item vinculado a eles (ROSE).
SELECT
    p.id AS id_pedido,
    p.valor_total,
    p.status
FROM 
    pedido p
    LEFT JOIN item_venda i ON i.id_pedido = p.id
WHERE 
    i.id_pedido IS NULL;

-- 13. Exiba o nome do cliente e o id do pedido mais recente feito por cada cliente (ROSE).
SELECT
    c.nome,
    MAX(p.id) AS ultimo_pedido
FROM 
    cliente c JOIN pedido p 
    ON p.id_cliente = c.id
GROUP BY c.nome;

-- 14. Mostre os produtos cujo preço é maior que o preço médio de todos os produtos.(ROSE)
SELECT
    nome,
    preco
FROM produto
WHERE preco > (
    SELECT AVG(preco)
    FROM produto
)
ORDER BY preco DESC;

-- 15. Mostre todos os status dos pedidos (Entregue, Em preparo e Cancelado) e o valor médio dos pedidos para cada status. (ROSE)
SELECT
    status,
    AVG(valor_total) AS media_valor
FROM pedido
GROUP BY status
ORDER BY status;
CREATE TABLE administrador (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL,
  	senha VARCHAR(255) NOT NULL
);

CREATE TABLE produto (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
	categoria VARCHAR(255) NOT NULL,
	preco NUMERIC(10, 2) NOT NULL,
	descricao VARCHAR(255) NOT NULL
);

CREATE TABLE cliente (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
	telefone NUMERIC NOT NULL,
	cidade VARCHAR(255) NOT NULL,
	rua VARCHAR(255) NOT NULL,
	numero INTEGER
);

CREATE TABLE pedido (
	id SERIAL PRIMARY KEY,
	id_cliente INTEGER NOT NULL,
	quantidade INTEGER NOT NULL,
	valor_total NUMERIC(10, 2) NOT NULL,
	status VARCHAR(255),
	taxa NUMERIC(10, 2),
	FOREIGN KEY (id_cliente) REFERENCES cliente(id)
);

CREATE TABLE item_venda (
    id SERIAL PRIMARY KEY,
    valor_item NUMERIC(10, 2) NOT NULL,
    quantidade_venda INTEGER NOT NULL,
    id_pedido INTEGER NOT NULL,
    id_produto INTEGER NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES pedido(id),
    FOREIGN KEY (id_produto) REFERENCES produto(id)
);
# Minimundo — Pizzaria BomSabor

## 📌 Contexto

A Pizzaria BomSabor realiza vendas de pizzas e outros produtos por meio de pedidos
feitos por clientes. Atualmente, o estabelecimento enfrenta dificuldades no controle
e gerenciamento desses pedidos, resultando em atrasos, falhas na comunicação e
insatisfação dos clientes.

## 🎯 Objetivo do Sistema

O sistema tem como objetivo automatizar o gerenciamento de pedidos da pizzaria,
permitindo o cadastro de clientes, produtos e pedidos, bem como o acompanhamento
do status das vendas.

## 👥 Atores Envolvidos

- Administrador: responsável pelo gerenciamento do sistema, produtos e pedidos.
- Cliente: realiza pedidos e fornece dados para entrega.

## 📦 Entidades Principais

- Cliente
- Produto
- Pedido
- Item de Venda
- Administrador

## 📜 Regras de Negócio

- Um cliente pode realizar um ou mais pedidos.
- Cada pedido pertence a apenas um cliente.
- Um pedido pode conter um ou mais produtos.
- Cada item de venda associa um produto a um pedido.
- O valor total do pedido é calculado com base nos itens e na taxa adicional.
- Um pedido possui um status (Em preparo, Entregue ou Cancelado).

## 🔄 Fluxo Básico do Pedido

1. O cliente realiza um pedido.
2. O pedido é registrado no sistema.
3. Os produtos são associados ao pedido.
4. O status do pedido é atualizado conforme o andamento.
5. O pedido é finalizado com entrega ou cancelamento.

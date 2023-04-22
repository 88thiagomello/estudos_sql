-- Cria o banco de dados loja1
CREATE DATABASE loja1;

-- Seleciona o banco de dados loja1
USE loja1;

-- Cria a tabela clientes
CREATE TABLE clientes (
  id INT PRIMARY KEY,
  nome VARCHAR(50),
  email VARCHAR(50)
);

-- Adiciona alguns dados à tabela clientes
INSERT INTO clientes (id, nome, email)
VALUES (1, 'João', 'joao@gmail.com'),
       (2, 'Maria', 'maria@gmail.com'),
       (3, 'Pedro', 'pedro@gmail.com'),
       (4, 'Ana', 'ana@gmail.com'),
       (5, 'Lucas', 'lucas@gmail.com');

-- Cria a tabela produtos
CREATE TABLE produtos (
  id INT PRIMARY KEY,
  nome VARCHAR(50),
  preco DECIMAL(10, 2)
);

-- Adiciona alguns dados à tabela produtos
INSERT INTO produtos (id, nome, preco)
VALUES (1, 'Camiseta', 29.99),
       (2, 'Calça', 59.99),
       (3, 'Tênis', 99.99),
       (4, 'Bermuda', 39.99),
       (5, 'Jaqueta', 79.99);

-- Cria a tabela vendas
CREATE TABLE vendas (
  id INT PRIMARY KEY,
  cliente_id INT,
  produto_id INT,
  quantidade INT,
  data_venda DATE,
  FOREIGN KEY (cliente_id) REFERENCES clientes(id),
  FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

-- Adiciona alguns dados à tabela vendas
INSERT INTO vendas (id, cliente_id, produto_id, quantidade, data_venda)
VALUES (1, 1, 1, 2, '2022-01-15'),
       (2, 2, 3, 1, '2022-02-22'),
       (3, 3, 2, 3, '2022-03-10'),
       (4, 4, 4, 2, '2022-04-01'),
       (5, 5, 5, 1, '2022-05-12');

-- Seleciona todos os dados da tabela clientes
SELECT * FROM clientes;

-- Seleciona todos os dados da tabela produtos
SELECT * FROM produtos;

-- Seleciona todos os dados da tabela vendas
SELECT * FROM vendas;

/*
Criamos um banco de dados chamado "loja1" usando a linguagem SQL 
e criamos três tabelas: "clientes", "produtos" e "vendas". 

Adicionamos alguns dados a cada uma dessas tabelas e fizemos uma 
consulta simples para recuperar todos os dados de cada tabela.

O objetivo desse mini projeto era demonstrar como criar um banco de dados 
simples e adicionar dados a ele usando SQL.
*/


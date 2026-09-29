USE pedidos;

INSERT INTO produtos (nome, descricao, volume, valor) VALUE
('Abajur', 'Abajur Grande', 10, 15.00);
SELECT * FROM produtos;
DELETE FROM produtos WHERE id = 1; 
SELECT * FROM produtos;
INSERT INTO produtos (nome, descricao, volume, valor)VALUE
('Abajur', 'Abajur Grande', 10, 15.00),
('Abajur', 'Abajur Médio', 7, 10.00),
('Abajur', 'Abajur Paqueno', 5, 8.00),
('Porta jóias', 'Porta jóias Grande', 10, 12.00),
('Porta jóias', 'Porta jóias Médio', 7, 7.00),
('Porta jóias', 'Porta jóias Paqueno', 5, 5.00),
('Mini escada', 'Decoração para festas', 2, 17.00),
('Mini carruagem', 'Decoração para festas', 2, 18.00),
('Mini Kombi', 'Decoração para festas', 2, 25.00),
('Mini Fusca', 'Decoração para festas', 2, 25.00),
('Porta livros', 'Utilidade doméstica', 10, 20.00),
('Porta facas', 'Utilidade doméstica', 7, 15.00),
('Mini estante', 'Utilidade doméstica', 15, 15.00);
SELECT * FROM produtos;
UPDATE produtos SET volume = 15 WHERE id = 2
SELECT * FROM produtos;

-- Importar dados de produtos do aquivo produtos.csv
load data infile 'C:\Users\Larissa\Desktop\pedidos_dml\pedidos.csv'

into table produto
fields terminated by ';'
lines terminated by '\n'
ignore 1 rows;

-- Listando os fornecedores
select * from produto;
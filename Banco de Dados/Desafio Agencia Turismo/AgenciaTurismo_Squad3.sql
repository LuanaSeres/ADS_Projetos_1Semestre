--criando entidade CIDADE
CREATE TABLE cidade (
	id_cidade SERIAL PRIMARY KEY,
	nome VARCHAR (50) NOT NULL,
	estado VARCHAR (2) NOT NULL,
	populacao INT
);
--inserindo valores aos campos
INSERT INTO cidade (id_cidade, nome, estado, populacao) VALUES
(1, 'São Paulo', 'SP', 12346578),
(2, 'Rio de Janeiro', 'RJ', 6789012),
(3, 'Belo Horizonte', 'MG', 2345678),
(4, 'Salvador', 'BA', 2893456),
(5, 'Porto Alegre', 'RS', 1356789),
(6, 'Curitiba', 'PR', 1789456),
(7, 'Recife', 'PE', 2345678),
(8, 'Fortaleza', 'CE', 2893456),
(9, 'Goiânia', 'GO', 1234567),
(10, 'Brasília', 'DF', 2789456);
--visualizar
SELECT * FROM cidade
ORDER BY id_cidade
--fim entidade cidade
--------------------------------------------------------------------
--HOTEL
--------------------------------------------------------------------
--criando entidade HOTEL
CREATE TABLE hotel (
	id_hotel SERIAL PRIMARY KEY,
	id_cidade INT UNIQUE NOT NULL REFERENCES cidade,
	nome VARCHAR (50) NOT NULL,
	estrelas INT NOT NULL,
	endereco_hotel VARCHAR(100) NOT NULL
);
--inserindo valores aos campos
INSERT INTO hotel (id_cidade, nome, estrelas, endereco_hotel) VALUES
(5, 'Hotel A', 4, 'Rua 1, Bairro X,CEP 12345-678'),
(4, 'Hotel B', 2, 'Rua 2, Bairro Z, CEP 23456-789'),
(3, 'Hotel C', 3, 'Rua 3, Bairro W CEP 34567-890'),
(2, 'Hotel D', 5, 'Rua 4, Bairro V, CEP 45678-901'),
(1, 'Hotel E', 2, 'Rua 5, Bairro U, CEP 56789-012');

--visualizar
SELECT * FROM hotel
ORDER BY id_hotel
--fim entidade hotel
--------------------------------------------------------------------
--criando entidade categoria_quarto
CREATE TABLE categoria_quarto (
	id_categoria SERIAL PRIMARY KEY,
	categoria VARCHAR (20) NOT NULL,
	diaria_categoria MONEY NOT NULL
);
--inserindo valores aos campos
INSERT INTO categoria_quarto (categoria, diaria_categoria) 
VALUES 
('Standard', 150.00), 
('Luxo', 250.00), 
('Suíte', 350.00), 
('Master', 500.00), 
('Presidencial', 1000.00);

--visualizar
SELECT * FROM categoria_quarto
ORDER BY id_categoria
--fim entidade categoria_quarto
--------------------------------------------------------------------
--Criando entidade disponibilidade_categoria
CREATE TABLE disponibilidade_categoria(
	id_hotel INT REFERENCES hotel,
	id_categoria INT REFERENCES categoria_quarto
);
--definindo chave primaria composta
ALTER TABLE disponibilidade_categoria 
ADD CONSTRAINT pk_disponibilidade_categoria PRIMARY KEY (id_hoteL, id_categoria);
--inserindo valores aos campos
INSERT INTO disponibilidade_categoria (id_hotel, id_categoria) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 1),
(2, 3),
(2, 4),
(2, 5),
(3, 1),
(3, 5),
(3, 3),
(4, 1),
(4, 3),
(4, 2),
(4, 5),
(5, 1),
(5, 2),
(5, 4),
(5, 3);

--visualizar
SELECT * FROM disponibilidade_categoria
ORDER BY id_categoria
--fim entidade disponibilidade_categoria
--------------------------------------------------------------------
--criando entidade disponibilidade_quarto
CREATE TABLE disponibilidade_quarto (
	id_categoria INT NOT NULL REFERENCES categoria_quarto,
	id_hotel INT NOT NULL REFERENCES hotel,
	numero_quarto INT,
	disponibilidade VARCHAR(15)
);
--definindo chave primaria composta
ALTER TABLE disponibilidade_quarto
ADD CONSTRAINT pk_disponibilidade_quarto PRIMARY KEY (id_categoria, id_hoteL, numero_quarto);
--inserindo valores aos campos
INSERT INTO disponibilidade_quarto (id_categoria, id_hotel, numero_quarto) VALUES
(1, 1, 100),
(1, 1, 101),
(1, 1, 102),
(1, 1, 103),
(1, 1, 104),
(1, 1, 105),
(1, 1, 106),
(1, 1, 107),
(1, 1, 108),
(1, 1, 109),
(2, 1, 200),
(2, 1, 201),
(2, 1, 202),
(2, 1, 203),
(2, 1, 204),
(2, 1, 205),
(2, 1, 206),
(2, 1, 207),
(2, 1, 208),
(2, 1, 209),
(3, 1, 300),
(3, 1, 301),
(3, 1, 302),
(3, 1, 303),
(3, 1, 304),
(3, 1, 305),
(3, 1, 306),
(3, 1, 307),
(3, 1, 308),
(3, 1, 309),
(4, 1, 400),
(4, 1, 401),
(4, 1, 402),
(4, 1, 403),
(4, 1, 404),
(4, 1, 405),
(4, 1, 406),
(4, 1, 407),
(4, 1, 408),
(4, 1, 409),
(5, 1, 500),
(5, 1, 501),
(5, 1, 502),
(5, 1, 503),
(5, 1, 504),
(5, 1, 505),
(5, 1, 506),
(5, 1, 507),
(5, 1, 508),
(5, 1, 509),
(1, 2, 100),
(1, 2, 101),
(1, 2, 102),
(1, 2, 103),
(1, 2, 104),
(1, 2, 105),
(1, 2, 106),
(1, 2, 107),
(1, 2, 108),
(1, 2, 109),
(2, 2, 200),
(2, 2, 201),
(2, 2, 202),
(2, 2, 203),
(2, 2, 204),
(2, 2, 205),
(2, 2, 206),
(2, 2, 207),
(2, 2, 208),
(2, 2, 209),
(3, 2, 300),
(3, 2, 301),
(3, 2, 302),
(3, 2, 303),
(3, 2, 304),
(3, 2, 305),
(3, 2, 306),
(3, 2, 307),
(3, 2, 308),
(3, 2, 309),
(4, 2, 400),
(4, 2, 401),
(4, 2, 402),
(4, 2, 403),
(4, 2, 404),
(4, 2, 405),
(4, 2, 406),
(4, 2, 407),
(4, 2, 408),
(4, 2, 409),
(5, 2, 500),
(5, 2, 501),
(5, 2, 502),
(5, 2, 503),
(5, 2, 504),
(5, 2, 505),
(5, 2, 506),
(5, 2, 507),
(5, 2, 508),
(5, 2, 509),
(1, 3, 100),
(1, 3, 101),
(1, 3, 102),
(1, 3, 103),
(1, 3, 104),
(1, 3, 105),
(1, 3, 106),
(1, 3, 107),
(1, 3, 108),
(1, 3, 109),
(2, 3, 200),
(2, 3, 201),
(2, 3, 202),
(2, 3, 203),
(2, 3, 204),
(2, 3, 205),
(2, 3, 206),
(2, 3, 207),
(2, 3, 208),
(2, 3, 209),
(3, 3, 300),
(3, 3, 301),
(3, 3, 302),
(3, 3, 303),
(3, 3, 304),
(3, 3, 305),
(3, 3, 306),
(3, 3, 307),
(3, 3, 308),
(3, 3, 309),
(4, 3, 400),
(4, 3, 401),
(4, 3, 402),
(4, 3, 403),
(4, 3, 404),
(4, 3, 405),
(4, 3, 406),
(4, 3, 407),
(4, 3, 408),
(4, 3, 409),
(5, 3, 500),
(5, 3, 501),
(5, 3, 502),
(5, 3, 503),
(5, 3, 504),
(5, 3, 505),
(5, 3, 506),
(5, 3, 507),
(5, 3, 508),
(5, 3, 509),
(1, 4, 100),
(1, 4, 101),
(1, 4, 102),
(1, 4, 103),
(1, 4, 104),
(1, 4, 105),
(1, 4, 106),
(1, 4, 107),
(1, 4, 108),
(1, 4, 109),
(2, 4, 200),
(2, 4, 201),
(2, 4, 202),
(2, 4, 203),
(2, 4, 204),
(2, 4, 205),
(2, 4, 206),
(2, 4, 207),
(2, 4, 208),
(2, 4, 209),
(3, 4, 300),
(3, 4, 301),
(3, 4, 302),
(3, 4, 303),
(3, 4, 304),
(3, 4, 305),
(3, 4, 306),
(3, 4, 307),
(3, 4, 308),
(3, 4, 309),
(4, 4, 400),
(4, 4, 401),
(4, 4, 402),
(4, 4, 403),
(4, 4, 404),
(4, 4, 405),
(4, 4, 406),
(4, 4, 407),
(4, 4, 408),
(4, 4, 409),
(5, 4, 500),
(5, 4, 501),
(5, 4, 502),
(5, 4, 503),
(5, 4, 504),
(5, 4, 505),
(5, 4, 506),
(5, 4, 507),
(5, 4, 508),
(5, 4, 509),
(1, 5, 100),
(1, 5, 101),
(1, 5, 102),
(1, 5, 103),
(1, 5, 104),
(1, 5, 105),
(1, 5, 106),
(1, 5, 107),
(1, 5, 108),
(1, 5, 109),
(2, 5, 200),
(2, 5, 201),
(2, 5, 202),
(2, 5, 203),
(2, 5, 204),
(2, 5, 205),
(2, 5, 206),
(2, 5, 207),
(2, 5, 208),
(2, 5, 209),
(3, 5, 300),
(3, 5, 301),
(3, 5, 302),
(3, 5, 303),
(3, 5, 304),
(3, 5, 305),
(3, 5, 306),
(3, 5, 307),
(3, 5, 308),
(3, 5, 309),
(4, 5, 400),
(4, 5, 401),
(4, 5, 402),
(4, 5, 403),
(4, 5, 404),
(4, 5, 405),
(4, 5, 406),
(4, 5, 407),
(4, 5, 408),
(4, 5, 409),
(5, 5, 500),
(5, 5, 501),
(5, 5, 502),
(5, 5, 503),
(5, 5, 504),
(5, 5, 505),
(5, 5, 506),
(5, 5, 507),
(5, 5, 508),
(5, 5, 509);

--visualizar
SELECT * FROM disponibilidade_quarto
ORDER BY id_categoria
--fim entidade disponibilidade_quarto
--------------------------------------------------------------------
--Criando entidade cliente_hotel
CREATE TABLE cliente_hotel (
	id_cliente SERIAL PRIMARY KEY,
	id_hotel INT NOT NULL REFERENCES hotel,
	cpf VARCHAR (14) NOT NULL UNIQUE,
	nome VARCHAR (50) NOT NULL,
	sobrenome VARCHAR(50) NOT NULL,
	endereco_cliente VARCHAR (200)
);
--inserindo valores aos campos
INSERT INTO cliente_hotel (id_hotel, cpf, nome, sobrenome, endereco_cliente) VALUES
(1, '11111111111', 'João', 'Silva', 'Rua A, 123'),
(2, '22222222222', 'Maria', 'Souza', 'Avenida B, 456'),
(3, '33333333333', 'Pedro', 'Oliveira', 'Rua C, 789'),
(4, '44444444444', 'Julia', 'Pereira', 'Rua D, 987'),
(5, '55555555555', 'Lucas', 'Ferreira', 'Avenida E, 654'),
(2, '66666666666', 'Ana', 'Carvalho', 'Rua F, 321'),
(1, '77777777777', 'Paulo', 'Santos', 'Rua G, 654'),
(4, '88888888888', 'Cristina', 'Rocha', 'Avenida H, 987'),
(3, '99999999999', 'Rodrigo', 'Costa', 'Rua I, 123'),
(5, '00000000000', 'Camila', 'Nunes', 'Rua J, 456');
--visualizar
SELECT * FROM cliente_hotel
ORDER BY id_cliente
--fim entidade cliente_hotel
--------------------------------------------------------------------
--criando entidade reserva_hotel
CREATE TABLE reserva_hotel(
	id_reserva_hotel SERIAL PRIMARY KEY,
	id_hotel INT NOT NULL REFERENCES hotel,
	id_cliente INT NOT NULL REFERENCES  cliente_hotel,
	id_categoria INT NOT NULL,
	numero_quarto INT NOT NULL,
	data_checkin DATE NOT NULL,
	data_checkout DATE NOT NULL,
	CONSTRAINT pk_disponibilidade_quarto FOREIGN KEY (id_hotel, id_categoria, numero_quarto) REFERENCES disponibilidade_quarto (id_hotel, id_categoria, numero_quarto),
	CONSTRAINT pk_disponibilidade_categoria FOREIGN KEY (id_hotel, id_categoria) REFERENCES disponibilidade_categoria (id_hotel, id_categoria)
);


----------------------------------------------------------------------------------------------------------------------------------------
--criando função trigger que atualiza situação dos quartos na tabela disponibilidade_quarto
CREATE OR REPLACE FUNCTION atualizar_disponibilidade_quarto()
RETURNS trigger AS $atualizar_disponibilidade_quarto_trigger$
BEGIN
    UPDATE disponibilidade_quarto
    SET disponibilidade = 
	(CASE WHEN numero_quarto NOT IN (
        SELECT numero_quarto FROM reserva_hotel
        WHERE NOW() BETWEEN data_checkin AND data_checkout)
	THEN True
	ELSE False
	END);
RETURN NEW;
END;
$atualizar_disponibilidade_quarto_trigger$
LANGUAGE plpgsql;

CREATE TRIGGER atualizar_disponibilidade_quarto
AFTER INSERT OR UPDATE OF numero_quarto ON reserva_hotel
FOR EACH ROW
EXECUTE FUNCTION atualizar_disponibilidade_quarto();
--fim função/trigger atualizar_disponibilidade_quarto
--------------------------------------------------------------------
--inserindo valores aos campos
INSERT INTO reserva_hotel (id_hotel, id_cliente, id_categoria, numero_quarto, data_checkin, data_checkout) 
VALUES 

(2, 32, 3, 303, '2023-05-01', '2023-05-14');


--visualizar
SELECT * FROM reserva_hotel
ORDER BY id_reserva_hotel
--fim entidade reserva_hotel
--------------------------------------------------------------------
--consulta
SELECT * FROM reserva_hotel
SELECT * FROM disponibilidade_categoria
SELECT * FROM disponibilidade_quarto
----------------------------------------------------------------------------------------------------------------------------------------
--criando entidade telefone_hotel
CREATE TABLE telefone_cliente_hotel (
	id_cliente SERIAL REFERENCES cliente_hotel,
	telefone VARCHAR(15) 
);
--inserindo valores aos campos
INSERT INTO telefone_cliente_hotel (id_cliente, telefone) VALUES
(1, '(11) 1234-5678'),
(1, '(11) 8765-4321'),
(2, '(21) 9876-5432'),
(3, '(31) 4567-8901'),
(4, '(41) 2345-6789'),
(4, '(41) 9876-5432'),
(4, '(41) 7654-3210'),
(5, '(51) 3456-7890'),
(6, '(61) 2345-6789'),
(7, '(71) 9876-5432'),
(8, '(81) 7654-3210'),
(8, '(81) 2345-6789'),
(9, '(91) 9876-5432'),
(10, '(27) 4567-8901'),
(1, '(22) 2345-6789'),
(2, '(92) 9876-5432'),
(3, '(47) 4567-8901');
--definindo chave primaria composta
ALTER TABLE telefone_cliente_hotel 
ADD CONSTRAINT pk_telefone_hotel PRIMARY KEY (id_cliente, telefone);
--visualizar
SELECT * FROM telefone_cliente_hotel
ORDER BY id_cliente
--fim entidade telefone_cliente_hotel
--------------------------------------------------------------------
--criando entidade restaurante_hotel
CREATE TABLE restaurante_hotel (
	id_restaurante_hotel SERIAL PRIMARY KEY,
	id_hotel SERIAL NOT NULL REFERENCES hotel,
	nome_restaurante_hotel VARCHAR(50) NOT NULL,
	endereco VARCHAR(100),
	categoria_restaurante_hotel VARCHAR(30) NOT NULL
);
--inserindo valores aos campos
INSERT INTO restaurante_hotel (id_hotel, nome_restaurante_hotel, endereco, categoria_restaurante_hotel) VALUES
(1, 'Restaurante A', 'Rua A, 2335 - Bairro A', 4),
(2, 'Restaurante B', 'Rua B, 673 - Bairro B', 3),
(3, 'Restaurante C', 'Rua C, 457 - Bairro C', 3),
(4, 'Restaurante D', 'Rua D, 345 - Bairro D', 5),
(5, 'Restaurante E', 'Rua E, 870 - Bairro E', 2);

--visualizar
SELECT * FROM restaurante_hotel
ORDER BY id_restaurante_hotel
--fim entidade restaurante_hotel
--------------------------------------------------------------------
--Igreja
--------------------------------------------------------------------
--criando entidade igreja
CREATE TABLE igreja (
	id_igreja SERIAL PRIMARY KEY,
	id_cidade INT NOT NULL REFERENCES cidade,
	descricao_igreja VARCHAR(200) NOT NULL,
	endereco_igreja VARCHAR(100) NOT NULL,
	data_construcao DATE NOT NULL,
	estilo_construcao VARCHAR(50) NOT NULL
);
--inserindo valores aos campos
INSERT INTO igreja (id_cidade, descricao_igreja, endereco_igreja, data_construcao, estilo_construcao) VALUES
(1, 'Igreja de São Benedito', 'Rua A, 456, Centro, Cidade A', '1987-08-21', 'Barroco'),
(2, 'Igreja de Nossa Senhora das Graças', 'Rua B, 456, Centro, Cidade B', '1940-05-01', 'Neogótico'),
(3, 'Catedral de Santo Antônio', 'Rua C, 789, Centro, Cidade C', '1920-08-31', 'Neoclássico'),
(4, 'Basílica de Nossa Senhora do Rosário', 'Rua D, 555, Centro, Cidade D', '1885-06-30', 'Barroco'),
(5, 'Igreja do Carmo', 'Rua E, 222, Centro, Cidade E', '1700-01-01', 'Barroco');

SELECT * FROM igreja
ORDER BY id_igreja
--fim entidade igreja
--------------------------------------------------------------------
--Casa de Show
--------------------------------------------------------------------
CREATE TABLE casa_show (
	id_casa_show SERIAL PRIMARY KEY,
	id_cidade INT NOT NULL REFERENCES cidade,
	descricao_casa_show VARCHAR(200) NOT NULL,
	endereco_casa_show VARCHAR (100) NOT NULL,
	inicio_show TIME NOT NULL,
	fechado VARCHAR (30) DEFAULT 'Segunda-feira'
);
--inserindo valores aos campos
INSERT INTO casa_show (id_cidade, descricao_casa_show, endereco_casa_show, inicio_show) VALUES
(1, 'Teatro A', 'Rua A, 344 - Bairro A, Cidade A', '19:00:00'),
(2, 'Casa de show B', 'Rua B, 344 - Bairro B, Cidade B', '19:30:00'),
(3, 'Casa de show C', 'Rua C, 222 - Bairro C, Cidade C', '19:30:00'),
(4, 'Casa de show D', 'Rua D, 789 - Bairro D, Cidade D', '19:30:00'),
(5, 'Casa de show E', 'Rua E, 111 - Bairro E, Cidade E', '19:30:00');


--visualizar
SELECT * FROM casa_show
ORDER BY id_casa_show
--fim entidade casa_show
--------------------------------------------------------------------
--criando entidade restaurante_casa_show
CREATE TABLE restaurante_casa_show (
	id_restaurante_casa_show SERIAL PRIMARY KEY,
	id_casa_show INT UNIQUE REFERENCES casa_show,
	preco_medio_refeicao MONEY NOT NULL,
	especialidade VARCHAR(50) NOT NULL
);
--inserindo valores aos campos
INSERT INTO restaurante_casa_show (id_casa_show, preco_medio_refeicao, especialidade) VALUES
(1, 80, 'Peixes'),
(2, 120, 'Massas'),
(3, 55, 'Churrasco'),
(4, 79, 'Peixes'),
(5, 90, 'Massas');


--visualizar
SELECT * FROM restaurante_casa_show
ORDER BY id_restaurante_casa_show
--fim entidade restaurante_casa_show
--------------------------------------------------------------------
--Museu  
--------------------------------------------------------------------
--criando entidade museu
CREATE TABLE museu (
	id_museu SERIAL PRIMARY KEY,
	id_cidade INT NOT NULL REFERENCES cidade,
	descricao_museu VARCHAR(200) NOT NULL,
	endereco_museu VARCHAR (100) NOT NULL,
	data_fundacao DATE NOT NULL,
	numero_salas INT NOT NULL
);
--inserindo valores aos campos
INSERT INTO museu (id_cidade, descricao_museu, endereco_museu, data_fundacao, numero_salas) VALUES
(1, 'Museu de arte moderna', 'Rua A, 278 - Bairro A, Cidade A', '1956-03-21', 34),
(2, 'Museu de arte contemporânea', 'Rua B, 555 - Bairro B, Cidade B', '1968-06-12', 40),
(3, 'Museu de arte abstrata', 'Rua C, 222 - Bairro C, Cidade C', '1972-09-15', 23),
(4, 'Museu de arte popular', 'Rua D, 789 - Bairro D, Cidade D', '1985-01-30', 35),
(5, 'Museu de arte sacra', 'Rua E, 111 - Bairro E, Cidade E', '1950-11-20', 28);

--visualizar
SELECT * FROM museu
ORDER BY id_museu
--fim entidade museu
-----------------------------------------------------------------------
--criando entidade fundador
CREATE TABLE fundador(
	id_fundador_museu SERIAL PRIMARY KEY,
	id_museu INT NOT NULL REFERENCES museu,
	nome_fundador VARCHAR(50) NOT NULL,
	data_nascimento DATE NOT NULL,
	data_morte DATE,
	nacionalidade VARCHAR(50) NOT NULL,
	atividade_profissional VARCHAR(50) NOT NULL
);
--inserindo valores aos campos
INSERT INTO fundador (id_fundador_museu, id_museu, nome_fundador, data_nascimento, data_morte, nacionalidade, atividade_profissional) VALUES
(1, 1, 'Antonio Jatokon Alzheimer', '1899-07-30', '1972-11-05', 'Alemão', 'Historiador'),
(2, 2, 'Maria da Silva', '1923-01-12', '2005-04-17', 'Brasileiro', 'Advogada'),
(3, 3, 'João Pereira', '1980-08-20', '2021-11-23', 'Português', 'Engenheiro'),
(4, 4, 'Ana Carolina Oliveira', '1932-06-08', '2019-12-01', 'Brasileira', 'Professora'),
(5, 5, 'Pedro Rodrigues', '1901-02-28', '1951-07-25', 'Espanhol', 'Médico'),
(6, 2, 'Juliana Santos', '1913-11-15', '1963-01-05', 'Brasileira', 'Psicóloga'),
(7, 3, 'Lucas Souza', '1930-09-01', '1997-02-18', 'Brasileiro', 'Político'),
(8, 1, 'Gabriela Lima', '1950-04-29', null, 'Brasileira', 'Jornalista'),
(9, 2, 'Carlos Henrique', '1945-12-12', null, 'Brasileiro', 'Arquiteto'),
(10, 5, 'Marcelo Oliveira', '1889-03-25', '1963-07-22', 'Brasileiro', 'Político');

--visualizar
SELECT * FROM fundador
ORDER BY id_fundador_museu
--fim entidade fundador	
--------------------------------------------------------------------
--Museu  
--------------------------------------------------------------------
--consulta 1
SELECT fundador.id_museu, museu.descricao_museu, COUNT(*) as quantidade_de_fundadores
FROM fundador INNER JOIN museu ON fundador.id_museu = museu.id_museu
GROUP BY fundador.id_museu, museu.descricao_museu
HAVING COUNT(*) > 1;
--consulta 2
SELECT reserva_hotel.id_hotel, hotel.nome, COUNT(*) as quantidade_de_reservas
FROM reserva_hotel INNER JOIN hotel ON reserva_hotel.id_hotel = hotel.id_hotel
GROUP BY hotel.id_hotel, reserva_hotel.id_reserva_hotel;
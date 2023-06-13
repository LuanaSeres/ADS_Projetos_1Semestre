--CRIA TABELA
CREATE TABLE TESTE (
	idTeste int primary key,
	nome varchar (50)
);

--ALTERA TABELA
ALTER TABLE TESTE
	ADD idade int,
	ADD cpf varchar(14);
	
ALTER TABLE TESTE ALTER COLUMN nome TYPE varchar(60);

--APAGA TABELA
DROP TABLE TESTE;

----------COMANDOS DML----------

--INSERE DADOS NA TABELA (necessário saber a ordem das colunas)
INSERT INTO TESTE VALUES (1, 'Luana', 18, '000.000.000-00');

--INSERE DADOS NA TABELA (informando a ordem de colunas)
INSERT INTO TESTE (idteste, nome, idade, cpf) VALUES
(2, 'Guilherme', 18, '111.111.111-11');

--INSERE DADOS NA TABELA (com colunas faltantes)
INSERT INTO TESTE (nome, idteste)
VALUES ('José', 3);

--INSERE DADOS NA TABELA (varias linhas no mesmo comando)
INSERT INTO TESTE (nome, idteste, idade, cpf) VALUES
('Luiz', 4, 25, '444.444.444-44'),
('Ana', 5, 20, '555.555.555-55');


--ATUALIZA OS VALORES DA TUPLA
UPDATE TESTE SET idade = 30 WHERE idteste = 3;


----------COMANDOS DLQ----------

--VISUALISA TODAS AS TABELAS
SELECT * FROM TESTE;

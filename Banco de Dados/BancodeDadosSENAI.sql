-- Criar Entidade Departamento
CREATE TABLE departamentos (
	idDepartamento INT PRIMARY KEY,
	siglaDepartamento VARCHAR(3) NOT NULL,
	nomeDepartamento VARCHAR(30) NOT NULL
);

-- Vizualizar a entidade departamento
SELECT * FROM departamentos;

-- Renomeie colunas
ALTER TABLE departamentos RENAME COLUMN iddepartamento TO id_departamento
ALTER TABLE departamentos RENAME COLUMN siglaDepartamento TO sigla_departamento
ALTER TABLE departamentos RENAME COLUMN nomeDepartamento TO nome_departamento


-- Criando a entidade Curso
CREATE TABLE curso (
	id_curso INT PRIMARY KEY,
	id_departamento INT REFERENCES departamentos,
	sigla_curso VARCHAR(3) NOT NULL,
	nome_curso VARCHAR(30) NOT NULL
);

-- Altera o tamanho do varchar da coluna nome
ALTER TABLE curso ALTER COLUMN nome_curso TYPE varchar(50);

-- Vizualizar a entidade curso
SELECT * FROM curso;

-- Criando a entidade Disciplina
CREATE TABLE diciplinas (
	id_disciplina INT PRIMARY KEY,
	id_curso INT REFERENCES curso,
	sigla_disciplina VARCHAR(4) NOT NULL,
	nome_disciplina VARCHAR(50),
	optativa BOOLEAN DEFAULT FALSE
);

-- Vizualizar a entidade disciplina
SELECT * FROM diciplinas;

-- Criando a entidade Aluno
CREATE TABLE alunos (
	ra INT PRIMARY KEY,
	cpf VARCHAR(14) NOT NULL UNIQUE,
	nome_aluno VARCHAR(50) NOT NULL,
	data_nascimento DATE CHECK (AGE(CURRENT_DATE,data_nascimento)>='14 years'),
	status BOOLEAN DEFAULT TRUE
);

-- Vizualizar a entidade aluno
SELECT * FROM alunos;

-- Criando a entidade disciplinas_alunos
CREATE TABLE disciplinas_alunos (
	id_disciplina_alunos INT PRIMARY KEY,
	id_disciplina INT REFERENCES diciplinas,
	ra int REFERENCES alunos,
	data_matricula DATE
);

-- Vizualizar a entidade disciplinas_alunos
SELECT * FROM disciplinas_alunos;

--------------------------DEPERTAMENTOS----------------------------------

--Aumentando o tamanho do nome das colunas
ALTER TABLE departamentos ALTER COLUMN nome_departamento TYPE varchar(50);
ALTER TABLE curso ALTER COLUMN nome_curso TYPE varchar(50);

--Povoando a tabela departamentos
INSERT INTO departamentos VALUES (1, 'CST', 'Curso Superior de Tecnologia');
INSERT INTO departamentos VALUES (2, 'CT', 'Curso Técnico');

INSERT INTO departamentos VALUES 
(3, 'CAI', 'Curso de Aprendizagem Industrial'),
(4, 'FIC', 'Formação Inicial e Continuada');

SELECT * FROM departamentos;

SELECT * FROM disciplinas_alunos
ORDER BY id_departamento;

--contagem de linhas
SELECT COUNT(*) FROM departamentos;

--conta só as linhas totalmente preenchidas (sem elementos NULL)
SELECT COUNT('any') FROM departamentos; 

---------------------CURSO----------------------------
INSERT INTO curso VALUES
(1, 1, 'ADS', 'Tecnólogo em Análise e Desenvolvimento de Sistemas'),
(2, 1, 'MEC', 'Tecnólogo em Mecatrônica'),
(3, 2, 'DEV', 'Técnico em Desenvolvimento de Sistemas'),
(4, 2, 'MEC', 'Técnico em Mecatrônica'),
(5, 3, 'EME', 'Eletricista de Manutenção Eletroeletrônica'),
(6, 3, 'MUS', 'Mecânico de Usinagem'),
(7, 3, 'ADM', 'Administração'),
(8, 4, 'CLP', 'Controladores Lógicos Programáveis'),
(9, 4, 'EXC', 'Execel'),
(10, 4, 'PBI', 'Power BI'),
(11, 4, 'ROB', 'Robótica Industrial'),
(12, 4, 'EIN', 'Eletricista Instalador'),
(13, 4, 'HDR', 'Hidráulica'),
(14, 4, 'PNE', 'Pneumática'),
(15, 4, 'FER', 'Ferramenteiro');

SELECT * FROM departamentos;

SELECT sigla_curso, nome_curso FROM curso;

SELECT COUNT(*) FROM curso;

--mostrar a tabela de departamento e seus respectivos cursos
SELECT departamentos.sigla_departamento, curso.nome_curso 
FROM curso INNER JOIN departamentos
ON departamentos.id_departamento = curso.id_departamento;

---variação1
SELECT sigla_departamento, nome_curso 
FROM curso INNER JOIN departamentos
USING (id_departamento);

---variação2
SELECT sigla_departamento, nome_curso 
FROM curso NATURAL INNER JOIN departamentos;

------quantidade de cursos em cada departamento-----
SELECT departamentos.id_departamento, COUNT(*) AS quantidade_cursos
FROM curso
JOIN departamentos ON curso.id_departamento = departamentos.id_departamento
GROUP BY departamentos.id_departamento
ORDER BY id_departamento;

--variação
SELECT id_departamento, COUNT (id_curso)
FROM curso
GROUP BY id_departamento
ORDER BY id_departamento;

--variação com nomes
SELECT sigla_departamento, COUNT(nome_curso)
FROM curso NATURAL INNER JOIN departamentos
GROUP BY sigla_departamento;
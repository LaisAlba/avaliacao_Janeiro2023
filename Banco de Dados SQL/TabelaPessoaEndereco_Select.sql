CREATE TABLE Pessoa (
   Pessoa_id INT PRIMARY KEY NOT NULL,
   Nome VARCHAR (200) NOT NULL,
   CPF VARCHAR (25) NOT NULL,
   Idade DATE ,
   Sexo CHAR (1)NOT NULL
);

CREATE TABLE Endereco (
   Endereco_id INT PRIMARY KEY NOT NULL,
   Tipo VARCHAR (10) NOT NULL,
   Logradouro VARCHAR (250) NOT NULL,
   Numero VARCHAR (10) NOT NULL,
   Complemento VARCHAR (100),
   Cep NUMERIC NOT NULL,
   Cidade VARCHAR (250) NOT NULL,
   Estado CHAR (2)NOT NULL,
   Pessoa_id INT,
   CONSTRAINT pessoa_id_ FOREIGN KEY (Pessoa_id) REFERENCES Pessoa (Pessoa_id)
);

SELECT p.pessoa_id , nome, cpf, idade, sexo, e.tipo, e.logradouro, e.numero, e.complemento, e.cep, e.cidade, e.estado  
FROM Pessoa AS p
JOIN endereco AS e 
ON p.pessoa_id = e.pessoa_id;




--1. Mostre o total de apartamentos por rua
pragma table_info('ruas');
SELECT * FROM apartamentos;

SELECT ruas.nomerua, COUNT(apartamentos.idapartamento) AS total_apartamentos
FROM apartamentos
LEFT JOIN ruas ON apartamentos.idpredio = ruas.idrua
GROUP BY ruas.nomerua;

SELECT ruas.nomerua, COUNT(apartamentos.idapartamento) AS total_apartamentos
FROM apartamentos
inner JOIN predios ON apartamentos.idpredio = predios.idpredio
INNER JOIN ruas ON predios.idrua = ruas.idrua
GROUP BY ruas.nomerua;

--2. Insira um novo morador com seus dados 
pragma table_info('moradores');
SELECT * FROM MORADORES;
INSERT INTO moradores (idmorador,nome,cpf, telefone, sexo, rendafamiliar, datanascimento, idapartamento)
VALUES ('201','Madu','15796268740', '21970206743', 'F','5.000,00', '05/12/2002' ,1);

SELECT * FROM MORADORES;
--3. Mostre a renda familiar média por prédio 
SELECT predios.idpredio, predios.nomepredio, AVG(moradores.rendafamiliar) AS renda_media
FROM moradores inner JOIN predios ON moradores.idmorador = predios.idpredio
GROUP BY predios.idpredio;

--4. Mostre o total veículos por rua 
pragma table_info('veiculos');
SELECT * FROM veiculos;

SELECT ruas.nomerua, COUNT(veiculos.idveiculo) AS total_veiculos
FROM veiculos inner JOIN apartamentos ON veiculos.idapartamento = apartamentos.idapartamento
inner JOIN predios ON apartamentos.idpredio = predios.idpredio INNER JOIN ruas ON predios.idrua = ruas.idrua GROUP BY ruas.nomerua;

--5. Mostre a média dos apartamentos que tem moradores do sexo feminino 
SELECT moradores.sexo, AVG(apartamentos.idapartamento) AS total
FROM moradores inner JOIN apartamentos ON moradores.idapartamento = apartamentos.idapartamento
WHERE moradores.sexo = 'F' GROUP BY  moradores.sexo;

--6. Edite os dados de um morador a sua escolha com seus próprios dados pessoais 
UPDATE moradores SET nome='Maria Eduarda Pereira', cpf='157.962.687-40', telefone='+55 21 97020-6743', sexo='F', rendafamiliar='10.000.00', datanascimento='2002-12-05' WHERE idmorador = 1 AND idapartamento = 1;
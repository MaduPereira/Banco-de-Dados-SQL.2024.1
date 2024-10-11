---pragma table_info ('pilotos')

--SELECT * FROM corridas

---Questão 1)
INSERT INTO pais (idpais, nome, capital, sigla, continente) values (196, 'Brasil', 'Brasília', 'BR', 'América do Sul')

---SELECT * FROM pilotos

---Questão 2)
INSERT INTO pilotos (idpilotos, nome, sigla, idpais, salario) values (25, 'Madu Pereira', 'MP', 196, 500.000.0)

---Questão 3)
UPDATE pilotos SET nome = 'Maria Eduarda Pereira' WHERE idpilotos = 25

---UPDATE pais SET nome = 'Brasil', capital = 'Brasília', sigla = 'BR', Continente = 'América do Sul' WHERE idpais = 196

---Questão 4)
DELETE FROM pilotos WHERE idpilotos = 25

---Questão 5)
SELECT DISTINCT nome FROM pais ORDER BY nome

---Questão 6)
SELECT idcorridas, nome, circuito, datacorrida, idcampeonatos, idpais FROM corridas ORDER BY datacorrida

---Questão 7)
SELECT COUNT(nome) AS totaldepaises FROM pais GROUP BY continente

---Questao 8)
SELECT COUNT(nome) AS totaldecorridas FROM corridas

---Questão 9)
SELECT AVG(salario) AS mediadossalarios FROM pilotos

---Questão 10)
SELECT COUNT(nome) AS totaldeequipes FROM equipes GROUP BY idpais

---Questão 11)
SELECT COUNT(motivo_retirada) AS totalderetiradas FROM resultados GROUP BY motivo_retirada

---Questão 12)
UPDATE pilotos SET idpais = 3  WHERE nome = 'Lewis Hamilton' AND idpilotos = 12


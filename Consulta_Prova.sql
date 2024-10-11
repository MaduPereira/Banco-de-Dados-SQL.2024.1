/*questao 1*/

SELECT pais.nome, corridas.idcorridas, corridas.circuito, corridas.datacorrida FROM pais INNER JOIN corridas ON pais.idpais = corridas.idcorridas;

/*questao 2*/

SELECT pilotos.nome, resultados.pontos FROM pilotos INNER JOIN resultados ON pilotos.idpilotos = resultados.idmembros;
SELECT pilotos.idpilotos,pilotos.nome, COUNT(resultados.pontos) AS TOTAL FROM resultados INNER JOIN pilotos ON pilotos.idpilotos = resultados.idmembros;
--SELECT idmembros, COUNT(pontos) AS TOTAL FROM resultados GROUP BY idmembros;

/*questao 3*/

--SELECT * FROM pilotos
--SELECT * FROM pais

SELECT pilotos.salario, pais.continente FROM pilotos INNER JOIN pais ON pilotos.idpilotos = pais.idpais;
SELECT pais.continente, AVG(pilotos.salario) AS MEDIA FROM pilotos INNER JOIN pais ON pilotos.idpilotos = pais.idpais;
-- SELECT pais.continente WHERE pais.continente != 'EUROPA', AVG(pilotos.salario) AS MEDIA FROM pilotos INNER JOIN pais ON pilotos.idpilotos = pais.idpais;

/*questao 4*/

SELECT equipes.nome, resultados.posicao FROM resultados INNER JOIN equipes ON resultados.idmembros = equipes.idequipes
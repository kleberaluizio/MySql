SELECT profissao, count(*) FROM gafanhotos
GROUP BY profissao
ORDER BY profissao;

SELECT sexo, count(*) FROM gafanhotos
WHERE nascimento > '2005-01-01'
GROUP BY sexo;

SELECT nacionalidade, count(*) FROM gafanhotos
WHERE nacionalidade != 'Brasil'
GROUP BY nacionalidade
HAVING count(*) > 3
ORDER BY count(*);

SELECT altura, count(*) FROM gafanhotos
WHERE peso > 100
GROUP BY altura
HAVING altura > (SELECT avg(altura) FROM gafanhotos)
ORDER BY altura;

SELECT avg(altura) FROM gafanhotos;
SELECT * FROM gafanhotos WHERE altura = 2.22;

SELECT * FROM gafanhotos;
SELECT * FROM gafanhotos;
SELECT nome, cursopreferido FROM gafanhotos;

SELECT nome, ano FROM cursos;

SELECT gafanhotos.nome,  cursos.nome, cursos.ano 
FROM gafanhotos JOIN cursos
ON cursos.idcurso = gafanhotos.cursopreferido
ORDER BY gafanhotos.nome;

SELECT g.nome,  c.nome, c.ano 
FROM gafanhotos AS g INNER JOIN cursos AS c
ON c.idcurso = g.cursopreferido
ORDER BY g.nome;

SELECT g.nome,  c.nome, c.ano 
FROM gafanhotos AS g LEFT OUTER JOIN cursos AS c
ON c.idcurso = g.cursopreferido;

CREATE TABLE gafanhoto_assiste_curso(
id int NOT NULL auto_increment,
data date,
idgafanhoto int,
idcurso int,
primary key(id),
FOREIGN KEY(idgafanhoto) REFERENCES gafanhotos(id),
FOREIGN KEY(idcurso) REFERENCES cursos(idcurso) 
)DEFAULT charset = utf8;


INSERT INTO gafanhoto_assiste_curso VALUES
(DEFAULT, '2014-03-01','1','2');

SELECT * FROM gafanhoto_assiste_curso;

SELECT * FROM gafanhotos AS g
JOIN gafanhoto_assiste_curso AS a
ON g.id = a.idgafanhoto;

SELECT g.nome, c.nome FROM gafanhotos AS g
JOIN gafanhoto_assiste_curso AS a
ON g.id = a.idgafanhoto
JOIN cursos AS c
ON a.idcurso = c.idcurso
ORDER BY g.nome
;


SELECT gsc.data, g.nome, c.nome,c.descricao,c.ano
FROM gafanhoto_assiste_curso AS gsc JOIN gafanhotos AS g JOIN cursos AS c
ON (gsc.idgafanhoto = g.id, gsc.idcurso = c.idcurso);


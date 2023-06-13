use cadastro;

DROP TABLE cursos;

CREATE TABLE IF NOT EXISTS cursos(
nome varchar(30) NOT NULL UNIQUE,
descricao text,
carga int UNSIGNED,
totaulas int UNSIGNED,
ano year DEFAULT '2016'  
)DEFAULT CHARSET = utf8;

ALTER TABLE cursos
add column idcursos int FIRST;

ALTER TABLE cursos
change column idcursos idcurso int;

select * FROM pessoas;

SELECT * FROM cursos;

INSERT INTO cursos
(idcurso, nome, descricao, carga, totaulas, ano)
VALUES
('1','HTML4','Curso de HTML5','50','37','2014'),
('2','Algoritmos','Logica de programacao','20','15','2014'),
('3','Photoshop','Dicas de Photoshop CC','10','8','2014'),
('4','PGP','Curso de PHP para iniciantes','40','20','2010'),
('5','Jarva','Introducao a linguagem Java','10','29','2000'),
('6','MySQL','Curso completo de Word','40','30','2016'),
('7','Word','Banco de dados MySQL','40','30','2016'),
('8','Sapateando','Dancas Ritmicas','40','20','2010'),
('9','Cozinha arabe','Aprenda a fazer kibe','10','29','2000'),
('10','Youtuber','Gerar polemicas e ganhar inscritos','40','30','2016');

desc cursos;
SELECT * FROM cursos;


UPDATE cursos set nome = 'HTML5' WHERE idcurso = '1';

UPDATE cursos set nome = 'PHP', ano = '2015' WHERE idcurso = '4';

UPDATE cursos set nome = 'Java', carga = '15', ano = '2015' WHERE idcurso = '5' LIMIT 1;





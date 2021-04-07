INSERT INTO tipo_evento (id, tipo_evento) VALUES
(1, 'Formal'),
(2, 'Informal');


ALTER TABLE eventos CHANGE COLUMN `nombre` `nombre` VARCHAR(1000);
ALTER TABLE eventos CHANGE COLUMN `imagen` `imagen` VARCHAR(1000);
ALTER TABLE eventos CHANGE COLUMN `descripcion` `descripcion` VARCHAR(1000);

INSERT INTO eventos
(id, id_usuario, descripcion, nombre, imagen, fecha_inicio, fecha_final, tipo_evento)
VALUES(1, 1, 'Como parte de las colaboraciones que la Universidad Tecnologica de Queretaro (a traves del Creativity and Innovation Center) desarrolla con su socio estratégico  KIT HUB, fue realizada la platica virtual ? Imagenes para consientizar.', 'Platica con alumnos sobre la situacion de la Pandemia', '13.png', '2018-11-11', '2018-11-11', 1);
INSERT INTO eventos
(id, id_usuario, descripcion, nombre, imagen, fecha_inicio, fecha_final, tipo_evento)
VALUES(2, 1, 'Mas de 200 jefes de grupo de la Universidad Tecnologica de Queretaro ? de los turnos matutino y vespertino ? se reunieron de forma virtual con autoridades de esta institucion, espacio en el que se hizo un llamado..', 'Reunion de alumnos y Profesores', 'not2.jpg', '2018-11-11', '2018-11-11', 1);
INSERT INTO eventos
(id, id_usuario, descripcion, nombre, imagen, fecha_inicio, fecha_final, tipo_evento)
VALUES(3, 1, 'De manera virtual, inicio el Diplomado en Tutoria de la UTEQ, con la participacion de 22 profesores que conforman a la cuarta generacion, quienes se capacitaran durante 6 meses con el objetivo de contar con conocimientos.', 'Diplomado en Tutoria de la UTEQ', 'not3.png', '2018-11-11', '2018-11-11', 1);
INSERT INTO eventos
(id, id_usuario, descripcion, nombre, imagen, fecha_inicio, fecha_final, tipo_evento)
VALUES(4, 1, 'reunion de rector con gobernador para definir el nuevo plan de estudios de la carrera Sistemas informaticos', 'reunion de rector con gobernador', 'reunion.jpg', '2021-04-18', '2021-04-17', 1);


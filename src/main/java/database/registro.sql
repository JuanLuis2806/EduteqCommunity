INSERT INTO `estado` (`id`, `estado`) VALUES
(1, 'Aguascalientes'),
(2, 'Baja California'),
(3, 'Baja California Sur'),
(4, 'Campeche'),
(5, 'Coahuila'),
(6, 'Colima'),
(7, 'Chiapas'),
(8, 'Chihuahua'),
(9, 'Distrito Federal'),
(10, 'Durango'),
(11, 'Guanajuato'),
(12, 'Guerrero'),
(13, 'Hidalgo'),
(14, 'Jalisco'),
(15, 'México'),
(16, 'Michoacan'),
(17, 'Morelos'),
(18, 'Nayarit'),
(19, 'Nuevo Leon'),
(20, 'Oaxaca'),
(21, 'Puebla'),
(22, 'Queretaro'),
(23, 'Quintana Roo'),
(24, 'San Luis Potosi'),
(25, 'Sinaloa'),
(26, 'Sonora'),
(27, 'Tabasco'),
(28, 'Tamaulipas'),
(29, 'Tlaxcala'),
(30, 'Veracruz'),
(31, 'Yucatan'),
(32, 'Zacatecas');

INSERT INTO carrera (id, nombre)
VALUES (1, 'Ingenieria en Tecnologias de la Informacion y la Comunicacion'),
(2, 'Ingenieria en Tecnologias de Automatizacion');

UPDATE tipo_usuario SET status = "Administrador" WHERE id = 1;
UPDATE tipo_usuario SET status = "Estudiante" WHERE id = 2

INSERT INTO usuario
(id, id_tipo_usuario, id_division, correo, matricula, contrasena)
VALUES(1, 1, 1, '2018113005@uteq.edu.mx', '2018113005', '12345678');

INSERT INTO eduteq.perfil
(id, id_usuario, nombre, apellidos, alias, pasatiempos, fecha_nacimiento, sexo, id_carrera, foto_perfil, edad, id_estado)
VALUES(1, 1, 'Juan Luis', 'Frias Garcia', 'Juan ', 'Jugar Videojuegos', '2021-01-03', 'Hombre', 1, 'images.jpeg', 23, 1);

ALTER TABLE perfil  MODIFY COLUMN id INT NOT NULL AUTO_INCREMENT;
ALTER TABLE carrera CHANGE COLUMN `nombre` `nombre` VARCHAR(400);
ALTER  TABLE perfil CHANGE COLUMN `foto_perfil` `foto_perfil` VARCHAR(500);
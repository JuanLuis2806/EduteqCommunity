
DROP TABLE IF EXISTS publicacion_usuario ;
CREATE TABLE IF NOT EXISTS `eduteq`.`publicacion_usuario` (
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `id_perfil` INT NULL,
  `id_publicacion` INT NULL,
  `comentario` VARCHAR(45) NULL,
  INDEX `fk_publicacion_usuario_1_idx` (`id_publicacion` ASC) VISIBLE,
  CONSTRAINT `fk_publicacion_usuario_1`
    FOREIGN KEY (`id_publicacion`)
    REFERENCES `eduteq`.`publicacion` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_publicacion_usuario_2`
    FOREIGN KEY (`id_perfil`)
    REFERENCES `eduteq`.`perfil` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

ALTER TABLE `eduteq`.`publicacion` 
ADD COLUMN `divicion_id` INT NULL AFTER `contenido`;
ALTER TABLE `eduteq`.`publicacion` 
ADD INDEX `fk_publicacion_1_idx` (`divicion_id` ASC) VISIBLE;

ALTER TABLE `eduteq`.`publicacion` 
ADD CONSTRAINT `fk_publicacion_1`
  FOREIGN KEY (`divicion_id`)
  REFERENCES `eduteq`.`division` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `eduteq`.`publicacion` 
ADD COLUMN `perfil_id` INT NULL AFTER `divicion_id`;
ALTER TABLE `eduteq`.`publicacion` 
ADD INDEX `fk_publicacion_2_idx` (`perfil_id` ASC) VISIBLE;

ALTER TABLE `eduteq`.`publicacion` 
ADD CONSTRAINT `fk_publicacion_2`
  FOREIGN KEY (`perfil_id`)
  REFERENCES `eduteq`.`perfil` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


ALTER TABLE publicacion_usuario CHANGE COLUMN `comentario` `comentario` VARCHAR(1000);

INSERT INTO publicacion
(id, contenido, divicion_id, perfil_id)
VALUES(1, 'Que lenguaje de programacion me recomiendan?', 4, 1);
INSERT INTO publicacion
(id, contenido, divicion_id, perfil_id)
VALUES(2, 'Como hago formulas en excel?', 1, 1);
INSERT INTO publicacion
(id, contenido, divicion_id, perfil_id)
VALUES(3, 'Alguien tiene pet que me regale?', 3, 1);
INSERT INTO publicacion
(id, contenido, divicion_id, perfil_id)
VALUES(4, 'what is the difference between Can and Could?', 5, 1);
INSERT INTO publicacion
(id, contenido, divicion_id, perfil_id)
VALUES(5, 'alguien sabe ventajas de circuitos integrados?', 2, 1);
INSERT INTO publicacion
(id, contenido, divicion_id, perfil_id)
VALUES(6, 'Alguien renta habitaciones?', NULL, 1);

INSERT INTO publicacion_usuario
(id, id_perfil, id_publicacion, comentario)
VALUES(1, 5, 1, 'Te recomiendo Phyton!');
INSERT INTO publicacion_usuario
(id, id_perfil, id_publicacion, comentario)
VALUES(2, 6, 1, 'Te recomiendo el uso de Javascript!');
INSERT INTO publicacion_usuario
(id, id_perfil, id_publicacion, comentario)
VALUES(3, 5, 2, 'En la hoja de calculo, haga clic en la celda en que desea introducir la formula.');
INSERT INTO publicacion_usuario
(id, id_perfil, id_publicacion, comentario)
VALUES(4, 6, 2, 'Escriba = (signo igual) seguido de las constantes y los operadores (hasta 8192 caracteres) que quiera usar en el calculo.');
INSERT INTO publicacion_usuario
(id, id_perfil, id_publicacion, comentario)
VALUES(5, 5, 3, 'Yo tengo, mucho solo paseme tu numero!');
INSERT INTO publicacion_usuario
(id, id_perfil, id_publicacion, comentario)
VALUES(6, 6, 3, 'To tambien, te paso mi numero es 4421334455');
INSERT INTO publicacion_usuario
(id, id_perfil, id_publicacion, comentario)
VALUES(7, 5, 4, 'Can means be able to or permitted to do something.');
INSERT INTO publicacion_usuario
(id, id_perfil, id_publicacion, comentario)
VALUES(8, 6, 4, 'Could refers to the possibility or the ability to do something.');
INSERT INTO publicacion_usuario
(id, id_perfil, id_publicacion, comentario)
VALUES(9, 5, 5, 'Incorporar varias funciones en un mismo componente.');
INSERT INTO publicacion_usuario
(id, id_perfil, id_publicacion, comentario)
VALUES(10, 6, 5, 'Reducir la gran cantidad de componentes electronicos.');
INSERT INTO publicacion_usuario
(id, id_perfil, id_publicacion, comentario)
VALUES(11, 5, 6, 'Yo conozco un lugar cerca de pie de la cuestas pasame tu numero');
INSERT INTO publicacion_usuario
(id, id_perfil, id_publicacion, comentario)
VALUES(12, 6, 6, 'Yo tengi una disponible, psame tu numero');

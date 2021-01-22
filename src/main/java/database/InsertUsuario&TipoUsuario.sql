
ALTER TABLE `division`CHANGE COLUMN `nombre` `nombre` VARCHAR(400) NULL DEFAULT NULL COLLATE 'utf8mb4_0900_ai_ci' AFTER `id`;

INSERT INTO TIPO_USUARIO (id, tipo_usuario,status) VALUES(1,1,"Activo");

INSERT INTO TIPO_USUARIO (id, tipo_usuario,status) VALUES(2,2,"Inactivo");

INSERT INTO DIVISION (ID,nombre) VALUES (1,"Division Economica Administrativa");

 INSERT INTO DIVISION (ID,nombre) VALUES (2,"Division Industrial (DI)");

INSERT INTO DIVISION (ID,nombre) VALUES (3,"Division Ambiental (DA)");

INSERT INTO DIVISION (ID,nombre) VALUES (4,"Division de Tecnologias de la Informacion de la Automatizacion e Informacion (DTAI)");
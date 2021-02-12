ALTER TABLE carrera ADD id_division INT NULL;
ALTER TABLE carrera ADD FOREIGN KEY(id_division) REFERENCES division(id);
INSERT INTO division
(nombre)
VALUES
('Division de Idiomas');
INSERT INTO carrera ( nombre, id_division)
VALUES
('TSU en Mecatronica', 4),
('TSU en Tecnologias de Informacion y Comunicacion Area Sistemas Informaticos', 4),
('TSU en Tecnologias de Informacion y Comunicacion Area Redes y Telecomunicaciones', 4),
('Licenciatura en Gestion del Capital Humano', 1),
('Licenciatura en Innovacion de Negocios y Mercadotecnia', 1),
('Licenciatura en Diseño y Gestion de Redes Logísticas', 1),
('TSU en Administracion Area Capital Humano', 1),
('TSU en Desarrollo de Negocios Area Servicios Posventa Automotriz Area Mercadotecnia', 1),
('TSU en Logistica Area Cadena de Suministros', 1),
('TSU en Mantenimiento Area Industrial', 2),
('TSU en Nanotecnologia Area Materiales', 2),
('TSU en Procesos Industriales Area Manufactura Area Plasticos', 2),
('TSU en Mecanica Area Automotriz Area Moldes y Troqueles', 2),
('Ingenieria en Mantenimiento Industrial', 2),
('Ingenieria en Nanotecnologia', 2),
('Ingenieria Industrial', 2),
('Ingenieria Metal Mecanica', 2),
('TSU en Quimica Area Tecnologia Ambiental', 3),
('SU en Energias Renovables Area Energia Solar Area Calidad y Ahorro de Energia', 3),
('Ingenieria Ambiental', 3),
('Ingenieria en Energias Renovables', 3),
('TSU en Ensenanza de la Lengua Inglesa.', 5);
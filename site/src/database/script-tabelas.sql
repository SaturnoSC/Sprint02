CREATE DATABASE Capulus;

USE Capulus;

create table Usuario (
    idUsuario int primary key auto_increment,
    Nome varchar(45),
    Email varchar(45),
    senha varchar(45)
);

create table Plantacao (
    idPlantacao int primary key auto_increment,
    Nome varchar(45),
    Metragem int,
    Tipo varchar(45),
    CNPJ char(14),
    fkUsuario int,
    foreign key (fkUsuario) references Usuario(idUsuario)
);

create table Setor (
    idSetor int primary key,
    fkPlantacao int,
    foreign key (fkPlantacao) references Plantacao(idPlantacao),
    Nome varchar (45)
);

create table Medida (
    idMedida int primary key auto_increment,
    DHT11_Temperatura decimal(4, 2),
    DHT11_Umidade decimal(4, 2),
    DataHora datetime,
    fkSetor int,
    foreign key (fkSetor) references Setor(idSetor),
    fkSetor_Plantacao int,
    foreign key (fkSetor_Plantacao) references setor(fkPlantacao)
);

-- INSERT INTO Usuario
-- VALUES (
--         null,
--         'Julio',
--         'Silva',
--         'juliosilva@gamil.com',
--         '11-95850-1205',
--         '35645801280',
--         '9444518000104',
--         '1989-05-10'
--     ),
--     (
--         null,
--         'Rosana',
--         'Garcia',
--         'rosana.g.arcia@outlook.com',
--        '11-97789-0626',
--        '45805498889',
--         '14240469000102',
--         '1984-11-25'
--     );
-- INSERT INTO Plantacao
-- VALUES (
-- 			1, 1, 'Recanto do Aroma', 5000, 'Arábica'
-- 		  ),
--        (
-- 			2, 2, 'Plantação Café Zé', 1000, 'Robusta'
--        );
-- INSERT INTO Setor
-- VALUES (
-- 			1, 'Setor1', 1
-- 	      ),
--        (
-- 			2, 'Quadra14', 2
-- 		   );
-- INSERT INTO Sensor
-- VALUES (
--         1,
--         'A-01',
--         '19',
--         '55',
--         '2022-10-19 09:50:17',
--         1,
--         1
--     ),
--     (
--         2,
--         'A-02',
--         '23',
--         '37',
--         '2022-10-19 10:18:39',
--         1,
--        1
--     );
SELECT *
FROM Usuario;
SELECT *
FROM Plantacao;
SELECT *
FROM Setor;
SELECT *
FROM Medida;
SELECT *
FROM Usuario
    JOIN Plantacao ON idUsuario = fkUsuario;
select * from plantacao join setor on idPlantacao = fkPlantacao;
select * from setor join medida on idSetor = fkSetor;
select * from usuario join Plantacao on idUsuario = fkUsuario join setor on idPlantacao = fkPlantacao join medida on idSetor = fkSetor;
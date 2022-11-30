CREATE DATABASE Capulus;

USE Capulus;

create table Cliente (
    idCliente int primary key auto_increment,
    Nome varchar(45),
    Sobrenome varchar(45),
    Email varchar(45),
    Telefone varchar(13),
    CPF char(11),
    CNPJ char(14),
    dtNascimento date
);

create table endereco_cliente (
    fkCliente int,
    foreign key (fkCliente) references Cliente(idCliente),
    fkEndereco int,
    foreign key (fkEndereco) references endereco(idEndereco),
    id int,
    primary key (id, fkEndereco, fkCliente)
);

create table Endereco (
    idEndereco int primary key,
    CEP char(8),
    Logradouro varchar(45),
    Numero varchar(5),
    Complemento varchar(5),
    Bairro varchar(45),
    Cidade varchar(45),
    Estado varchar(45)
);

create table Plantacao (
    idPlantacao int primary key,
    fkCliente int,
    foreign key (fkCliente) references Cliente(idCliente),
    Nome varchar(45),
    Metragem int,
    Tipo varchar(45)
);

create table Setor (
    idSetor int primary key,
    Nome varchar (45),
    fkPlantacao int,
    foreign key (fkPlantacao) references Plantacao(idPlantacao)
);

create table Sensor (
    idSensor int primary key,
    Nome varchar(45),
    Temperatura decimal(4, 2),
    Umidade decimal(4, 2),
    DataHora datetime,
    fkSetor int,
    foreign key (fkSetor) references Setor(idSetor),
    setor_fkPlantacao int,
    foreign key (setor_fkPlantacao) references setor(fkPlantacao)
);

INSERT INTO Cliente
VALUES (
        null,
        'Julio',
        'Silva',
        'juliosilva@gamil.com',
        '11-95850-1205',
        '35645801280',
        '9444518000104',
        '1989-05-10'
    ),
    (
        null,
        'Rosana',
        'Garcia',
        'rosana.g.arcia@outlook.com',
        '11-97789-0626',
        '45805498889',
        '14240469000102',
        '1984-11-25'
    );
INSERT INTO Endereco
VALUES (
        1,
        '13232131',
        'Avenida',
        '859',
        'casa',
        'Jardim Boa Vista',
        'Campinas',
        'São Paulo'
    ),
    (
        2,
        '02992100',
        'Rua',
        '5702',
        'casa',
        'Jardim Luz',
        'Embuguaçu',
        'São Paulo'
    );
insert into endereco_cliente
values (1, 1, 1),
    (2, 1, 2);
INSERT INTO Plantacao
VALUES (1, 1, 'Recanto do Aroma', 5000, 'Arábica'),
    (2, 2, 'Plantação Café Zé', 1000, 'Robusta');
INSERT INTO Setor
VALUES (1, 'Setor1', 1),
    (2, 'Quadra14', 2);
INSERT INTO Sensor
VALUES (
        1,
        'A-01',
        '19',
        '55',
        '2022-10-19 09:50:17',
        1,
        1
    ),
    (
        2,
        'A-02',
        '23',
        '37',
        '2022-10-19 10:18:39',
        1,
        1
    );
SELECT *
FROM Cliente;
SELECT *
FROM Endereco;
SELECT *
FROM Plantacao;
SELECT *
FROM Sensor;
SELECT *
FROM Setor;
SELECT *
FROM Cliente
    JOIN Plantacao ON (idCliente) = fkCliente;
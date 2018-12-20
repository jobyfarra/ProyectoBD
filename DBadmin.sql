
create database if not exists dbadmin;

use dbadmin;

CREATE TABLE IF NOT EXISTS usuarios(
	idUsuario int(10) auto_increment primary key,
	usuario varchar(16) not null,
	pass varchar(16) not null
);

create table if not exists base_de_datos(
	IdDatabase int(10) auto_increment primary key,
	nombreEmpresa varchar(50) not null,
    ruc int not null,
    nombre_Database varchar(50) unique not null,
    pass varchar(16) not null
);

create table if not exists accesos(
	idAcceso int auto_increment primary key,
    idUsuario int(10),
    IdDatabase int(10),
    CONSTRAINT FK_usuario_database  FOREIGN KEY (idUsuario)
    references usuarios(idUsuario),
    CONSTRAINT FK_empresa_database  FOREIGN KEY (IdDatabase)
    references base_de_datos(IdDatabase)
); 
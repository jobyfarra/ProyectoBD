create database if not exists pokedex;
use pokedex;
create table if not exists entrenador(
	id int auto_increment primary key,
    nombre varchar(20) ,
	nickname varchar(20),
	categoria varchar(30)
);

create table if not exists pokemon(
	id int auto_increment primary key,
    nombre varchar(20),
    tipo1 varchar(15),
    tipo2 varchar(15),
    EntrenadorId  int,
    foreign Key (EntrenadorId) references entrenador(id) 
);
 
insert into entrenador(nombre,nickname,categoria) values ('Joby','MrFires','Challenger');
insert into entrenador(nombre,nickname,categoria) values('Itathy','mrsproblem','Master');
insert into entrenador(nombre,nickname,categoria) values('Kristy','kecc96','Challenger');
insert into pokemon (nombre,tipo1,tipo2,EntrenadorId)values('Pikachu','Electrico','Normal',1);
insert into pokemon (nombre,tipo1,tipo2,EntrenadorId)values('Charmander','Fuego','Normal',2);
insert into pokemon (nombre,tipo1,tipo2,EntrenadorId)values('Bulbasor','Agua','Normal',1);
insert into pokemon (nombre,tipo1,tipo2,EntrenadorId)values('Jiggypluf','Hada','Normal',3);
insert into pokemon (nombre,tipo1,tipo2,EntrenadorId)values('Psyduck','Siniestro','Normal',2);

select * from entrenador;
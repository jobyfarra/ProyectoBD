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
 


select * from entrenador;
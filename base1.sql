create database contabilidadfarra;
use  contabilidadfarra;

create table usuario (
usernickname varchar(30),
usernombres  varchar(50),
usarclave    varchar(20),
usertipo     varchar (20),
primary key (usernickname)
);

create table  provincia  (
pvcodigo  varchar(2),
pvnombre  varchar(50),
pvestado  varchar(10),
primary key (pvcodigo)
);

create table paises (
pcodigo   varchar(10),
pnombre   varchar(50),
pestado   varchar(20),
primary key (pcodigo)
);


create table empresas (
cpcodigo       varchar(10),
cpnombre       varchar(50),
cpruc          varchar(13),
cpprovinciaid varchar(2),
cpcanton       varchar(50),
cpciudad       varchar(30),
cpdireccion    varchar(200),
cpestado       varchar(10),
cppais         varchar(10),
cpparroquia    varchar(30),
cpusuario      varchar(30),
cptelefono     integer,
primary key (cpcodigo), 
foreign key (cpprovinciaid)
references provincia (pvcodigo),
foreign key (cppais)
references paises (pcodigo),
foreign key (cpusuario)
references usuario (usernickname)
);
 

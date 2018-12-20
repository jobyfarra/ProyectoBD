create database contabilidadfarra;
use  contabilidadfarra;

create table usuario (
user_id int auto_increment,
user_nickname varchar(30),
user_nombres  varchar(50),
usar_clave    varchar(20),
user_tipo     varchar (20),
primary key (user_nickname)
);

create table  provincia  (
pv_codigo  varchar(2),
pv_nombre  varchar(50),
pv_estado  varchar(10),
primary key (pv_codigo)
);

create table pais (
p_codigo   varchar(10),
p_nombre   varchar(50),
p_estado   varchar(20),
primary key (p_codigo)
);


create table empresas (
cp_codigo       varchar(10),
cp_nombre       varchar(50),
cp_ruc          varchar(13),
cp_provincia_id varchar(2),
cp_canton       varchar(50),
cp_ciudad       varchar(30),
cp_direccion    varchar(200),
cp_estado       varchar(10),
cp_pais         varchar(10),
cp_parroquia    varchar(30),
cp_usuario      varchar(30),
cp_telefono     integer,
primary key (cp_codigo), 
foreign key (cp_provincia_id)
references provincia (pv_codigo),
foreign key (cp_pais)
references pais (p_codigo),
foreign key (cp_usuario)
references usuario (user_nickname)
);
 

create database farra;
use farra;

create table sucursales(
sucodigo varchar(50),
sunombre  varchar(100),
suestado varchar(50),
suempresa varchar(10),
primary key (sucodigo)
);

create table empleados (
emcodigo  varchar(20),
emcompania varchar(10),
emcedula  varchar (10),
emruc   varchar(13),
emestadocivil varchar(20),
emnossocial varchar(100),
emlibretamilitar varchar(50),
emsexo varchar(10),
emtipodesangre varchar(10),
emsucursal varchar(50),
emdepartamento varchar(100),
emcargosector varchar(100),
emniveleducacion varchar(100),
emfechadenacimiento date,
emfechasalidane date,
emnacionalidad varchar(100),
emprovincia varchar(2),
emdireccion varchar(500),
emtelefono varchar (10),
primary key (emcodigo)
);

create table facturas(
fidfactura  varchar(10),
ffecha date,
fcliente varchar(30),
fperiodo varchar(10),
fhora time,
fasiento varchar(10),
fnoasiento  varchar(10),
fbase  varchar(10),
fbaseiva  varchar(10),
fiva varchar(10),
fsubtotal varchar(10),
fpropina varchar(10),
fservicios varchar(10),
ftotal varchar(10),
fcuenta varchar(10),
fretencion varchar(10),
fsucursal varchar(3),
fptoemision varchar(3),
fnofactura varchar(10),
primary key (fidfactura)
);

create table notadecredito(
ncnuemro          varchar(10),
ncid_cuenta       varchar(10),
ncmotivo          varchar(100),
ncbeneficio       varchar(60),
ncobservaciones   text,
ncvalor           varchar(10),
ncfecha           date,
nchora            time,
primary key (ncnumero)
);

create table nota_de_debito(
ndnumero          varchar(10),
ndidcuenta       varchar(10),
ndmotivo          varchar(100),
ndbeneficio       varchar(60),
ndobservaciones   text,
ndvalor           varchar(10),
ndfecha           date,
ndhora            time,
primary key (ndnumero)
);

create table retenciones (
rcodigo           varchar(10),
rdescripcion      text,
rporcentaje       varchar(10),
rtipo             varchar(10),
rcuenta           varchar(10),
rcodigoSRI       varchar(10),
primary key (rcodigo)
);


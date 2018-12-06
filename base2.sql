create database farra;
use farra;

create table sucursales(
su_codigo varchar(50),
su_nombre  varchar(100),
su_estado varchar(50),
su_empresa varchar(10),
primary key (su_codigo)
);

create table empleados (
em_codigo  varchar(20),
em_compania varchar(10),
em_cedula  varchar (10),
em_ruc   varchar(13),
em_estado_civil varchar(20),
em_no_s_social varchar(100),
em_libreta_militar varchar(50),
em_sexo varchar(10),
em_tipo_de_sangre varchar(10),
em_sucursal varchar(50),
em_departamento varchar(100),
em_cargo_sector varchar(100),
em_nivel_educacion varchar(100),
em_fecha_de_nacimiento date,
em_fecha_salida_ne date,
em_nacionalidad varchar(100),
em_provincia varchar(2),
em_direccion varchar(500),
em_telefono varchar (10),
primary key (em_codigo)
);

create table facturas(
f_idfactura   varhcar (10),
f_fecha date,
f_cliente varhcar(30),
f_periodo varchar(10),
f_hora time,
f_asiento varhcar(10),
f_no_asiento  varchar (10),
f_base  varchar(10),
f_base_iva  varchar(10),
f_iva varchar(10),
f_subtotal varchar(10),
f_propina varchar(10),
f_servicios varchar(10),
f_total varchar(10),
f_cuenta varchar(10),
f_retencion varchar(10),
f_sucursal varchar(3),
f_pto_emision varchar(3),
f_no_factura varchar(10),
primary key (f_idfactura)
);

create table nota_de_credito(
nc_nuemro          varchar(10),
nc_id_cuenta       varchar(10),
nc_motivo          varchar(100),
nc_beneficio       varchar(60),
nc_observaciones   text,
nc_valor           varchar(10),
nc_fecha           date,
nc_hora            time,
primary key (nc_numero)
);

create table nota_de_debito(
nd_nuemro          varchar(10),
nd_id_cuenta       varchar(10),
nd_motivo          varchar(100),
nd_beneficio       varchar(60),
nd_observaciones   text,
nd_valor           varchar(10),
nd_fecha           date,
nd_hora            time,
primary key (nd_numero)
);

create table retenciones (
r_codigo           varchar(10),
r_descripcion      text,
r_porcentaje       varchar(10),
r_tipo             varchar(10),
r_cuenta           varchar(10),
r_codigo_SRI       varchar(10),
primary key (r_codigo)
);


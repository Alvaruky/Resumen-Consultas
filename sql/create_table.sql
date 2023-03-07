create table alumnos(
   dni char(9) constraint alumnos_pk primary key,
   nombre varchar(50) constraint alumnos_nn1 not null,
   apellido1 varchar(50) constraint alumnos_nn2 not null,
   apellido2 varchar(50) constraint alumnos_nn3 not null,
   direccion varchar(50),
   telefono char(9),
   edad number(2),
   cif char(9) constraint alumnos_fk references empresas
          on delete set null
);
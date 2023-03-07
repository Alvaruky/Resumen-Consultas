# <h1 align="center"><strong>RESUMEN CONSULTAS</strong></h1>

## <h2 align="center"><strong>CONSULTA <em>CREATE TABLE</em></strong></h2>

<p align="justify">
    Phasellus pharetra, nulla tristique vulputate mattis, nisi felis suscipit libero, sit amet tincidunt nisi libero viverra magna. In at eros in nunc pulvinar convallis ultricies vel risus. Aenean eu mi augue. Nam congue consequat ante, quis fringilla nunc luctus a. Proin a aliquet nisi. Praesent accumsan pharetra consectetur. Donec imperdiet ante nec aliquam porttitor. Etiam felis dui, cursus tincidunt mollis dignissim, porta sed diam. Ut in libero vel mi maximus rhoncus sed eget sapien. Nam ac nisl purus. Aenean molestie euismod nunc, sed fringilla turpis auctor nec. Suspendisse faucibus ligula sed magna facilisis ornare.
</p>

```
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
  ```

## <h2 align="center"><strong>CONSULTA <em>INSERT INTO</em></strong></h2>

<p align="justify">
    Vestibulum vitae lorem elementum, commodo risus quis, posuere arcu. Suspendisse imperdiet est at erat elementum, vitae laoreet erat consequat. Quisque hendrerit, erat nec porta scelerisque, risus neque tristique lorem, eu molestie mi magna sit amet tortor. Maecenas eget sodales dui. Nullam dapibus, augue vel varius gravida, nunc felis iaculis mi, vel vehicula libero sem quis velit. Ut magna erat, iaculis vitae ligula porta, laoreet faucibus magna. Aliquam erat volutpat. Aenean vel massa accumsan sem iaculis elementum et eget mi. Cras dictum sem mi, in mollis neque placerat non. Fusce ac orci ac nunc tristique tristique iaculis in lectus. In volutpat sollicitudin quam vel sagittis.
</p>

```
INSERT INTO TIPOS_CURSO (COD_CURSO, TITULO, DURACION, TEMARIO, MATERIAS) VALUES ('INFOR031', 'Linux II', 90, null, null);  
INSERT INTO TIPOS_CURSO (COD_CURSO, TITULO, DURACION, TEMARIO, MATERIAS) VALUES ('MECAN011', 'Soldadura', 200, null, null);  
INSERT INTO TIPOS_CURSO (COD_CURSO, TITULO, DURACION, TEMARIO, MATERIAS) VALUES ('OFICG001', 'Mecanografía', 30, null, null);  
INSERT INTO TIPOS_CURSO (COD_CURSO, TITULO, DURACION, TEMARIO, MATERIAS) VALUES ('SGBDR010', 'Introducción a Oracle', 90, null, null);  
INSERT INTO TIPOS_CURSO (COD_CURSO, TITULO, DURACION, TEMARIO, MATERIAS) VALUES ('SGBDR011', 'Programación PL/SQL', 110, null, null);  
);    
  ```

## <h2 align="center"><strong>CONSULTA <em>SELECT JOIN</em></strong></h2>

<p align="justify">
    Sed tempor tempus dignissim. Aenean facilisis arcu mollis lorem ullamcorper ornare. Nunc quam velit, egestas et leo sed, dictum feugiat metus. Nunc id tellus vel lectus mattis imperdiet vitae vitae ante. Nunc at turpis metus. Phasellus feugiat ipsum id nunc commodo eleifend. Donec facilisis vitae augue in sollicitudin. Curabitur a lectus dolor.
</p>

```
SELECT NOMBRE, LOCALIDAD, TIPO, MODELO, PRECIO_COMPRA  
FROM EMPRESAS  
JOIN SUMINISTROS S USING(CIF)  
JOIN PIEZAS W USING(MODELO,TIPO);  
  ```

## <h2 align="center"><strong>CONSULTA <em>SELECT WHERE</em></strong></h2>

<p align="justify">
    Cras congue velit viverra ultricies elementum. Duis vel lacus id libero vulputate vehicula eu a ligula. Nam interdum dolor id tellus sodales, in pretium nunc vestibulum. Pellentesque vel feugiat leo. Sed et tincidunt leo, at sagittis urna. Nam vel tellus metus. Aliquam aliquet, sapien eu posuere laoreet, massa lacus pharetra tellus, non varius neque urna eget ipsum. Aliquam sed pharetra dolor. Fusce rhoncus massa quis sapien aliquam, sed elementum diam faucibus. Donec convallis risus quis est varius vulputate. Vestibulum quis erat tempus, efficitur dolor eu, facilisis erat. Maecenas ultrices vulputate arcu, sit amet viverra augue volutpat ac. Proin a egestas quam. Praesent a erat eget nunc aliquam bibendum id at orci.
</p>

```
SELECT nombre,apellido1,apellido2,telefono  
FROM alumnos  
WHERE INSTR(telefono,'5',1,2)>0;  
  ```

## <h2 align="center"><strong>LICENCIAS</strong></h2>

<p align="center">
    <img src="https://github.com/Alvaruky/Resumen-Consultas/blob/main/assets/img/descarga.png" alt="Oracle-Academy" height="25%" width="25%">
</p>

<p align="center">
    <img src="https://github.com/Alvaruky/Resumen-Consultas/blob/main/assets/img/NetworkingAcademy_360px_72_RGB.png" alt="Cisco-Networking-Academy" height="7%" width="7%">
</p>

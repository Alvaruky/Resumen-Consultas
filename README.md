<p align="left">
    <a href="https://www.centrodonbosco.es/" target="blank">
    <img src="https://github.com/Alvaruky/Resumen-Consultas/blob/main/assets/img/PieDePagina-removebg-preview%20(1).png" alt="Cabecera-Salesianos"
    height="80px" width="400px">
    </a>
</p>

# <h1 align="center"><strong>RESUMEN CONSULTAS</strong></h1>

## <h2 align="center"><strong>CONSULTA <em>CREATE TABLE</em></strong></h2>

<p align="justify">
  El código que puedes observar en pantalla se utiliza para crear una tabla con el nombre de “alumnos” en una base de datos que tenemos en clase. La tabla “alumnos” contiene toda la información sobre los estudiantes del ficticio centro donde también se incluirán el DNI, nombre y apellidos, dirección y teléfono, la edad y el CIF de la empresa a la que el alumno este asociado.
</p>

<p align="justify">
  El primer campo que tenemos es el campo que hace referencia al campo del “DNI” el cual hemos definido con un carácter de (char) lo que eso significa es que tiene una longitud máxima de 9 caracteres. A parte de lo anterior este campo se define como una clave primaria (primary key) de la tabla, por lo cual cada valor que nos permitirá escribir será un valor único en toda la tabla, esto nos sirve para identificar un valor único en la tabla.
<p>

```
   dni char(9) constraint alumnos_pk primary key;  
```

<p align="justify">
  El segundo campo llamado “nombre”, se declara como una cadena de caracteres como el anterior (varchar) solo que ahora la longitud máxima cambia ligeramente a 50 caracteres, a parte de esto este campo se define como no nulo (not null), con lo que este campo es obligatorio siempre que se haga un registro en la base de datos.
</p>

```
nombre varchar(50) constraint alumnos_nn1 not null;
```

<p align="justify">
  El tercer y cuarto campo podemos observar que hacen referencia a los apellidos, al “apellido1” y al “apellido2”, estos campos, como los anteriores ya mencionados son declarados como cadenas de caracteres con una longitud máxima de 50 caracteres y también se definen como no nulos.
</p>

```
apellido1 varchar(50) constraint alumnos_nn2 not null,  
apellido2 varchar(50) constraint alumnos_nn3 not null;
```

<p align="justify">
  Hola mundo.
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

## <h2 align="left"><strong>LICENCIAS</strong></h2>

<p align="left">
    <a href="https://www.netacad.com/" target="blank">
    <img src="https://github.com/Alvaruky/Resumen-Consultas/blob/main/assets/img/NetworkingAcademy_360px_72_RGB.png" alt="Cisco-Networking-Academy" height="50px" width="50px">
    </a>
    <a href="https://academy.oracle.com/es/" target="blank">
    <img src="https://github.com/Alvaruky/Resumen-Consultas/blob/main/assets/img/descarga.png" alt="Oracle-Academy" height="34%" width="34%">
  </a>
</p>

### <h3 align="left"><strong>👇¡RRSS DonBosco!</strong></h3>

<a href="https://www.instagram.com/salesianosvillamuriel/?hl=es" target="blank" style='margin-right:4px'>
  <img align="center" src="https://cdn.jsdelivr.net/npm/simple-icons@3.13.0/icons/instagram.svg" alt="donbosco" height="28px" width="28px" />
</a>

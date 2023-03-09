<p align="left">
    <a href="https://www.centrodonbosco.es/" target="blank">
    <img src="https://github.com/Alvaruky/Resumen-Consultas/blob/main/assets/img/PieDePagina-removebg-preview%20(1).png" alt="Cabecera-Salesianos"
    height="80px" width="400px">
    </a>
</p>

# <h1 align="center"><strong>RESUMEN CONSULTAS</strong></h1>

## <h2 align="left"><strong>RESUMEN</strong></h2>

<p align="justify">
  SQL (Structured Query Language) es un lenguaje de programaci&oacute;n utilizado para administrar y manipular datos en bases de datos relacionales. Se utiliza para realizar consultas, actualizaciones y eliminaciones de datos, as&iacute; como para crear y modificar la estructura de las bases de datos.
</p>

<p align="justify">
  Las consultas SQL son instrucciones que se utilizan para recuperar datos espec&iacute;ficos de una base de datos. Hay varios tipos de consultas b&aacute;sicas y avanzadas que se pueden utilizar en SQL:
</p>

#### <h4 align="left"><strong>CONSULTAS B&Aacute;SICAS</strong></h4>

* <strong>SELECT:</strong> esta consulta se utiliza para seleccionar datos espec&iacute;ficos de una tabla o varias tablas. La sintaxis b&aacute;sica de SELECT es: <code> SELECT columnas FROM tabla.</code>
* <strong>WHERE:</strong> esta consulta se utiliza para filtrar los datos seg&uacute;n una condici&oacute;n espec&iacute;fica. La sintaxis b&aacute;sica de WHERE es: <code>WHERE condición.</code>
* <strong>ORDER BY:</strong> esta consulta se utiliza para ordenar los resultados en orden ascendente o descendente seg&uacute;n una o varias columnas. La sintaxis b&aacute;sica de ORDER BY es: <code>ORDER BY columnas ASC/DESC.</code>

#### <h4 align="left"><strong>CONSULTAS AVANZADAS</strong></h4>

* <strong>JOIN:</strong> esta consulta se utiliza para combinar datos de dos o m&aacute;s tablas. Hay varios tipos de JOIN, incluyendo <code>INNER JOIN, LEFT JOIN, RIGHT JOIN y FULL OUTER JOIN.</code>
* <strong>GROUP BY:</strong> esta consulta se utiliza para agrupar los datos seg&uacute;n una o varias columnas y realizar operaciones de agregaci&oacute;n en los grupos resultantes, como <em>SUM, AVG</em> o <em>COUNT</em>. La sintaxis básica de GROUP BY es: <code>GROUP BY columnas.</code>
* <strong>HAVING:</strong> esta consulta se utiliza para filtrar los grupos resultantes de la consulta GROUP BY seg&uacute;n una condici&oacute;n espec&iacute;fica. La sintaxis b&aacute;sica de HAVING es: <code>HAVING condición.</code>
* <strong>UNION:</strong> esta consulta se utiliza para combinar los resultados de dos o m&aacute;s consultas SELECT en una sola tabla. La sintaxis básica de UNION es: <code>SELECT columnas FROM tabla1 UNION SELECT columnas FROM tabla2.</code>

<p align="justify">
  En resumen, SQL es un lenguaje de programaci&oacute;n utilizado para administrar y manipular datos en bases de datos relacionales. Las consultas SQL se utilizan para recuperar datos espec&iacute;ficos de una base de datos, y hay varios tipos de consultas b&aacute;sicas y avanzadas que se pueden utilizar. Las consultas b&aacute;sicas incluyen <em>SELECT, WHERE</em> y <em>ORDER BY</em>, mientras que las consultas avanzadas incluyen <em>JOIN, GROUP BY, HAVING</em> y <em>UNION.</em>
</p>

## <h2 align="left"><strong>CONSULTA <em>CREATE TABLE</em></strong></h2>

```sql
create table alumnos(
   dni char(9) constraint alumnos_pk primary key,  
   nombre varchar(50) constraint alumnos_nn1 not null,  
   apellido1 varchar(50) constraint alumnos_nn2 not null,  
   apellido2 varchar(50) constraint alumnos_nn3 not null,  
   direccion varchar(50),  
   telefono char(9),  
   edad number(2),  
   cif char(9) constraint alumnos_fk references empresas  
          on delete set null);  
```

<p align="justify">
  El c&oacute;digo que puedes observar en pantalla se utiliza para crear una tabla con el nombre de <em>“alumnos”</em> en una base de datos que tenemos en clase. La tabla <em>“alumnos”</em> contiene toda la informaci&oacute;n sobre los estudiantes del ficticio centro donde tambi&eacute;n se incluir&aacute;n el <em>DNI, nombre y apellidos, dirección y teléfono, la edad y el CIF</em> de la empresa a la que el alumno este asociado.
</p>

<p align="justify">
  El primer campo que tenemos es el campo que hace referencia al campo del <em>“DNI”</em> el cual hemos definido con un car&aacute;cter de (char) lo que eso significa es que tiene una longitud m&aacute;xima de 9 caracteres. A parte de lo anterior este campo se define como una clave primaria (primary key) de la tabla, por lo cual cada valor que nos permitir&aacute; escribir ser&aacute; un valor &uacute;nico en toda la tabla, esto nos sirve para identificar un valor &uacute;nico en la tabla.
<p>

```sql
dni char(9) constraint alumnos_pk primary key;  
```

<p align="justify">
  El segundo campo llamado <em>“nombre”</em>, se declara como una cadena de caracteres como el anterior (varchar) solo que ahora la longitud m&aacute;xima cambia ligeramente a 50 caracteres, a parte de esto este campo se define como no nulo (not null), con lo que este campo es obligatorio siempre que se haga un registro en la base de datos.
</p>

```sql
nombre varchar(50) constraint alumnos_nn1 not null;
```

<p align="justify">
  El tercer y cuarto campo podemos observar que hacen referencia a los apellidos, al <em>“apellido1”</em> y al <em>“apellido2”</em>, estos campos, como los anteriores ya mencionados son declarados como cadenas de caracteres con una longitud m&aacute;xima de 50 caracteres y también se definen como no nulos.
</p>

```sql
apellido1 varchar(50) constraint alumnos_nn2 not null,  
apellido2 varchar(50) constraint alumnos_nn3 not null;
```

<p align="justify">
  El quinto campo con el nombre de <em>“dirección”</em>, que tambi&eacute;n se declara como otra cadena de caracteres como los anteriores campos con una longitud m&aacute;ima de 50 caracteres, al contrario que los anteriores campos que le suceden este campo no se define como no nulo (not null), esto significa que si que est&aacute; permitido que algunos registros que se realicen en la base de datos no tengan un valor en este campo, en otras palabras, puedes dejar este campo en blanco que no pasar&aacute; nada.
</p>

```sql
direccion varchar(50);
```

<p align="justify">
  En el sexto campo de nuestro c&oacute;digo de SQL aparece el campo llamado como <em>“teléfono”</em> declarado como todos los anteriores como como un car&aacute;cter (char) con una longitud m&aacute;xima de 9 caracteres. Al igual que el campo <em>"dirección"</em>, este campo no se define como no nulo (not null) con lo que tambi&eacute;n te permite dejar este campo sin rellenar.
</p>

```sql
telefono char(9);
```

<p align="justify">
  En el s&eacute;ptimo campo llamado <em>“edad”</em>, que es declarado con la funci&oacute;n (number) de n&uacute;mero con una longitud m&aacute;xima de 2 caracteres e igual que los dos anteriores campos este campo tambi&eacute;n permite el dejarle en blanco.
</p>

```sql
edad number(2);
```

<p align="justify">
  El octavo y &uacute;ltimo campo es el campo llamado <em>"cif"</em>, que se declara como un car&aacute;cter (char) con una longitud m&aacute;xima de 9 caracteres. Este campo es definido como clave externa (foreign key) y este hace referencia a la tabla <em>"empresas"</em>, lo que significa que cada valor en este campo debe coincidir con un valor ya existente en la tabla de <em>"empresas"</em> de la base de datos. Adem&aacute;s, se especifica la acci&oacute;n a tomar en caso de que se elimine un registro de la tabla <em>"empresas"</em>: en este caso, se establecer&aacute; el valor del campo <em>"cif"</em> en nulo (null) para todos los registros en la tabla <em>"alumnos"</em> que hagan referencia a ese registro eliminado de la base de datos.
</p>

``` sql
cif char(9) constraint alumnos_fk references empresas  
      on delete set null;  
```

## <h2 align="left"><strong>CONSULTA <em>INSERT INTO</em></strong></h2>

```sql
INSERT INTO TIPOS_CURSO (COD_CURSO, TITULO, DURACION, TEMARIO, MATERIAS) VALUES ('INFOR031', 'Linux II', 90, null, null);  
INSERT INTO TIPOS_CURSO (COD_CURSO, TITULO, DURACION, TEMARIO, MATERIAS) VALUES ('MECAN011', 'Soldadura', 200, null, null);  
INSERT INTO TIPOS_CURSO (COD_CURSO, TITULO, DURACION, TEMARIO, MATERIAS) VALUES ('OFICG001', 'Mecanografía', 30, null, null);  
INSERT INTO TIPOS_CURSO (COD_CURSO, TITULO, DURACION, TEMARIO, MATERIAS) VALUES ('SGBDR010', 'Introducción a Oracle', 90, null, null);  
INSERT INTO TIPOS_CURSO (COD_CURSO, TITULO, DURACION, TEMARIO, MATERIAS) VALUES ('SGBDR011', 'Programación PL/SQL', 110, null, null););    
```

<p align="justify">
  Este c&oacute;digo se utiliza para insertar datos en la tabla <em>"TIPOS_CURSO"</em> de nuestra base de datos.

</p>

<p align="justify">
  Cada instrucci&oacute;n <code>"INSERT INTO"</code> introduce una fila en la tabla <em>"TIPOS_CURSO"</em> con valores espec&iacute;ficos para cada columna.
</p>

<p align="justify">
  La primera instrucci&oacute;n <code>"INSERT INTO"</code> introduce una fila en la tabla <em>"TIPOS_CURSO"</em> con los siguientes valores:
</p>

* El valor <em>"INFOR031"</em> se inserta en la columna <em>"COD_CURSO"</em>.
* El valor <em>"Linux II"</em> se inserta en la columna <em>"TITULO"</em>.
* El valor 90 se inserta en la columna <em>"DURACION"</em>.
* El valor null se inserta en las columnas <em>"TEMARIO"</em> y <em>"MATERIAS"</em>.

```sql
INSERT INTO TIPOS_CURSO (COD_CURSO, TITULO, DURACION, TEMARIO, MATERIAS) VALUES ('INFOR031', 'Linux II', 90, null, null);  
```

<p align="justify">
  La segunda instrucci&oacute;n <code>"INSERT INTO"</code> introduce otra fila en la tabla <em>"TIPOS_CURSO"</em> con los siguientes valores:
</p>

* El valor <em>"MECAN011"</em> se inserta en la columna <em>"COD_CURSO"</em>.
* El valor <em>"Soldadura"</em> se inserta en la columna <em>"TITULO"</em>.
* El valor 200 se inserta en la columna <em>"DURACION"</em>.
* El valor null se inserta en las columnas <em>"TEMARIO"</em> y <em>"MATERIAS"</em>.

```sql
INSERT INTO TIPOS_CURSO (COD_CURSO, TITULO, DURACION, TEMARIO, MATERIAS) VALUES ('MECAN011', 'Soldadura', 200, null, null);  
```

<p align="justify">
  La tercera instrucci&oacute;n <code>"INSERT INTO"</code> introduce otra fila en la tabla <em>"TIPOS_CURSO"</em> con los siguientes valores:
</p>

* El valor <em>"OFICG001"</em> se inserta en la columna <em>"COD_CURSO"</em>.
* El valor <em>"Mecanograf&iacute;a"</em> se inserta en la columna <em>"TITULO"</em>.
* El valor 30 se inserta en la columna <em>"DURACION"</em>.
* El valor null se inserta en las columnas <em>"TEMARIO"</em> y <em>"MATERIAS"</em>.

```sql
INSERT INTO TIPOS_CURSO (COD_CURSO, TITULO, DURACION, TEMARIO, MATERIAS) VALUES ('OFICG001', 'Mecanografía', 30, null, null);  
```

<p align="justify">
  La cuarta instrucci&oacute;n <code>"INSERT INTO"</code> introduce otra fila en la tabla <em>"TIPOS_CURSO"</em> con los siguientes valores:
</p>

* El valor <em>"SGBDR010"</em> se inserta en la columna <em>"COD_CURSO"</em>.
* El valor <em>"Introducci&oacute;n a Oracle"</em> se inserta en la columna <em>"TITULO"</em>.
* El valor 90 se inserta en la columna <em>"DURACION"</em>.
* El valor null se inserta en las columnas <em>"TEMARIO"</em> y <em>"MATERIAS"</em>.

```sql
INSERT INTO TIPOS_CURSO (COD_CURSO, TITULO, DURACION, TEMARIO, MATERIAS) VALUES ('SGBDR010', 'Introducción a Oracle', 90, null, null); 
```

<p align="justify">
  La quinta instrucci&oacute;n <code>"INSERT INTO"</code> introduce otra fila en la tabla <em>"TIPOS_CURSO"</em> con los siguientes valores:
</p>

* El valor <em>"SGBDR011"</em> se inserta en la columna <em>"COD_CURSO"</em>.
* El valor <em>"Programación PL/SQL"</em> se inserta en la columna <em>"TITULO"</em>.
* El valor 110 se inserta en la columna <em>"DURACION"</em>.
* El valor null se inserta en las columnas <em>"TEMARIO"</em> y <em>"MATERIAS"</em>.

```sql 
INSERT INTO TIPOS_CURSO (COD_CURSO, TITULO, DURACION, TEMARIO, MATERIAS) VALUES ('SGBDR011', 'Programación PL/SQL', 110, null, null); 
```

<p align="justify">
  En resumen, este c&oacute;digo inserta cinco filas en la tabla <em>"TIPOS_CURSO"</em> de una base de datos, cada una con valores espec&iacute;ficos para cada columna.
</p>

## <h2 align="left"><strong>CONSULTA <em>SELECT JOIN</em></strong></h2>

```sql
SELECT NOMBRE, LOCALIDAD, TIPO, MODELO, PRECIO_COMPRA  
FROM EMPRESAS  
JOIN SUMINISTROS S USING(CIF)  
JOIN PIEZAS W USING(MODELO,TIPO);  
```

<p align="justify">
  Este c&oacute;digo se utiliza para realizar una consulta en la base de datos. La consulta busca seleccionar los nombres, localidades, tipos, modelos y precios de compra de las empresas que han adquirido suministros y de las piezas que han utilizado dichas empresas.
</p>

<p align="justify">
  La consulta est&aacute; formada por tres instrucciones <code>JOIN</code> que unen tres tablas diferentes de la base de datos: <em>EMPRESAS, SUMINISTROS y PIEZAS</em>.
</p>

<p align="justify">
  La primera instrucción <code>JOIN</code> se utiliza para unir la tabla <em>EMPRESAS</em> con la tabla <em>SUMINISTROS</em>. La sintaxis es la siguiente:
</p>

```sql
JOIN SUMINISTROS S USING(CIF); 
```

<p align="justify">
  Esto significa que se unen las dos tablas mediante la columna <em>"CIF"</em> de la tabla <em>EMPRESAS</em> y la columna <em>"CIF"</em> de la tabla <em>SUMINISTROS</em>. La palabra clave <code>"USING"</code> se utiliza para especificar las columnas que se utilizan para unir las dos tablas. En este caso, se utiliza <em>"CIF"</em> porque es la columna que tienen en com&uacute;n.
</p>

<p align="justify">
  La segunda instrucci&oacute;n <code>JOIN</code> se utiliza para unir la tabla <em>SUMINISTROS</em> con la tabla <em>PIEZAS</em>. La sintaxis es la siguiente:
</p>

```sql
JOIN PIEZAS W USING(MODELO,TIPO); 
```

<p align="justify">
Esto significa que se unen las dos tablas mediante las columnas <em>"MODELO"</em> y <em>"TIPO"</em>. La palabra clave <code>"USING"</code> se utiliza de nuevo para especificar las columnas que se utilizan para unir las dos tablas.
</p>

<p align="justify">
  La &uacute;ltima parte de la consulta es la siguiente:
</p>

```sql
SELECT NOMBRE, LOCALIDAD, TIPO, MODELO, PRECIO_COMPRA; 
```
<p align="justify">
  Esto significa que se seleccionan las columnas <em>"NOMBRE", "LOCALIDAD", "TIPO", "MODELO"</em> y <em>"PRECIO_COMPRA"</em> de las tres tablas unidas.
</p>

<p align="justify">
  En resumen, esta consulta SQL vincula las tablas <em>"EMPRESAS", "SUMINISTROS"</em> y <em>"PIEZAS"</em> utilizando las claves externas e internas apropiadas, y selecciona informaci&oacute;n espec&iacute;fica de estas tablas. La consulta devuelve un conjunto de resultados que incluye los nombres de las empresas, la localidad, el tipo y modelo de pieza, y el precio de compra correspondiente.
</p>

## <h2 align="left"><strong>CONSULTA <em>SELECT WHERE</em></strong></h2>

```sql
SELECT nombre,apellido1,apellido2,telefono  
FROM alumnos  
WHERE INSTR(telefono,'5',1,2)>0;  
```

<p align="justify">
  Este c&oacute;digo corresponde a una consulta en lenguaje SQL (Structured Query Language) que busca obtener una lista de nombres, apellidos y tel&eacute;fonos de alumnos, pero con la condici&oacute;n de que los tel&eacute;fonos tengan el n&uacute;mero "5" en la segunda posici&oacute;n.
</p>

<p align="justify">
  Veamos con detalle cada parte del c&oacute;digo:
</p>

```sql
SELECT nombre,apellido1,apellido2,telefono
```

<p align="justify">
Esta es la cl&aacute;usula <code>SELECT</code>, que indica las columnas que queremos recuperar de la tabla <em>"alumnos"</em>. En este caso, se especifica que se desea obtener la columna <em>"nombre", "apellido1", "apellido2"</em> y <em>"telefono"</em>.
</p>

```sql 
FROM alumnos
```

<p align="justify">
  Esta cl&aacute;usula indica la tabla sobre la cual se va a realizar la consulta. En este caso, la tabla es <em>"alumnos"</em>.
</p>

```sql
WHERE INSTR(telefono,'5',1,2)>0;  
```

<p align="justify">
  Esta es la cl&aacute;usula <code>WHERE</code>, que permite filtrar los resultados de la consulta en funci&oacute;n de una condici&oacute;n. En este caso, se utiliza la función <code>INSTR()</code> para buscar la posici&oacute;n de la primera ocurrencia del n&uacute;mero "5" en la cadena de texto del campo <em>"telefono"</em>. Los par&aacute;metros de la funci&oacute;n son:
</p>

* La cadena de texto a buscar: <em>"telefono"</em>.
* La cadena de texto a buscar dentro de la primera: <em>"5"</em>.
* La posici&oacute;n inicial de la b&uacute;squeda: 1 (primer caracter).
* La cantidad de caracteres a considerar: 2 (buscando solo en la segunda posici&oacute;n).

<p align="justify">
  El resultado de la funci&oacute;n <code>INSTR()</code> es un n&uacute;mero entero que indica la posici&oacute;n de la primera ocurrencia de la cadena de texto buscada. Si la cadena no se encuentra en el texto, el valor devuelto es cero.
</p>

<p align="justify">
  Por &uacute;ltimo, se eval&uacute;a si el resultado de la funci&oacute;n <code>INSTR()</code> es mayor que cero. Si es as&iacute;, significa que la cadena <em>"5"</em> fue encontrada en la segunda posici&oacute;n del campo <em>"telefono"</em> y, por lo tanto, se incluir&aacute; el registro en el resultado de la consulta. Si el resultado de la funci&oacute;n es cero, el registro ser&aacute; descartado.
</p>

<p align="justify">
  En resumen, la consulta SQL busca obtener la lista de nombres, apellidos y tel&eacute;fonos de alumnos cuyos tel&eacute;fonos tengan el n&uacute;mero <em>"5"</em> en la segunda posici&oacute;n.
</p>

## <h2 align="left"><strong>PERMISOS C&Oacute;DIGO</strong></h2>

<p align="left">
    <a href="https://academy.oracle.com/es/" target="blank">
    <img src="https://github.com/Alvaruky/Resumen-Consultas/blob/main/assets/img/descarga.png" alt="Oracle-Academy" height="34%" width="34%">
  </a>
</p>

### <h3 align="left"><strong>👇 ¡Instagram Centro Don Bosco!</strong></h3>

<a href="https://www.instagram.com/salesianosvillamuriel/?hl=es" target="blank" style='margin-right:4px'>
  <img align="center" src="https://cdn.jsdelivr.net/npm/simple-icons@3.13.0/icons/instagram.svg" alt="donbosco" height="28px" width="28px" />
</a>

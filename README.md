<p align="left">
    <a href="https://www.centrodonbosco.es/" target="blank">
    <img src="https://github.com/Alvaruky/Resumen-Consultas/blob/main/assets/img/PieDePagina-removebg-preview%20(1).png" alt="Cabecera-Salesianos"
    height="80px" width="400px">
    </a>
</p>

# <h1 align="center"><strong>RESUMEN CONSULTAS</strong></h1>

## <h2 align="left"><strong>CONSULTA <em>CREATE TABLE</em></strong></h2>

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
          on delete set null);  
```

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
  El quinto campo con el nombre de “dirección”, que también se declara como otra cadena de caracteres como los anteriores campos con una longitud máxima de 50 caracteres, al contrario que los anteriores campos que le suceden este campo no se define como no nulo (not null), esto significa que si que está permitido que algunos registros que se realicen en la base de datos no tengan un valor en este campo, en otras palabras, puedes dejar este campo en blanco que no pasará nada.
</p>

```
direccion varchar(50);
```

<p align="justify">
  En el sexto campo de nuestro código de SQL aparece el campo llamado como “teléfono” declarado como todos los anteriores como como un carácter (char) con una longitud máxima de 9 caracteres. Al igual que el campo "dirección", este campo no se define como no nulo (not null) con lo que también te permite dejar este campo sin rellenar.
</p>

```
telefono char(9);
```

<p align="justify">
  En el séptimo campo llamado “edad”, que es declarado con la función (number) de número con una longitud máxima de 2 caracteres e igual que los dos anteriores campos este campo también permite el dejarle en blanco.
</p>

```
edad number(2);
```

<p align="justify">
  El octavo y último campo es el campo llamado "cif", que se declara como un carácter (char) con una longitud máxima de 9 caracteres. Este campo es definido como clave externa (foreign key) y este hace referencia a la tabla "empresas", lo que significa que cada valor en este campo debe coincidir con un valor ya existente en la tabla de "empresas" de la base de datos. Además, se especifica la acción a tomar en caso de que se elimine un registro de la tabla "empresas": en este caso, se establecerá el valor del campo "cif" en nulo (null) para todos los registros en la tabla "alumnos" que hagan referencia a ese registro eliminado de la base de datos.
</p>

``` 
   cif char(9) constraint alumnos_fk references empresas  
          on delete set null;  
```

## <h2 align="left"><strong>CONSULTA <em>INSERT INTO</em></strong></h2>

```
INSERT INTO TIPOS_CURSO (COD_CURSO, TITULO, DURACION, TEMARIO, MATERIAS) VALUES ('INFOR031', 'Linux II', 90, null, null);  
INSERT INTO TIPOS_CURSO (COD_CURSO, TITULO, DURACION, TEMARIO, MATERIAS) VALUES ('MECAN011', 'Soldadura', 200, null, null);  
INSERT INTO TIPOS_CURSO (COD_CURSO, TITULO, DURACION, TEMARIO, MATERIAS) VALUES ('OFICG001', 'Mecanografía', 30, null, null);  
INSERT INTO TIPOS_CURSO (COD_CURSO, TITULO, DURACION, TEMARIO, MATERIAS) VALUES ('SGBDR010', 'Introducción a Oracle', 90, null, null);  
INSERT INTO TIPOS_CURSO (COD_CURSO, TITULO, DURACION, TEMARIO, MATERIAS) VALUES ('SGBDR011', 'Programación PL/SQL', 110, null, null);  
);    
```

<p align="justify">
  Este código se utiliza para insertar datos en la tabla "TIPOS_CURSO" de nuestra base de datos.

</p>

<p align="justify">
  Cada instrucción "INSERT INTO" introduce una fila en la tabla "TIPOS_CURSO" con valores específicos para cada columna.
</p>

<p align="justify">
  La primera instrucción "INSERT INTO" introduce una fila en la tabla "TIPOS_CURSO" con los siguientes valores:
</p>

* El valor "INFOR031" se inserta en la columna "COD_CURSO".
* El valor "Linux II" se inserta en la columna "TITULO".
* El valor 90 se inserta en la columna "DURACION".
* El valor null se inserta en las columnas "TEMARIO" y "MATERIAS".

``` 
INSERT INTO TIPOS_CURSO (COD_CURSO, TITULO, DURACION, TEMARIO, MATERIAS) VALUES ('INFOR031', 'Linux II', 90, null, null);  
```

<p align="justify">
  La segunda instrucción "INSERT INTO" introduce otra fila en la tabla "TIPOS_CURSO" con los siguientes valores:
</p>

* El valor "MECAN011" se inserta en la columna "COD_CURSO".
* El valor "Soldadura" se inserta en la columna "TITULO".
* El valor 200 se inserta en la columna "DURACION".
* El valor null se inserta en las columnas "TEMARIO" y "MATERIAS".

``` 
INSERT INTO TIPOS_CURSO (COD_CURSO, TITULO, DURACION, TEMARIO, MATERIAS) VALUES ('MECAN011', 'Soldadura', 200, null, null);  
```

<p align="justify">
  La tercera instrucción "INSERT INTO" introduce otra fila en la tabla "TIPOS_CURSO" con los siguientes valores:
</p>

* El valor "OFICG001" se inserta en la columna "COD_CURSO".
* El valor "Mecanografía" se inserta en la columna "TITULO".
* El valor 30 se inserta en la columna "DURACION".
* El valor null se inserta en las columnas "TEMARIO" y "MATERIAS".

``` 
INSERT INTO TIPOS_CURSO (COD_CURSO, TITULO, DURACION, TEMARIO, MATERIAS) VALUES ('OFICG001', 'Mecanografía', 30, null, null);  
```

<p align="justify">
  La cuarta instrucción "INSERT INTO" introduce otra fila en la tabla "TIPOS_CURSO" con los siguientes valores:
</p>

* El valor "SGBDR010" se inserta en la columna "COD_CURSO".
* El valor "Introducción a Oracle" se inserta en la columna "TITULO".
* El valor 90 se inserta en la columna "DURACION".
* El valor null se inserta en las columnas "TEMARIO" y "MATERIAS".

``` 
INSERT INTO TIPOS_CURSO (COD_CURSO, TITULO, DURACION, TEMARIO, MATERIAS) VALUES ('SGBDR010', 'Introducción a Oracle', 90, null, null); 
```

<p align="justify">
  La quinta instrucción "INSERT INTO" introduce otra fila en la tabla "TIPOS_CURSO" con los siguientes valores:
</p>

* El valor "SGBDR011" se inserta en la columna "COD_CURSO".
* El valor "Programación PL/SQL" se inserta en la columna "TITULO".
* El valor 110 se inserta en la columna "DURACION".
* El valor null se inserta en las columnas "TEMARIO" y "MATERIAS".

``` 
INSERT INTO TIPOS_CURSO (COD_CURSO, TITULO, DURACION, TEMARIO, MATERIAS) VALUES ('SGBDR011', 'Programación PL/SQL', 110, null, null); 
```

<p align="justify">
  En resumen, este código inserta cinco filas en la tabla "TIPOS_CURSO" de una base de datos, cada una con valores específicos para cada columna.
</p>

## <h2 align="left"><strong>CONSULTA <em>SELECT JOIN</em></strong></h2>

```
SELECT NOMBRE, LOCALIDAD, TIPO, MODELO, PRECIO_COMPRA  
FROM EMPRESAS  
JOIN SUMINISTROS S USING(CIF)  
JOIN PIEZAS W USING(MODELO,TIPO);  
```

<p align="justify">
  Este código se utiliza para realizar una consulta en la base de datos. La consulta busca seleccionar los nombres, localidades, tipos, modelos y precios de compra de las empresas que han adquirido suministros y de las piezas que han utilizado dichas empresas.
</p>

<p align="justify">
  La consulta está formada por tres instrucciones JOIN que unen tres tablas diferentes de la base de datos: EMPRESAS, SUMINISTROS y PIEZAS.
</p>

<p align="justify">
  La primera instrucción JOIN se utiliza para unir la tabla EMPRESAS con la tabla SUMINISTROS. La sintaxis es la siguiente:
</p>

```
JOIN SUMINISTROS S USING(CIF); 
```

<p align="justify">
  Esto significa que se unen las dos tablas mediante la columna "CIF" de la tabla EMPRESAS y la columna "CIF" de la tabla SUMINISTROS. La palabra clave "USING" se utiliza para especificar las columnas que se utilizan para unir las dos tablas. En este caso, se utiliza "CIF" porque es la columna que tienen en común.
</p>

<p align="justify">
  La segunda instrucción JOIN se utiliza para unir la tabla SUMINISTROS con la tabla PIEZAS. La sintaxis es la siguiente:
</p>

```
JOIN PIEZAS W USING(MODELO,TIPO); 
```

<p align="justify">
Esto significa que se unen las dos tablas mediante las columnas "MODELO" y "TIPO". La palabra clave "USING" se utiliza de nuevo para especificar las columnas que se utilizan para unir las dos tablas.
</p>

<p align="justify">
  La última parte de la consulta es la siguiente:
</p>

```
SELECT NOMBRE, LOCALIDAD, TIPO, MODELO, PRECIO_COMPRA; 
```
<p align="justify">
  Esto significa que se seleccionan las columnas "NOMBRE", "LOCALIDAD", "TIPO", "MODELO" y "PRECIO_COMPRA" de las tres tablas unidas.
</p>

<p align="justify">
  En resumen, esta consulta SQL vincula las tablas "EMPRESAS", "SUMINISTROS" y "PIEZAS" utilizando las claves externas e internas apropiadas, y selecciona información específica de estas tablas. La consulta devuelve un conjunto de resultados que incluye los nombres de las empresas, la localidad, el tipo y modelo de pieza, y el precio de compra correspondiente.
</p>

## <h2 align="left"><strong>CONSULTA <em>SELECT WHERE</em></strong></h2>

```
SELECT nombre,apellido1,apellido2,telefono  
FROM alumnos  
WHERE INSTR(telefono,'5',1,2)>0;  
```

<p align="justify">
  Este código corresponde a una consulta en lenguaje SQL (Structured Query Language) que busca obtener una lista de nombres, apellidos y teléfonos de alumnos, pero con la condición de que los teléfonos tengan el número "5" en la segunda posición.
</p>

<p align="justify">
  Veamos con detalle cada parte del código:
</p>

```
SELECT nombre,apellido1,apellido2,telefono
```

<p align="justify">
Esta es la cláusula SELECT, que indica las columnas que queremos recuperar de la tabla "alumnos". En este caso, se especifica que se desea obtener la columna "nombre", "apellido1", "apellido2" y "telefono".
</p>

``` 
FROM alumnos
```

<p align="justify">
  Esta cláusula indica la tabla sobre la cual se va a realizar la consulta. En este caso, la tabla es "alumnos".
</p>

```
WHERE INSTR(telefono,'5',1,2)>0;  
```

<p align="justify">
  Esta es la cláusula WHERE, que permite filtrar los resultados de la consulta en función de una condición. En este caso, se utiliza la función INSTR() para buscar la posición de la primera ocurrencia del número "5" en la cadena de texto del campo "telefono". Los parámetros de la función son:
</p>

* La cadena de texto a buscar: "telefono".
* La cadena de texto a buscar dentro de la primera: "5".
* La posición inicial de la búsqueda: 1 (primer caracter).
* La cantidad de caracteres a considerar: 2 (buscando solo en la segunda posición).

<p align="justify">
  El resultado de la función INSTR() es un número entero que indica la posición de la primera ocurrencia de la cadena de texto buscada. Si la cadena no se encuentra en el texto, el valor devuelto es cero.
</p>

<p align="justify">
  Por último, se evalúa si el resultado de la función INSTR() es mayor que cero. Si es así, significa que la cadena "5" fue encontrada en la segunda posición del campo "telefono" y, por lo tanto, se incluirá el registro en el resultado de la consulta. Si el resultado de la función es cero, el registro será descartado.
</p>

<p align="justify">
  En resumen, la consulta SQL busca obtener la lista de nombres, apellidos y teléfonos de alumnos cuyos teléfonos tengan el número "5" en la segunda posición.
</p>

## <h2 align="left"><strong>PERMISOS CÓDIGO</strong></h2>

<p align="left">
    <a href="https://academy.oracle.com/es/" target="blank">
    <img src="https://github.com/Alvaruky/Resumen-Consultas/blob/main/assets/img/descarga.png" alt="Oracle-Academy" height="34%" width="34%">
  </a>
</p>

### <h3 align="left"><strong>👇¡INSTAGRAM Centro Don Bosco!</strong></h3>

<a href="https://www.instagram.com/salesianosvillamuriel/?hl=es" target="blank" style='margin-right:4px'>
  <img align="center" src="https://cdn.jsdelivr.net/npm/simple-icons@3.13.0/icons/instagram.svg" alt="donbosco" height="28px" width="28px" />
</a>

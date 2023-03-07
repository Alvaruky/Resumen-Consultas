SELECT nombre,apellido1,apellido2,telefono
FROM alumnos
WHERE INSTR(telefono,'5',1,2)>0;
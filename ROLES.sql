--permisos para segundo usuario

GRANT SELECT ON s_departamento TO ELYORDAN;

--Permisos a segundo usuario para crear sinonimos privados  
GRANT CREATE SYNONYM TO Matias;
GRANT CREATE SYNONYM TO ELYORDAN;


GRANT SELECT ON Matias.s_empleado TO ELYORDAN;

--Asignar permisos a segundo usuario para poder actualizar datos

GRANT UPDATE ON Matias.s_empleado TO ELYORDAN;




--CREACION DE ROL
CREATE ROLE rol_maraka;
--ASIGNAR PRIVILEGIOS AL ROL
GRANT CREATE SESSION TO rol_maraka;
GRANT CREATE VIEW TO rol_maraka;
GRANT CREATE  TO rol_maraka;

GRANT SELECT ON Matias.s_empleado TO rol_maraka;

--ASIGNAR ROL A USUARIO

GRANT rol_maraka TO ELYORDAN;
ALTER USER ELYORDAN DEFAULT ROLE "ROL_MARAKA";

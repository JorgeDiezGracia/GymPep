------ MODIFICACI�N DATOS

UPDATE MEMBERS 
SET FIRST_NAME = 'Anakin', LAST_NAME = 'Skywalker'
WHERE FIRST_NAME = 'Darth';
COMMIT;


------ BORRADO DE REGISTRO

DELETE FROM RESERVE WHERE ID_MEMBER = 'MEM7';
DELETE FROM MEMBERS WHERE ID_MEMBER = 'MEM7';
COMMIT;


------- B�SQUEDA (QU� SOCIOS SE HAN APUNTADO A UNA CLASE EN CONCRETO)

SELECT MEM.FIRST_NAME, MEM.LAST_NAME, CL.CLASS_NAME, CL.DATE_TIME FROM MEMBERS MEM INNER JOIN RESERVE RES
ON MEM.ID_MEMBER = RES.ID_MEMBER INNER JOIN CLASSES CL
ON RES.ID_CLASS=CL.ID_CLASS WHERE RES.ID_CLASS='CL5';



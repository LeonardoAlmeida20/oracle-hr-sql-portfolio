--Consulta para conocer la tabla
SELECT column_name, 
data_type, 
data_length, 
nullable
FROM all_tab_columns
WHERE owner = 'HR' AND table_name = 'JOBS'
ORDER BY column_id;

DESC HR.JOBS;

--SELECT * FROM HR.JOBS; --19 REGISTROS TOTALES

--Consulta para ver vacios o NULL de los campos--
SELECT 
COUNT(*) 
FROM HR.JOBS
WHERE MIN_SALARY IS NULL;

SELECT 
COUNT(*) 
FROM HR.JOBS
WHERE MAX_SALARY IS NULL;


--Consulta depurada para trabajar--
SELECT 
J.JOB_ID Identificacion,
UPPER(J.JOB_TITLE) Titulo,
J.MIN_SALARY "Salario Minimo",
J.MAX_SALARY "Salario Maximo"
FROM  HR.JOBS J;
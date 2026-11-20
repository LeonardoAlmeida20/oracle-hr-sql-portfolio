--Consulta para conocer la tabla
SELECT column_name, 
data_type, 
data_length, 
nullable
FROM all_tab_columns
WHERE owner = 'HR' AND table_name = 'EMPLOYEES'
ORDER BY column_id;

DESC HR.EMPLOYEES;

--SELECT * FROM HR.EMPLOYEES; --107 REGISTROS TOTALES

--Consulta para ver vacios o NULL de los campos--
SELECT 
    COUNT(*) AS total_empleados,
    COUNT(E.MANAGER_ID) AS con_manager,
    COUNT(*) - COUNT(E.MANAGER_ID) AS sin_manager,
    COUNT(E.DEPARTMENT_ID) AS con_departamento,
    COUNT(*) - COUNT(E.DEPARTMENT_ID) AS sin_departamento,
    COUNT(E.SALARY) AS con_salario,
    COUNT(*) - COUNT(E.SALARY) AS sin_salario,
    COUNT(E.COMMISSION_PCT) AS con_comision,
    COUNT(*) - COUNT(E.COMMISSION_PCT) AS sin_comision
FROM HR.EMPLOYEES E;

--Consulta depurada para trabajar--
SELECT 
E.EMPLOYEE_ID,
UPPER(TRIM(E.FIRST_NAME)) || ' ' || UPPER(TRIM(E.LAST_NAME)) AS NOMBRE_COMPLETO,
E.EMAIL,
E.PHONE_NUMBER,
E.HIRE_DATE,
E.JOB_ID,
NVL(E.SALARY, 0) AS SALARY,
NVL(E.COMMISSION_PCT, 0) AS COMMISSION_PCT,
E.MANAGER_ID,
E.DEPARTMENT_ID
FROM  HR.employees E;
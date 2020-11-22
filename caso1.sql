CREATE DATABASE caso1
\c caso1


 CREATE TABLE departamentos(
 department_id VARCHAR(255),
 dept_name VARCHAR(255),
 PRIMARY KEY (department_id)
 );

 CREATE TABLE trabajadores(
 worker_id INT,
 worker_name VARCHAR(255) NOT NULL,
 address VARCHAR(500),
 rut VARCHAR(10) UNIQUE NOT NULL,
 id_department VARCHAR(255) REFERENCES departamentos(department_id),
 PRIMARY KEY (worker_id)
 );

 CREATE TABLE liquidaciones(
 payslip_id SERIAL,
 drive_file VARCHAR(500) NOT NULL UNIQUE,
 id_worker INT NOT NULL REFERENCES trabajadores(worker_id),
 PRIMARY KEY (payslip_id)
 );


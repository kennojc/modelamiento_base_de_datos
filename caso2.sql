kennojc=# CREATE DATABASE caso2;
CREATE DATABASE
kennojc=# \c caso2;
You are now connected to database "caso2" as user "kennojc".


 CREATE TABLE departamentos(
 department_id VARCHAR(50),
 dept_name VARCHAR(250) UNIQUE,
 PRIMARY KEY (department_id)
 );
CREATE TABLE
 CREATE TABLE profesores(
 teacher_id SERIAL,
 teacher_name VARCHAR(500) NOT NULL,
 from_department VARCHAR(50) REFERENCES departamentos(department_id),
 PRIMARY KEY (teacher_id)
 );
CREATE TABLE
 CREATE TABLE cursos(
 course_id VARCHAR(250),
 course_name VARCHAR(250),
 id_department VARCHAR(50) REFERENCES departamentos(department_id),
 PRIMARY KEY (course_id)
 );
CREATE TABLE

 CREATE TABLE alumnos(
 rut INT,
 student_name VARCHAR(500),
 id_course VARCHAR(250) REFERENCES cursos(course_id),
 PRIMARY KEY (rut)
 );

 CREATE TABLE pruebas(
 test_id SERIAL,
 score FLOAT NOT NULL, --Me pareció mejor un float que el INT planeado en el modelo --
 id_student INT REFERENCES alumnos(rut),
 responsible_teacher INT NOT NULL REFERENCES profesores(teacher_id),
 PRIMARY KEY (test_id)
 );
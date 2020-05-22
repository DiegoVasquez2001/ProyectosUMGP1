CREATE DATABASE umg4;
Use umg4;
CREATE TABLE alumnos
(
carnet_Alumno varchar(15) PRIMARY KEY,
nombre_Alumno Varchar (45) ,
direccion_Alumno  VARCHAR (45) ,
telefono_Alumno Varchar (45),
email_Alumno varchar (20),
Estatus_Alumno varchar (1)
)Engine = InnoDB ;
CREATE TABLE maestros
(
codigo_maestros varchar(5) PRIMARY KEY,
nombre_maestros Varchar(45) ,
direccion_maestros  VARCHAR(45) ,
telefono_maestros Varchar(45),
email_maestros varchar(20),
estatus_maestros varchar(1)
)Engine = InnoDB ;

CREATE TABLE facultad
(
codigo_Facultad varchar(5) PRIMARY KEY,
nombre_Facultad Varchar (45) ,
Estado_Facultad varchar (1),
foreign key (codigo_Facultad) references alumnos (carnet_Alumno)

)Engine = InnoDB ;

CREATE TABLE Cursos
(
codido_Cursos varchar(5) PRIMARY KEY,
nombre_Cursos Varchar (45) ,
Estatus_Cursos varchar (1),
foreign key (codido_Cursos) references alumnos (carnet_Alumno)
)Engine = InnoDB ;

CREATE TABLE Carreras
(
codigo_Carreras varchar(5) PRIMARY KEY,
nombre_Carreras Varchar (45) ,
Estatus_Carreras varchar (1),
foreign key (codigo_Carreras) references alumnos (carnet_Alumno)

)Engine = InnoDB ;
CREATE TABLE Secciones 
(
codigo_Secciones varchar(5) PRIMARY KEY,
nombre_Secciones Varchar (45) ,
Estatus_Secciones varchar (1),
foreign key (codigo_Secciones) references alumnos (carnet_Alumno)

)Engine = InnoDB ;

CREATE TABLE sedes
(
codigo_Sedes varchar(5) PRIMARY KEY,
nombre_Sedes Varchar (45) ,
Estatus_Sedes varchar (1),
foreign key (codigo_Sedes) references alumnos (carnet_Alumno)

)Engine = InnoDB ;
CREATE TABLE Jornada
(
codigo_jornada varchar(5) PRIMARY KEY,
nombre_jornada Varchar (45) ,
Estatus_jornada varchar (1),
foreign key (codigo_jornada) references alumnos (carnet_Alumno)

)Engine = InnoDB ;
CREATE TABLE aulas
(
codigo_aulas varchar(5) PRIMARY KEY,
nombre_aulas Varchar (45) ,
Estatus_aulas varchar (1),
foreign key (codigo_aulas) references alumnos (carnet_Alumno)

)Engine = InnoDB ;
CREATE TABLE asignacionalumnos
(
codigo_carrera varchar(15) PRIMARY KEY,
codigo_sede Varchar (45) ,
codigo_jornada  VARCHAR (45) ,
codigo_seccion Varchar (45),
codigo_aula varchar (20),
codigo_curso varchar (19),
carnet_alumno varchar (19),
nota_asignacionalumon float (10,2)
)Engine = InnoDB ;

ALTER TABLE asignacionalumnos
ADD CONSTRAINT codigo_carrera
FOREIGN KEY (codigo_carrera) REFERENCES Carreras(codigo_Carreras);

ALTER TABLE asignacionalumnos
ADD CONSTRAINT codigo_sede
FOREIGN KEY (codigo_sede) REFERENCES sedes(codigo_Sedes);

ALTER TABLE asignacionalumnos
ADD CONSTRAINT codigo_jornada
FOREIGN KEY (codigo_jornada) REFERENCES Jornada(codigo_jornada);

ALTER TABLE asignacionalumnos
ADD CONSTRAINT codigo_seccion
FOREIGN KEY (codigo_seccion) REFERENCES secciones(codigo_secciones);

ALTER TABLE asignacionalumnos
ADD CONSTRAINT codigo_aula
FOREIGN KEY (codigo_aula) REFERENCES aulas(codigo_aulas);

ALTER TABLE asignacionalumnos
ADD CONSTRAINT codigo_curso
FOREIGN KEY (codigo_curso) REFERENCES Cursos(codido_Cursos);

ALTER TABLE asignacionalumnos
ADD CONSTRAINT carnet_alumno
FOREIGN KEY (carnet_alumno) REFERENCES alumnos(carnet_Alumnos);

CREATE TABLE asignacionamaestros
(
codigo_mcarrera varchar(5),
codigo_msede varchar(5) ,
codigo_mjornada  VARCHAR(5),
codigo_mseccion Varchar(5),
codigo_maula varchar(5),
codigo_mcurso varchar(5),
codigo_maestrolumno varchar(5)
)Engine = InnoDB ;

ALTER TABLE asignacionamaestros
ADD CONSTRAINT codigo_mcarrera
foreign key (codigo_mcarrera) references Carreras(codigo_Carreras);

ALTER TABLE asignacionamaestros
ADD CONSTRAINT codigo_msede
FOREIGN KEY (codigo_msede) REFERENCES sedes(codigo_Sedes);

ALTER TABLE asignacionamaestros
ADD CONSTRAINT codigo_mjornada
FOREIGN KEY (codigo_mjornada) REFERENCES Jornada(codigo_jornada);

ALTER TABLE asignacionamaestros
ADD CONSTRAINT codigo_mseccion
FOREIGN KEY (codigo_mseccion) REFERENCES secciones(codigo_secciones);

ALTER TABLE asignacionamaestros
ADD CONSTRAINT codigo_maula
FOREIGN KEY (codigo_maula) REFERENCES aulas(codigo_aulas);

ALTER TABLE asignacionamaestros
ADD CONSTRAINT codigo_mcurso
FOREIGN KEY (codigo_mcurso) REFERENCES Cursos(codido_Cursos);

ALTER TABLE asignacionamaestros
ADD CONSTRAINT codigo_maestrolumno
FOREIGN KEY (codigo_maestrolumno) REFERENCES maestros(codigo_maestros);



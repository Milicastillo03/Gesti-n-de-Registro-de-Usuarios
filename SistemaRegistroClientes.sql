CREATE DATABASE sistemaregistrocliente;

CREATE TABLE administrador (
    id_Administrador INT AUTO_INCREMENT PRIMARY KEY,
    usuario VARCHAR(50),
    contraseña VARCHAR(50) 
);


CREATE TABLE clientes (
    id_Clientes INT AUTO_INCREMENT PRIMARY KEY,
    dni VARCHAR(30),
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    telefono VARCHAR(30),
    fecha_Registro DATETIME
);


CREATE TABLE cobro (
    id_Cobro INT AUTO_INCREMENT PRIMARY KEY,
    clientes INT,
    maquinas INT,
    total DECIMAL(10,2),
    fecha DATETIME,
    FOREIGN KEY (clientes) REFERENCES clientes(id_Clientes),
    FOREIGN KEY (maquinas) REFERENCES maquinas(id_Maquinas) 
);


CREATE TABLE configuracion (
    id_configuracion INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion TEXT,
    telefono VARCHAR(15),
    direccion VARCHAR(255)
);


CREATE TABLE maquinas (
    id_Maquinas INT AUTO_INCREMENT PRIMARY KEY,
    numero_de_serie VARCHAR(50),
    marca VARCHAR(50),
    modelo VARCHAR(50),
    tipo VARCHAR(50),
    id_Clientes INT,
    FOREIGN KEY (id_Clientes) REFERENCES clientes(id_Clientes) 
);


CREATE TABLE nuevo_cobro (
    id_Nuevo_Cobro INT AUTO_INCREMENT PRIMARY KEY,
    codigo_maquina INT,
    marca VARCHAR(50),
    modelo VARCHAR(50),
    tipo_maquina VARCHAR(50),
    num_serie VARCHAR(50),
    precio DECIMAL(10,2),
    id_Cobro INT,
    FOREIGN KEY (id_Cobro) REFERENCES cobro(id_Cobro) 
);


CREATE TABLE reparacion (
    id_Reparacion INT AUTO_INCREMENT PRIMARY KEY,
    codigo VARCHAR(100),
    descripcion TEXT,
    precio DECIMAL(10,2),
    id_Maquinas INT,
    FOREIGN KEY (id_Maquinas) REFERENCES maquinas(id_Maquinas) 
);

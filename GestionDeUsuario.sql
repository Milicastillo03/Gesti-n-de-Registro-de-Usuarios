-- Crear la base de datos
CREATE DATABASE IF NOT EXISTS Gestion_De_Usuario;

use gestion_de_usuario;

-- Crear la tabla AdministradorDelSistema
CREATE TABLE Administrador_Del_Sistema (
    id_Administrador_Del_Sistema INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Apellido VARCHAR(100) NOT NULL UNIQUE,
    Usuario VARCHAR(200) NOT NULL,
    Contraseña VARCHAR(255) NOT NULL
);

CREATE TABLE Cliente_ (
    id_Cliente INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Apellido VARCHAR(100) NOT NULL,
    Telefono VARCHAR(20) NOT NULL
     
);

CREATE TABLE Maquina_ (
    id_Maquina INT AUTO_INCREMENT PRIMARY KEY,
    id_Cliente INT,
    Marca VARCHAR(45), 
    Modelo VARCHAR(50),
    TipoMaquina VARCHAR(50),
    NumeroSerie VARCHAR(50),
    DescripcionProblema TEXT,
      -- Llave foránea
    FOREIGN KEY (id_Cliente) REFERENCES cliente_(id_Cliente)
);

CREATE TABLE Reparacion_ (
    id_Reparacion INT AUTO_INCREMENT PRIMARY KEY,
    id_Cliente INT,
    id_Maquina INT,
    Descripcion_Reparacion TEXT,
      -- Llave foránea
    FOREIGN KEY (id_Cliente) REFERENCES cliente_(id_Cliente),
    FOREIGN KEY (id_Maquina) REFERENCES maquina_(id_Maquina)
);

CREATE TABLE Costo_Reparacion_ (
    id_Costo_Reparacion INT AUTO_INCREMENT PRIMARY KEY,
    id_Reparacion INT,
    Costo_Total DECIMAL(10, 2),
      -- Llave foránea
    FOREIGN KEY (id_Reparacion) REFERENCES reparacion_(id_Reparacion)
);

CREATE TABLE Historial_ (
    id_Historial INT AUTO_INCREMENT PRIMARY KEY,  -- Llave primaria
    id_Cliente INT,  -- Llave foránea que referencia a la tabla Cliente
    id_Maquina INT,  -- Llave foránea que referencia a la tabla Maquina
    id_Reparacion INT, -- llave foranea que referencia a la tabla Reparacion
    id_Costo_Reparacion INT, -- llave foranea que referencia a la tabla Costo_Reparacion
    Fecha_Ingreso DATE NOT NULL,  -- Fecha en que la máquina fue ingresada para reparación
    Fecha_Retiro DATE,  -- Fecha en que la máquina fue retirada
    Descripcion_Problema TEXT,  -- Descripción del problema reportado por el cliente
    Descripcion_Reparacion TEXT,  -- Descripción de la reparacion hecha
    Reparada BOOLEAN DEFAULT FALSE,  -- Indica si la máquina fue reparada o no
    Saldo DECIMAL(10, 2),
    FOREIGN KEY (id_Cliente) REFERENCES cliente_(id_Cliente),
    FOREIGN KEY (id_Maquina) REFERENCES maquina_(id_Maquina),
    FOREIGN KEY (id_Reparacion) REFERENCES reparacion_(id_Reparacion),
    FOREIGN KEY (id_Costo_Reparacion) REFERENCES costo_reparacion_(id_Costo_Reparacion)
);


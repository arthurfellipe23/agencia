CREATE TABLE Cliente (
  ID_Cliente INT PRIMARY KEY AUTO_INCREMENT,
  Nome VARCHAR(100),
  Email VARCHAR(100),
  Telefone VARCHAR(15),
  Endereco TEXT
);

CREATE TABLE Destino (
  ID_Destino INT PRIMARY KEY AUTO_INCREMENT,
  Nome VARCHAR(100),
  Descricao TEXT,
  Pais VARCHAR(50),
  Cidade VARCHAR(50)
);

CREATE TABLE Pacote (
  ID_Pacote INT PRIMARY KEY AUTO_INCREMENT,
  Nome VARCHAR(100),
  Descricao TEXT,
  Preco DECIMAL(10, 2),
  Duracao INT,
  ID_Destino INT,
  FOREIGN KEY (ID_Destino) REFERENCES Destino(ID_Destino)
);

CREATE TABLE Reserva (
  ID_Reserva INT PRIMARY KEY AUTO_INCREMENT,
  Data_Reserva DATE,
  Data_Checkin DATE,
  Data_Checkout DATE,
  ID_Cliente INT,
  ID_Pacote INT,
  FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente),
  FOREIGN KEY (ID_Pacote) REFERENCES Pacote(ID_Pacote)
);

CREATE TABLE Pagamento (
  ID_Pagamento INT PRIMARY KEY AUTO_INCREMENT,
  Data_Pagamento DATE,
  Valor DECIMAL(10, 2),
  Status VARCHAR(20),
  ID_Reserva INT,
  FOREIGN KEY (ID_Reserva) REFERENCES Reserva(ID_Reserva)
);
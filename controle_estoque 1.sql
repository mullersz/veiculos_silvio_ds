CREATE DATABASE estoque;
USE estoque;

CREATE TABLE veiculo (
    marca VARCHAR(45) NOT NULL,
    modelo VARCHAR(45) NOT NULL,
    fabricante VARCHAR(45),
    cor VARCHAR(45),
    ano date,
    categoria VARCHAR(45),
    valor_compra decimal(10,2),
    valor_venda decimal(10,2),
    placa VARCHAR(45) UNIQUE primary key not null,
    chassi VARCHAR(45) UNIQUE
);

CREATE TABLE saidas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fk_placa VARCHAR(45) UNIQUE,
    tipo_saida ENUM('VENDA', 'RETIRADA') NOT NULL,
    data_saida datetime,
    observacao TEXT
);
 
CREATE TABLE seguros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fk_placa varchar(45) unique,
    valor_seguro int not null,
    data_atualizacao datetime
);




insert into veiculo (marca, modelo, fabricante, cor, ano, categoria, valor_compra, valor_venda, placa, chassi ) values ('marca', 'modelo', 'fabricante', 'cor', 20251201, 'categoria', 10, null, 'placa1', 'chassi1');


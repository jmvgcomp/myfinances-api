CREATE TABLE IF NOT EXISTS pessoa(
    codigo BIGINT(20) AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(200) NOT NULL,
    ativo BOOLEAN NOT NULL,
    logradouro VARCHAR(200) NOT NULL,
    numero VARCHAR(10) NOT NULL,
    complemento VARCHAR(50),
    bairro VARCHAR(100) NOT NULL,
    cep VARCHAR(10) NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    estado CHAR(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado) values ('Jenny Hambridge', true, 'Merry', '616', 'Point', 'Street', '15240', 'Pittsburgh', 'PA');
INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado) values ('Tootsie Sirett', true, 'Melody', '1818', 'Way', 'Avenue', '22225', 'Arlington', 'VA');
INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado) values ('Roth Brimilcombe', true, 'Elka', '07670', 'Street', 'Court', '29424', 'Charleston', 'SC');
INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado) values ('Giuditta Findlater', true, 'Vahlen', '8', 'Road', 'Court', '28210', 'Charlotte', 'NC');
INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado) values ('Kylie Rysdale', false, 'Artisan', '7', 'Street', 'Terrace', '84110', 'Salt Lake City', 'UT');
INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado) values ('Hatty Bucklee', true, 'Jenifer', '4', 'Court', 'Plaza', '25770', 'Huntington', 'WV');
INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado) values ('Dorotea Yewdale', false, 'New Castle', '3492', 'Place', 'Parkway', '87105', 'Albuquerque', 'NM');
INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado) values ('Lanny Vales', false, 'Hovde', '279', 'Crossing', 'Pass', '77255', 'Houston', 'TX');
INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado) values ('Haven Rapley', false, 'Ridgeview', '3', 'Point', 'Pass', '33169', 'Miami', 'FL');
INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado) values ('Carlin Michal', true, 'Golf View', '22', 'Junction', 'Park', '33405', 'West Palm Beach', 'FL');
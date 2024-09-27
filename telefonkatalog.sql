CREATE DATABASE telefonkatalog;

USE telefonkatalog;

CREATE TABLE person (
    id int NOT NULL AUTO_INCREMENT,
    fornavn VARCHAR(255) NOT NULL,
    etternavn VARCHAR(255) NOT NULL,
    telefonnummer CHAR(8),
    PRIMARY KEY (id)
);

INSERT INTO person (fornavn, etternavn, telefonnummer)
VALUES ('Erik', 'Perik', '12345678');
INSERT INTO person (fornavn, etternavn, telefonnummer)
VALUES ('Lise', 'Pise', '22334455');
INSERT INTO person (fornavn, etternavn, telefonnummer)
VALUES ('Testus', 'Jensen', '11114444');
INSERT INTO person (fornavn, etternavn, telefonnummer)
VALUES ('Knut', 'Donald', '31415926');
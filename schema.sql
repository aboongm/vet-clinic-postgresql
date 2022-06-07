/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id SERIAL,
    name VARCHAR(100),
    date_of_birth DATE,
    escape_attempts INT,
    neutered BOOLEAN,
    weight_kg DECIMAL,    
    PRIMARY KEY(id)
);

/* Add species column to animal table */
ALTER TABLE animals
ADD COLUMN species VARCHAR(100);

/* Create owners table */
CREATE TABLE owners (
    id INT PRIMARY KEY,
    full_name VARCHAR(100),
    age INT
);

/* Create species table */
CREATE TABLE species (
    id INT PRIMARY KEY,
    name VARCHAR(100)
);

/* Remove species column */
ALTER TABLE animals DROP COLUMN species;

/* Add species_id in animals table referenced from species table */
ALTER TABLE animals
ADD COLUMN species_id INT REFERENCES species (id);

/* Add owners_id in animals table referenced from owners table */
ALTER TABLE animals
ADD COLUMN owners_id INT REFERENCES owners (id);
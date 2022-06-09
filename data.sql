/* Populate database with sample data. */

INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (1, 'Agumon', '2020-2-3', 0, TRUE, 10.23);
INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (2, 'Gabumon', '2018-11-15', 2, TRUE, 8.00);
INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (3, 'Pikachu', '2021-1-7', 1, FALSE, 15.04);
INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (4, 'Devimon', '2017-5-12', 5, TRUE, 11.00);

INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (5, 'Charmander', '2020-2-8', 0, FALSE, -11.00);
INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (6, 'Plantmon', '2021-11-15', 2, TRUE, -5.70);
INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (7, 'Squirtle', '1993-4-2', 3, FALSE, -12.13);
INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (8, 'Angemon', '2005-6-12', 1, TRUE, -45);
INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (9, 'Boarmon', '2005-6-7', 7, TRUE, 20.40);
INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (10, 'Blossom', '1998-10-13', 3, TRUE, 17.00);
INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES (11, 'Ditto', '2022-5-14', 4, TRUE, 22.00);

/* insert data into the owners */
INSERT INTO owners (id, full_name, age) 
VALUES 
(DEFAULT, 'Sam Smith', 34),
(DEFAULT, 'Jennifer Orwell', 19),
(DEFAULT, 'Bob', 45),
(DEFAULT, 'Melody Pond', 77),
(DEFAULT, 'Dean Winchester', 14),
(DEFAULT, 'Jodie Whittaker', 38);

/* insert data into the owners */
INSERT INTO species (id, name) 
VALUES 
(DEFAULT, 'Pokemon'),
(DEFAULT, 'Digimon');

/* update animals */
UPDATE animals SET species_id = 2 WHERE name LIKE '%mon%';
UPDATE animals SET species_id = 1 WHERE name NOT LIKE '%mon%';

UPDATE animals SET owners_id = 1 WHERE name = 'Agumon';
UPDATE animals SET owners_id = 2 WHERE name IN ('Gabumon', 'Pikachu');
UPDATE animals SET owners_id = 3 WHERE name IN ('Devimon', 'Plantmon');
UPDATE animals SET owners_id = 4 WHERE name IN ('Charmander', 'Squirtle', 'Blossom');
UPDATE animals SET owners_id = 5 WHERE name IN ('Angemon', 'Boarmon');

/* insert data into vets table */
INSERT INTO vets (id, name, age, date_of_graduation) VALUES (DEFAULT, 'William Tatcher', 45, '2000-04-23');
INSERT INTO vets (id, name, age, date_of_graduation) VALUES (DEFAULT, 'Maisy Smith', 26, '2019-01-17');
INSERT INTO vets (id, name, age, date_of_graduation) VALUES (DEFAULT, 'Stephanie Mendez', 64, '1981-05-04');
INSERT INTO vets (id, name, age, date_of_graduation) VALUES (DEFAULT, 'Jack Harkness', 38, '2008-06-08');

/* insert data into specializations */
INSERT INTO specializations (vets_id, species_id) VALUES (1, 1);
INSERT INTO specializations (vets_id, species_id) VALUES (3, 1);
INSERT INTO specializations (vets_id, species_id) VALUES (3, 2);
INSERT INTO specializations (vets_id, species_id) VALUES (4, 2);

/* insert data into visits */
INSERT INTO visits (vets_id, animals_id, date_of_visit) VALUES (1, 1, '2020-05-24');
INSERT INTO visits (vets_id, animals_id, date_of_visit) VALUES (3, 1, '2020-06-22');
INSERT INTO visits (vets_id, animals_id, date_of_visit) VALUES (4, 2, '2021-02-02');
INSERT INTO visits (vets_id, animals_id, date_of_visit) VALUES (2, 3, '2020-01-05');
INSERT INTO visits (vets_id, animals_id, date_of_visit) VALUES (2, 3, '2020-03-08');
INSERT INTO visits (vets_id, animals_id, date_of_visit) VALUES (2, 3, '2020-05-14');
INSERT INTO visits (vets_id, animals_id, date_of_visit) VALUES (3, 4, '2021-05-04');
INSERT INTO visits (vets_id, animals_id, date_of_visit) VALUES (4, 5, '2021-02-24');
INSERT INTO visits (vets_id, animals_id, date_of_visit) VALUES (2, 6, '2019-12-21');
INSERT INTO visits (vets_id, animals_id, date_of_visit) VALUES (1, 6, '2020-08-10');
INSERT INTO visits (vets_id, animals_id, date_of_visit) VALUES (2, 6, '2021-04-07');
INSERT INTO visits (vets_id, animals_id, date_of_visit) VALUES (3, 7, '2019-09-29');
INSERT INTO visits (vets_id, animals_id, date_of_visit) VALUES (4, 8, '2020-10-03');
INSERT INTO visits (vets_id, animals_id, date_of_visit) VALUES (4, 8, '2020-11-04');
INSERT INTO visits (vets_id, animals_id, date_of_visit) VALUES (2, 9, '2019-01-24');
INSERT INTO visits (vets_id, animals_id, date_of_visit) VALUES (2, 9, '2019-05-15');
INSERT INTO visits (vets_id, animals_id, date_of_visit) VALUES (2, 9, '2020-02-27');
INSERT INTO visits (vets_id, animals_id, date_of_visit) VALUES (2, 9, '2020-08-03');
INSERT INTO visits (vets_id, animals_id, date_of_visit) VALUES (3, 10, '2020-05-24');
INSERT INTO visits (vets_id, animals_id, date_of_visit) VALUES (1, 10, '2021-01-11');

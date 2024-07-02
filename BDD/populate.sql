-- Utiliser le schéma cube3_bdd
USE cube3_bdd;

-- Insertion des données dans la table promo
INSERT INTO promo (formation, annee, code_formation) VALUES
('BPI', '2023', 'CS2023'),
('DI', '2024', 'EE2024'),
('ME', '2023', 'ME2023'),
('CS', '2022', 'CS2022'),
('EE', '2021', 'EE2021'),
('ME', '2020', 'ME2020'),
('CS', '2019', 'CS2019'),
('EE', '2018', 'EE2018'),
('ME', '2017', 'ME2017'),
('CS', '2016', 'CS2016');

-- Insertion des données dans la table role
INSERT INTO role (code_role, libelle_role) VALUES
('ADM', 'Administrateur'),
('STU', 'Etudiant'),
('TCH', 'Professeur'),
('MGR', 'Manager'),
('GUE', 'Invité'),
('INT', 'Interne'),
('I', 'Intervenant'),
('SUP', 'superviseur'),
('VIS', 'Visiteur');

-- Insertion des données dans la table dates_formation
INSERT INTO dates_formation (journee) VALUES
('2024-07-01'),
('2024-07-02'),
('2024-07-03'),
('2024-07-04'),
('2024-07-05'),
('2024-07-06'),
('2024-07-07'),
('2024-07-08'),
('2024-07-09'),
('2024-07-10');

-- Insertion des données dans la table horaire
INSERT INTO horaire (horaire_debut, horaire_fin) VALUES
('08:30', '12:00'),
('13:00', '16:30');

-- Insertion des données dans la table users
INSERT INTO users (nom, prenom, mdp, email, Id_Promo) VALUES
('Smith', 'John', 'password123', 'john.smith@example.com', 1),
('Doe', 'Jane', 'password123', 'jane.doe@example.com', 2),
('Brown', 'Charlie', 'password123', 'charlie.brown@example.com', 3),
('Taylor', 'Alice', 'password123', 'alice.taylor@example.com', 4),
('Johnson', 'Bob', 'password123', 'bob.johnson@example.com', 5),
('Williams', 'Eve', 'password123', 'eve.williams@example.com', 6),
('Jones', 'Mike', 'password123', 'mike.jones@example.com', 7),
('Davis', 'Sarah', 'password123', 'sarah.davis@example.com', 8),
('Wilson', 'Paul', 'password123', 'paul.wilson@example.com', 9),
('Miller', 'Anna', 'password123', 'anna.miller@example.com', 10);

-- Insertion des données dans la table signature
INSERT INTO signature (dates_heure_signature, Id_dates_formation, Id_horaire, Id_Promo, Id_users) VALUES
('2024-01-01 08:00:00', 1, 1, 1, 1),
('2024-01-01 10:00:00', 2, 1, 2, 2),
('2024-01-02 13:00:00', 3, 2, 3, 3),
('2024-01-02 15:00:00', 4, 2, 4, 4),
('2024-01-03 08:00:00', 5, 1, 5, 5),
('2024-01-03 10:00:00', 6, 1, 6, 6),
('2024-01-04 13:00:00', 7, 2, 7, 7),
('2024-01-04 15:00:00', 8, 2, 8, 8),
('2024-01-05 08:00:00', 9, 1, 9, 9),
('2024-01-05 10:00:00', 10, 1, 10, 10);

-- Insertion des données dans la table Asso_5_1
INSERT INTO Asso_5_1 (Id_users, Id_role) VALUES
(1, 2),
(2, 2),
(3, 2),
(4, 3),
(5, 3),
(6, 1),
(7, 4),
(8, 5),
(9, 6),
(10, 7);

-- Insertion des données dans la table Asso_9
INSERT INTO Asso_9 (Id_Promo, Id_dates_formation) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

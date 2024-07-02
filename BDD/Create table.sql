CREATE TABLE promo(
   Id_Promo INT AUTO_INCREMENT,
   formation VARCHAR(10) NOT NULL,
   annee VARCHAR(50),
   code_formation VARCHAR(10),
   PRIMARY KEY(Id_Promo)
);

CREATE TABLE role(
   Id_role INT AUTO_INCREMENT,
   code_role VARCHAR(50),
   libelle_role VARCHAR(50),
   PRIMARY KEY(Id_role)
);

CREATE TABLE dates_formation(
   Id_dates_formation INT AUTO_INCREMENT,
   journee DATE,
   PRIMARY KEY(Id_dates_formation)
);

CREATE TABLE horaire(
   Id_horaire INT AUTO_INCREMENT,
   horaire_debut VARCHAR(50),
   horaire_fin VARCHAR(50),
   PRIMARY KEY(Id_horaire)
);

CREATE TABLE users(
   Id_users INT AUTO_INCREMENT,
   nom VARCHAR(30) NOT NULL,
   prenom VARCHAR(20) NOT NULL,
   mdp VARCHAR(50),
   email VARCHAR(50),
   Id_Promo INT,
   PRIMARY KEY(Id_users),
   UNIQUE(Id_Promo),
   FOREIGN KEY(Id_Promo) REFERENCES promo(Id_Promo)
);

CREATE TABLE signature(
   Id_signature INT AUTO_INCREMENT,
   dates_heure_signature DATETIME,
   Id_dates_formation INT NOT NULL,
   Id_horaire INT NOT NULL,
   Id_Promo INT NOT NULL,
   Id_users INT NOT NULL,
   PRIMARY KEY(Id_signature),
   FOREIGN KEY(Id_dates_formation) REFERENCES dates_formation(Id_dates_formation),
   FOREIGN KEY(Id_horaire) REFERENCES horaire(Id_horaire),
   FOREIGN KEY(Id_Promo) REFERENCES promo(Id_Promo),
   FOREIGN KEY(Id_users) REFERENCES users(Id_users)
);

CREATE TABLE Asso_5_1(
   Id_users INT,
   Id_role INT,
   PRIMARY KEY(Id_users, Id_role),
   FOREIGN KEY(Id_users) REFERENCES users(Id_users),
   FOREIGN KEY(Id_role) REFERENCES role(Id_role)
);

CREATE TABLE Asso_9(
   Id_Promo INT,
   Id_dates_formation INT,
   PRIMARY KEY(Id_Promo, Id_dates_formation),
   FOREIGN KEY(Id_Promo) REFERENCES promo(Id_Promo),
   FOREIGN KEY(Id_dates_formation) REFERENCES dates_formation(Id_dates_formation)
);

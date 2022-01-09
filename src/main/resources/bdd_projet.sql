CREATE TABLE Utilisateur(
                            login VARCHAR(50),
                            mdp VARCHAR(255) NOT NULL,
                            nom VARCHAR(255),
                            prénom VARCHAR(255),
                            date_de_naissance DATE,
                            statut VARCHAR(50),
                            PRIMARY KEY(login)
);

CREATE TABLE Lieu(
                     adresse VARCHAR(255),
                     dénomination VARCHAR(255),
                     coordonnées GEOMETRY,
                     login VARCHAR(50) NOT NULL,
                     PRIMARY KEY(adresse),
                     FOREIGN KEY(login) REFERENCES Utilisateur(login)
);

CREATE TABLE Activité(
                         id INT AUTO_INCREMENT,
                         nom_activité VARCHAR(255) NOT NULL,
                         heure_début DATETIME,
                         heure_fin DATETIME,
                         adresse VARCHAR(255) NOT NULL,
                         login VARCHAR(50) NOT NULL,
                         PRIMARY KEY(id),
                         FOREIGN KEY(adresse) REFERENCES Lieu(adresse),
                         FOREIGN KEY(login) REFERENCES Utilisateur(login)
);

CREATE TABLE Entourage(
                          login_entourage VARCHAR(255),
                          login VARCHAR(50) NOT NULL,
                          PRIMARY KEY(login_entourage),
                          FOREIGN KEY(login) REFERENCES Utilisateur(login)
);

CREATE TABLE Notification(
                             id INT AUTO_INCREMENT,
                             contenu VARCHAR(255),
                             login VARCHAR(50) NOT NULL,
                             PRIMARY KEY(id),
                             FOREIGN KEY(login) REFERENCES Utilisateur(login)
);
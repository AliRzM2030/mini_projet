CREATE TABLE arene(
id_arene INT PRIMARY KEY,
nom VARCHAR(80),
trophees_min INT
);

CREATE TABLE clan(
id_clan INT PRIMARY KEY,
nom VARCHAR(80),
description VARCHAR(255),
nb_max_membres INT
);

CREATE TABLE joueur(
id_joueur INT PRIMARY KEY,
pseudo VARCHAR(50),
niveau INT,
trophees INT,
or_jeu INT,
gemmes INT,
id_clan INT,
FOREIGN KEY (id_clan) REFERENCES clan(id_clan)
ON DELETE SET NULL
ON UPDATE CASCADE
);

CREATE TABLE carte(
id_carte INT PRIMARY KEY,
nom VARCHAR(80),
type_carte VARCHAR(20),
rarete VARCHAR(20),
cout_elixir INT
);

CREATE TABLE combat(
id_combat INT PRIMARY KEY,
date_combat DATE,
id_arene INT,
FOREIGN KEY (id_arene) REFERENCES arene(id_arene)
ON DELETE CASCADE
ON UPDATE CASCADE
);

CREATE TABLE deck(
id_deck INT PRIMARY KEY,
nom_deck VARCHAR(80),
id_joueur INT,
FOREIGN KEY (id_joueur) REFERENCES joueur(id_joueur)
ON DELETE CASCADE
ON UPDATE CASCADE
);

CREATE TABLE recompense(
id_recompense INT PRIMARY KEY,
or_gain INT,
gemmes_gain INT,
date_gain DATE,
id_combat INT,
id_joueur INT,
FOREIGN KEY (id_combat) REFERENCES combat(id_combat),
FOREIGN KEY (id_joueur) REFERENCES joueur(id_joueur)
);

CREATE TABLE composer(
id_deck INT,
id_carte INT,
position_carte INT,
PRIMARY KEY(id_deck,id_carte),
FOREIGN KEY(id_deck) REFERENCES deck(id_deck),
FOREIGN KEY(id_carte) REFERENCES carte(id_carte)
);

CREATE TABLE posseder(
id_joueur INT,
id_carte INT,
niveau_carte INT,
quantite INT,
PRIMARY KEY(id_joueur,id_carte),
FOREIGN KEY(id_joueur) REFERENCES joueur(id_joueur),
FOREIGN KEY(id_carte) REFERENCES carte(id_carte)
);

CREATE TABLE participer(
id_combat INT,
id_joueur INT,
role VARCHAR(10),
resultat_joueur VARCHAR(10),
trophees_variation INT,
PRIMARY KEY(id_combat,id_joueur),
FOREIGN KEY(id_combat) REFERENCES combat(id_combat),
FOREIGN KEY(id_joueur) REFERENCES joueur(id_joueur)
);

CREATE TABLE recompense_carte(
id_recompense INT,
id_carte INT,
quantite INT,
PRIMARY KEY(id_recompense,id_carte),
FOREIGN KEY(id_recompense) REFERENCES recompense(id_recompense),
FOREIGN KEY(id_carte) REFERENCES carte(id_carte)
);
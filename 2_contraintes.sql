ALTER TABLE joueur ADD CONSTRAINT pseudo_unique UNIQUE(pseudo);

ALTER TABLE joueur ADD CHECK (niveau BETWEEN 1 AND 70);
ALTER TABLE joueur ADD CHECK (trophees >= 0);
ALTER TABLE joueur ADD CHECK (or_jeu >= 0);
ALTER TABLE joueur ADD CHECK (gemmes >= 0);

ALTER TABLE clan ADD CHECK (nb_max_membres BETWEEN 1 AND 50);

ALTER TABLE carte ADD CHECK (cout_elixir BETWEEN 1 AND 10);

ALTER TABLE posseder ADD CHECK (niveau_carte BETWEEN 1 AND 15);
ALTER TABLE posseder ADD CHECK (quantite >= 0);

ALTER TABLE participer ADD CHECK (trophees_variation BETWEEN -100 AND 100);

ALTER TABLE composer ADD CHECK (position_carte BETWEEN 1 AND 8);

ALTER TABLE recompense ADD CHECK (or_gain >= 0);
ALTER TABLE recompense ADD CHECK (gemmes_gain >= 0);

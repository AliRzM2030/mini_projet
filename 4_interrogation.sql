-- joueurs avec leur clan
SELECT pseudo, nom
FROM joueur
LEFT JOIN clan ON joueur.id_clan = clan.id_clan;

-- combats avec arène
SELECT id_combat, date_combat, nom
FROM combat
JOIN arene ON combat.id_arene = arene.id_arene;

-- nombre de joueurs par clan
SELECT nom, COUNT(id_joueur)
FROM clan
JOIN joueur ON clan.id_clan = joueur.id_clan
GROUP BY nom;

-- cartes dans les decks
SELECT nom_deck, nom
FROM composer
JOIN deck ON composer.id_deck = deck.id_deck
JOIN carte ON composer.id_carte = carte.id_carte;

-- joueurs ayant gagné des récompenses
SELECT pseudo
FROM joueur
WHERE id_joueur IN (
SELECT id_joueur FROM recompense
);

# Mini-Projet Bases de Données 
#Partie 1

## Membres du groupe :
- Aliyane
- Anys

## Domaine choisi :
Notre projet se basera sur la conception d'une base de données inspirée du jeu mobile Clash Royale.


## Prompt que j'ai donné à l'ia :

Tu travailles dans le domaine de l’industrie du jeu vidéo mobile multijoueur en ligne. Ton entreprise a comme activité de développer et exploiter un jeu de stratégie compétitif en temps réel inspiré de Clash Royale. C’est une entreprise comme Supercell, Riot Games ou Ubisoft. Les données ont été collectées sur les joueurs, leurs profils, leurs ressources, les cartes du jeu, les decks utilisés, les combats réalisés, les arènes, les clans et les récompenses obtenues. Inspire-toi du site web officiel de Clash Royale et du support Supercell : https://clashroyale.com/.

Ton entreprise veut appliquer MERISE pour concevoir un système d'information. Tu es chargé de la partie analyse, c’est-à-dire de collecter les besoins auprès de l’entreprise. Elle a fait appel à un étudiant en ingénierie informatique pour réaliser ce projet, tu dois lui fournir les informations nécessaires pour qu’il applique ensuite lui-même les étapes suivantes de conception et développement de la base de données.

D’abord, établis les règles de gestions des données de ton entreprise, sous la forme d'une liste à puce. Elle doit correspondre aux informations que fournit quelqu’un qui connaît le fonctionnement de l’entreprise, mais pas comment se construit un système d’information.

Ensuite, à partir de ces règles, fournis un dictionnaire de données brutes avec les colonnes suivantes, regroupées dans un tableau : signification de la donnée, type, taille en nombre de caractères ou de chiffres. Il doit y avoir entre 25 et 35 données. Il sert à fournir des informations supplémentaires sur chaque donnée (taille et type) mais sans a priori sur comment les données vont être modélisées ensuite.

Fournis donc les règles de gestion et le dictionnaire de données.


## Règles de gestion

- Un joueur est identifié par un identifiant unique et possède un pseudo.
- Un joueur possède un niveau et un nombre de trophées représentant sa progression dans le jeu.
- Un joueur possède une quantité d’or et de gemmes qui représentent les ressources du jeu.
- Un joueur peut appartenir à un clan, mais il peut aussi ne pas appartenir à un clan.
- Un clan possède un identifiant unique, un nom, une description et un nombre maximal de membres.
- Un clan peut contenir plusieurs joueurs mais ne peut pas dépasser son nombre maximal de membres.

- Une carte est identifiée par un identifiant unique.
- Une carte possède un nom, un type, une rareté et un coût en élixir.
- Un joueur peut posséder plusieurs cartes.
- Une carte peut être possédée par plusieurs joueurs.
- Pour chaque carte possédée par un joueur, on enregistre le niveau de la carte et la quantité possédée.

- Un joueur peut créer plusieurs decks.
- Un deck possède un identifiant unique et un nom.
- Un deck appartient obligatoirement à un joueur.
- Un deck est composé de plusieurs cartes.
- La position d’une carte dans un deck est enregistrée.

- Un combat est identifié par un identifiant unique et possède une date.
- Un combat se déroule dans une arène.
- Une arène possède un identifiant, un nom et un nombre minimum de trophées requis.
- Un combat implique plusieurs joueurs.
- Pour chaque joueur dans un combat, on enregistre son rôle, son résultat et la variation de trophées.

- Un joueur peut obtenir des récompenses après un combat.
- Une récompense possède un identifiant et une date d’obtention.
- Une récompense peut contenir de l’or, des gemmes ou des cartes.


## Dictionnaire de données

| Signification de la donnée | Type | Taille |
|---|---|---|
| Identifiant unique du joueur | entier | 10 |
| Pseudo du joueur | texte | 30 |
| Niveau du joueur | entier | 2 |
| Nombre de trophées du joueur | entier | 5 |
| Quantité d'or possédée par le joueur | entier | 10 |
| Quantité de gemmes possédées par le joueur | entier | 6 |
| Identifiant du clan | entier | 10 |
| Nom du clan | texte | 30 |
| Description du clan | texte | 200 |
| Nombre maximum de membres dans un clan | entier | 2 |
| Identifiant de la carte | entier | 10 |
| Nom de la carte | texte | 30 |
| Type de la carte | texte | 20 |
| Rareté de la carte | texte | 20 |
| Coût en élixir de la carte | entier | 2 |
| Niveau d'une carte possédée | entier | 2 |
| Quantité d'une carte possédée | entier | 4 |
| Identifiant du deck | entier | 10 |
| Nom du deck | texte | 30 |
| Position d'une carte dans un deck | entier | 2 |
| Identifiant du combat | entier | 10 |
| Date du combat | date | 10 |
| Rôle du joueur dans un combat | texte | 20 |
| Résultat du joueur dans un combat | texte | 10 |
| Variation de trophées après un combat | entier | 4 |
| Identifiant de l'arène | entier | 10 |
| Nom de l'arène | texte | 30 |
| Nombre minimum de trophées pour accéder à l'arène | entier | 5 |
| Identifiant de la récompense | entier | 10 |
| Date d'obtention d'une récompense | date | 10 |


##Screen MCD (looping) :


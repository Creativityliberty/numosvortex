# ᪥ LEARNED PATTERNS — VORTEX NUMOS
**Mémoire Apprise | Lionel Tagne — numtemaagency.com**

---

## Comment Utiliser Ce Fichier

1. Vérifier ICI avant de créer de nouveaux agents
2. Matcher par contexte : domaine + niveau utilisateur + type de tâche
3. Vérifier les anti-patterns pour éviter les erreurs connues
4. Mettre à jour après chaque interaction significative

## Comment Mettre à Jour

> CRITIQUE : Après modification, repackager le skill.
> Sinon les patterns ne persistent pas.

### Ajouter un Pattern (ce qui a marché)

```
### [Nom du Pattern]
**Déclencheurs** : [contexte utilisateur / domaine / type tâche]
**Config Efficace** :
  - Agent principal : ᪥N-[XX]
  - Technique : [ce qui a fonctionné]
  - Style : [approche communication]
**Ce Qui A Marché** :
  - [approche spécifique]
  - [question clarificatrice efficace]
```

### Ajouter un Anti-Pattern (ce qui a échoué)

```
### [Nom de l'Anti-Pattern]
**Déclencheurs** : [quand ce piège survient]
**L'Erreur** : [ce qui a mal tourné]
**Pourquoi** : [cause racine]
**À La Place** : [approche correcte]
```

---

## Patterns Efficaces

### Entrepreneur Non-Technique avec Capital
**Déclencheurs** : utilisateur mentionne budget / investissement / pas dev
**Config Efficace** :
  - Agent principal : ᪥N-01 puis ᪥N-06
  - Technique : Commencer par timing + exécution sans tech avancée
  - Style : Concret, étapes courtes, zéro jargon tech
**Ce Qui A Marché** :
  - Demander "qu'est-ce que tu saurais faire demain matin ?" avant toute idée
  - Filtrer d'abord par compétences réelles, pas par intérêt

### Idée dans Secteur Réglementé
**Déclencheurs** : finance, santé, éducation, immobilier, alimentation
**Config Efficace** :
  - Agent principal : ᪥N-02 obligatoire en premier
  - Technique : Cartographier les risques réglementaires avant scoring
  - Style : Prudent, citer les contraintes légales explicitement
**Ce Qui A Marché** :
  - Identifier le régulateur clé du secteur dès Node 1
  - Score FR automatiquement +20 si réglementation incertaine

---

## Anti-Patterns (Ce Qu'il Faut Éviter)

### Générer Sans Profil Complet
**Déclencheurs** : utilisateur dit "donne-moi juste une idée"
**L'Erreur** : Sauter la phase d'ouverture et générer immédiatement
**Pourquoi** : L'idée générée ne correspond pas au profil réel → perte de temps
**À La Place** : Toujours collecter les 5 données obligatoires d'abord

### Présenter Idées Rejetées par ᪥N-02
**Déclencheurs** : Idée séduisante narrativement mais fragile structurellement
**L'Erreur** : Présenter l'idée car elle "semble bien" avant le stress test
**Pourquoi** : L'utilisateur s'y attache avant de voir les failles → résistance
**À La Place** : ᪥N-02 obligatoire avant toute présentation

### Scoring Sans Données Suffisantes
**Déclencheurs** : Idée avec moins de 3 dimensions analysées
**L'Erreur** : Calculer le NUMOS SCORE avec des estimations vagues
**Pourquoi** : Score non fiable → mauvaise prioritisation
**À La Place** : Activer au minimum N-01 + N-02 + N-06 avant scoring


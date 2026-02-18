# ᪥ SCORING ENGINE — VORTEX NUMOS
### Moteur de Scoring Objectif par Idée
**Conçu par Lionel Tagne — numtemaagency.com**

---

## PRINCIPE

Chaque idée survivante au pipeline DAG reçoit un **NUMOS SCORE** — une évaluation objective sur 3 dimensions + un score global.

Ce scoring n'est pas décoratif. Il **détermine** :
- Si l'idée est présentable à l'utilisateur
- Quelle idée prioriser en premier
- Quel risque annoncer clairement

---

## LES 3 DIMENSIONS DE SCORING

### 1. SCORE ASYMÉTRIE (AS) — /100

Mesure le **levier potentiel** : combien un petit input peut générer comme output.

| Critère | Points |
|---------|--------|
| L'idée crée un avantage qui s'auto-renforce (réseau, données, brand, régulation) | 0-25 |
| Coût d'entrée faible vs impact potentiel massif | 0-20 |
| Actifs ou connaissances rares / difficilement copiables | 0-20 |
| Dynamique non-linéaire identifiable (effet boule de neige) | 0-20 |
| Arbitrage invisible que peu d'acteurs voient aujourd'hui | 0-15 |

**Seuil minimum pour publication : AS ≥ 50**

Interprétation :
- AS 80-100 → Asymétrie explosive — levier structurel fort
- AS 60-79 → Asymétrie solide — avantage défendable
- AS 40-59 → Asymétrie faible — structure ordinaire
- AS < 40 → Rejet automatique

---

### 2. SCORE FRAGILITÉ (FR) — /100

Mesure la **résistance aux chocs** : plus le score est bas, plus l'idée est fragile.

> Score fragilité bas = idée robuste. Score fragilité haut = idée à risque.

| Critère | Points de fragilité ajoutés |
|---------|----------------------------|
| Dépend d'une technologie non mature | +20 |
| Dépend d'un comportement utilisateur non prouvé | +15 |
| Nécessite un changement réglementaire incertain | +20 |
| Modèle économique avec une seule source de revenus | +15 |
| Compétiteur établi peut copier en < 12 mois | +15 |
| Fondateur unique sans équipe complémentaire | +10 |
| Pas de validation marché minimale identifiable | +5 |

**Seuil maximum pour publication : FR ≤ 60**

Interprétation :
- FR 0-20 → Très robuste — peu de points de rupture
- FR 21-40 → Solide avec risques gérables
- FR 41-60 → Fragile — risques à mitiger activement
- FR > 60 → Rejet ou reformulation obligatoire

---

### 3. SCORE RARETÉ (RA) — /100

Mesure le **degré de non-évidence** : à quel point cette idée est introuvable ailleurs.

| Critère | Points |
|---------|--------|
| Concept absent des 50 premières recherches Google | 0-25 |
| Combinaison de domaines qui n'ont jamais été croisés | 0-20 |
| Provient d'une anomalie peu connue du secteur | 0-20 |
| Contre-intuitif par rapport aux croyances dominantes | 0-20 |
| Déclenche la réaction "pourquoi personne ne fait ça ?" | 0-15 |

**Seuil minimum pour publication : RA ≥ 55**

Interprétation :
- RA 80-100 → Idée rarissime — 1% génie humain confirmé
- RA 60-79 → Rare — non évidente pour la majorité
- RA 40-59 → Peu différenciée — risque de ressembler à l'existant
- RA < 40 → Rejet automatique

---

## CALCUL DU NUMOS SCORE GLOBAL

```
NUMOS_SCORE = (AS × 0.40) + ((100 - FR) × 0.30) + (RA × 0.30)
```

Pondération :
- Asymétrie : 40% (levier économique = facteur dominant)
- Robustesse (inverse fragilité) : 30%
- Rareté : 30%

**Seuils de publication :**

| Score Global | Statut | Action |
|-------------|--------|--------|
| ≥ 75 | ᪥ VALIDÉE — Idée d'exception | Présenter en priorité |
| 60-74 | ᪥ SOLIDE — À explorer sérieusement | Présenter avec réserves |
| 45-59 | ᪥ FRAGILE — Reformuler ou approfondir | Ne pas présenter sans reformulation |
| < 45 | ᪥ REJETÉE | Élimination silencieuse |

---

## FORMAT D'AFFICHAGE DU SCORE

Pour chaque idée présentée, afficher :

```
╔══════════════════════════════════════════════╗
║  ᪥ NUMOS SCORE : [NOM DE L'IDÉE]            ║
╠══════════════════════════════════════════════╣
║  Asymétrie (AS)   : [XX]/100  [████████░░]  ║
║  Fragilité (FR)   : [XX]/100  [████░░░░░░]  ║
║  Rareté (RA)      : [XX]/100  [███████░░░]  ║
╠══════════════════════════════════════════════╣
║  NUMOS SCORE      : [XX]/100                ║
║  STATUT           : ᪥ VALIDÉE / SOLIDE /    ║
║                     FRAGILE / REJETÉE        ║
╠══════════════════════════════════════════════╣
║  Agent principal  : ᪥N-[XX]                 ║
║  Risque dominant  : [1 phrase]               ║
║  Timing           : [Maintenant / X mois]    ║
╚══════════════════════════════════════════════╝
```

---

## RÈGLES D'APPLICATION

1. **Scoring obligatoire** pour toute idée atteignant Node 7 du pipeline DAG
2. **Score calculé APRÈS** le passage par ᪥N-02 (Investisseur Hostile)
3. Les points de fragilité identifiés par ᪥N-02 alimentent directement le score FR
4. Si NUMOS_SCORE < 45 → enregistrer dans `pistes_rejetees` avec raison
5. Présenter **maximum 3 idées** par session, classées par score décroissant
6. Toujours annoncer le risque dominant avec l'idée

---

## INTÉGRATION JSON

Le scoring est inclus dans chaque objet idée du JSON output.
Voir `references/json-output.md` pour le schéma complet.

---

*VORTEX NUMOS — Scoring Engine v1.0*
*Lionel Tagne — numtemaagency.com*

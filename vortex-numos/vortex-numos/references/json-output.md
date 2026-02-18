# ᪥ JSON OUTPUT — VORTEX NUMOS
### Schéma JSON Strict pour Intégration API
**Conçu par Lionel Tagne — numtemaagency.com**

---

## ACTIVATION

Le mode JSON strict s'active quand :
- L'utilisateur demande explicitement un output JSON
- Le contexte est une intégration API / développement
- La demande contient : "json", "api", "intégration", "export", "structuré"

En mode JSON strict : **UNIQUEMENT le JSON en output. Zéro texte libre.**

---

## SCHÉMA COMPLET

```json
{
  "vortex_numos": {
    "version": "1.0",
    "session_id": "string — UUID généré",
    "timestamp": "string — ISO 8601",
    "auteur": "Lionel Tagne",
    "source": "numtemaagency.com"
  },

  "profil_utilisateur": {
    "competences": "string",
    "ressources": "string",
    "tolerance_risque": "conservateur | modere | eleve | extreme",
    "horizon": "court_terme | moyen_terme | long_terme",
    "type_impact": "financier | societal | civilisationnel | technologique | liberte",
    "contraintes": ["string"]
  },

  "numos_store_snapshot": {
    "anomalies_detectees": ["string"],
    "angles_morts": ["string"],
    "pistes_rejetees": [
      {
        "nom": "string",
        "raison_rejet": "string",
        "score_echec": "number"
      }
    ],
    "risques_structuraux_globaux": ["string"],
    "insights_rares": ["string"]
  },

  "idees": [
    {
      "id": "string — NUMOS-[SESSION_ID]-[INDEX]",
      "nom": "string — Nom conceptuel fort, non cliché",
      "statut": "VALIDEE | SOLIDE | FRAGILE | REJETEE",
      "agent_principal": "N-01 | N-02 | N-03 | N-04 | N-05 | N-06",
      "agents_mobilises": ["string"],

      "these_strategique": {
        "insight_rare": "string — Vérité non évidente qui rend cela possible",
        "probleme_fondamental": "string — Friction humaine/économique ciblée",
        "mecanisme_non_trivial": "string — Pourquoi la structure est différente",
        "avantage_structurel": "string — Pourquoi peu d'acteurs peuvent rivaliser",
        "logique_de_puissance": "string — Comment cela devient défendable ou explosif",
        "fenetre_timing": {
          "verdict": "maintenant | dans_X_mois | trop_tot | trop_tard",
          "raison": "string",
          "horizon_optimal": "string"
        },
        "premier_mouvement": "string — Point d'entrée réaliste adapté au profil"
      },

      "numos_score": {
        "asymetrie": {
          "score": "number — 0 à 100",
          "details": {
            "avantage_auto_renforçant": "number — 0 à 25",
            "ratio_cout_impact": "number — 0 à 20",
            "actifs_rares": "number — 0 à 20",
            "dynamique_non_lineaire": "number — 0 à 20",
            "arbitrage_invisible": "number — 0 à 15"
          },
          "interpretation": "string"
        },
        "fragilite": {
          "score": "number — 0 à 100 (bas = robuste)",
          "points_de_rupture": [
            {
              "type": "string",
              "score_ajoute": "number",
              "mitigation": "string"
            }
          ],
          "interpretation": "string"
        },
        "rarete": {
          "score": "number — 0 à 100",
          "details": {
            "absent_recherches": "number — 0 à 25",
            "croisement_domaines": "number — 0 à 20",
            "anomalie_source": "number — 0 à 20",
            "contre_intuitif": "number — 0 à 20",
            "reaction_pourquoi_personne": "number — 0 à 15"
          },
          "interpretation": "string"
        },
        "score_global": "number — calculé (AS×0.4) + ((100-FR)×0.3) + (RA×0.3)",
        "formule_appliquee": "string — détail du calcul",
        "seuil_atteint": "EXCEPTION | SOLIDE | FRAGILE | REJETEE",
        "risque_dominant": "string — 1 phrase résumé du risque principal"
      },

      "debat_interne": {
        "these": "string — argument construction",
        "antithese": "string — attaque principale N-02",
        "reconciliation": "string — reformulation après débat"
      },

      "plan_premier_mouvement": {
        "etape_1": {
          "description": "string",
          "duree": "string",
          "ressources_necessaires": "string",
          "milestone": "boolean"
        },
        "etape_2": {
          "description": "string",
          "duree": "string",
          "ressources_necessaires": "string",
          "milestone": "boolean"
        },
        "etape_3": {
          "description": "string",
          "duree": "string",
          "ressources_necessaires": "string",
          "milestone": "boolean"
        }
      }
    }
  ],

  "classement_final": [
    {
      "rang": "number",
      "id_idee": "string",
      "nom": "string",
      "score_global": "number",
      "raison_priorite": "string"
    }
  ],

  "validation_globale": {
    "nb_idees_generees": "number",
    "nb_idees_rejetees": "number",
    "nb_idees_presentees": "number",
    "score_moyen_session": "number",
    "qualite_session": "ELITE | HAUTE | STANDARD | FAIBLE",
    "patterns_detectes": ["string"],
    "recommendation_next_session": "string"
  },

  "meta": {
    "pipeline_nodes_executes": ["string"],
    "agents_convoques": ["string"],
    "duree_analyse_estimee": "string",
    "store_enrichi": "boolean",
    "patterns_appris_ajoutes": "number"
  }
}
```

---

## EXEMPLE D'OUTPUT MINIMAL (1 idée)

```json
{
  "vortex_numos": {
    "version": "1.0",
    "session_id": "VN-2026-0218-001",
    "timestamp": "2026-02-18T10:00:00Z",
    "auteur": "Lionel Tagne",
    "source": "numtemaagency.com"
  },
  "idees": [
    {
      "id": "NUMOS-VN-2026-0218-001-1",
      "nom": "Nom Conceptuel Fort",
      "statut": "VALIDEE",
      "agent_principal": "N-04",
      "numos_score": {
        "asymetrie": { "score": 78 },
        "fragilite": { "score": 32 },
        "rarete": { "score": 71 },
        "score_global": 75.2,
        "seuil_atteint": "EXCEPTION",
        "risque_dominant": "Dépendance à un comportement utilisateur non encore validé"
      }
    }
  ],
  "validation_globale": {
    "nb_idees_presentees": 1,
    "qualite_session": "ELITE"
  }
}
```

---

## RÈGLES JSON STRICT

1. Zéro texte libre hors JSON en mode API
2. Tous les champs `number` entre 0 et 100
3. `score_global` calculé selon formule exacte
4. `session_id` unique par conversation
5. `pistes_rejetees` toujours peuplé (traçabilité)
6. Maximum 3 idées par output (`idees` array max length = 3)
7. `classement_final` toujours trié par `score_global` décroissant

---

*VORTEX NUMOS — JSON Schema v1.0*
*Lionel Tagne — numtemaagency.com*

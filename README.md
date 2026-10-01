
# Dynamique Salariale et Données de Panel (PSID)

## Contexte
Analyse économétrique des déterminants du salaire à partir des données du Panel Study of Income Dynamics (PSID). L'étude porte sur un échantillon longitudinal de $N=595$ individus américains suivis sur $T=7$ années (1976-1982)[cite: 4, 5].

**Objectif :** Quantifier l'impact de l'expérience, de l'éducation et des caractéristiques démographiques sur la rémunération tout en corrigeant l'endogénéité et l'inertie temporelle[cite: 4].

## Modèle Théorique de Base
L'équation de salaire intègre l'hypothèse de rendement marginal décroissant de l'expérience[cite: 4] :
$$w_{i,t} = \beta_0 + \beta_1 \text{exp}_{i,t} + \beta_2 \text{exp}^2_{i,t} + \beta_3 \text{educ}_{i,t} + \beta_4 \text{union}_{i,t} + \beta_5 \text{blk}_{i,t} + \beta_6 \text{fem}_{i,t} + \varepsilon_{i,t}$$

## Stack Technique & Packages
* **Langage :** R[cite: 4, 5]
* **Packages économétriques :** `plm`, `panelr`, `lmtest`, `sandwich`, `boot`[cite: 4]

## Méthodologie Économétrique
1. **Spécification des Effets :** Comparaison des modèles MCO, à effets aléatoires et à effets fixes (Within), validée par le test de Hausman[cite: 4].
2. **Inférence Robuste :** Détection de l'hétéroscédasticité (Breusch-Pagan), de l'autocorrélation (Wooldridge) et de la dépendance transversale (Pesaran)[cite: 4]. Application des corrections d'écarts-types de White et Driscoll-Kraay (HC0, HC3, HC4)[cite: 4].
3. **Traitement des Variables Invariantes :** Implémentation du modèle de Hausman-Taylor pour corriger l'endogénéité et estimer l'effet des variables fixes dans le temps (genre, origine ethnique, éducation) absorbées par les effets fixes standards[cite: 4].
4. **Modélisation Dynamique :** Estimation via la méthode des moments généralisés (GMM) d'Arellano-Bond en différences premières pour capter la forte inertie temporelle des salaires (dépendance au salaire retardé)[cite: 4].

## Fichiers du projet
* `Groupe_rho_RapportFinal.Rmd` : Notebook contenant la modélisation complète, les tests statistiques et les visualisations[cite: 4].
* `Analyse et stats.R` : Script d'extraction et de description de la base de données WageData[cite: 5].

# DEROO PAUL, LAMEAU THOMAS, TIGHIDET ISLAM
# DETERMINANTS DU SALAIRES

# Accroche : 
# Nous cherchons à mettre en évidence des déterminants du salaires et à quantifier 
# l'impact de ces déterminants. 


## Base de données 

# Notre étude est basé sur des données du Panel Study of Income Dynamics (PSID) 
# concernants les revenus et des caractiristiques démographiques de 595 individus
# Américains entre les années 1976 et 1982.  

# Vous pouvez accéder à la base de donnée via le code suivant :
install.packages("panelr")
library(panelr)
data(package = "panelr")
data("WageData", package = "panelr")

## 1. Description des données

# Dans cette base de données nous trouvons les variables suivantes :

# id : Identifiant unique pour chaque répondant de l'enquête.
# t : Numéro correspondant à chaque vague de l'enquête, de 1 à 7.
# wks : Nombre de semaines travaillées au cours de l'année précédente.
# lwage : Logarithme naturel des revenus de l'année précédente.
# union : Indicateur binaire indiquant si le répondant est membre d'un syndicat (1 = membre).
# ms : Indicateur binaire indiquant si le répondant est marié (1 = marié).
# occ : Indicateur binaire indiquant si le répondant est un travailleur en col blanc (= 1) ou en col bleu (= 0).
# ind : Indicateur binaire indiquant si le répondant travaille dans le secteur manufacturier (= 1).
# south : Indicateur binaire indiquant si le répondant réside dans le Sud des États-Unis (= 1).
# smsa : Indicateur binaire indiquant si le répondant vit dans une zone métropolitaine standard (SMSA; = 1).
# fem : Indicateur binaire indiquant si le répondant est une femme (= 1).
# blk : Indicateur binaire indiquant si le répondant est Afro-Américain (= 1).
# ed : Nombre d'années d'éducation.
# exp : Nombre d'années d'expérience professionnelle.



# 🚀 Expérience PageRank Performance on GCP with Pig and PySpark

## 🎓 Faculté des Sciences et des Techniques - Nantes Université

---

**Description**: Ce dépôt fournit des directives étape par étape et des scripts pour configurer et exécuter un cluster Hadoop/Spark sur Google Cloud Platform (GCP). L'objectif principal est d'utiliser Pig et PySpark pour l'implémentation de PageRank.

### 📚 Gestion des données distribuées à large échelle

- **Professeur**: M. MOLLI Pascal  
- **Étudiants**:
  - ASRIR Imrane
  - JBARI Khaoula
  - AJOUTATE Safae

---

## 📘 PageRank - Comparaison entre Pig et PySpark  

**Consigne**: [Consultez les détails de la consigne ici](https://madoc.univ-nantes.fr/mod/assign/view.php?id=1523335)


## 📚 Table of Contents
- [**Setting Up on GCP**](./setup/gcp_setup.md)
- [**Hadoop and Spark Installation & Configuration**](./setup/hadoop_spark_setup.md)



## 🚀 Running PageRank

### 🐖 Pig

📁 **Directory**: `scripts/pig/`   
🔧 **Command**: Use `run_pagerank.sh` to initiate the PageRank computation.

| Nombre de nœuds | Temps d'exécution | Dataproc Job ID |
|:---------------:|:-----------------:|:---------------:|
| 2               | 1h 22min          | `8adfa467418740639f80428886007559` |
| 3               | 1h 10min          | `104ad0ee059d84dd7a108cb95c23387e1` |
| 4               | 58min 15s         | `4ecdd4e131e154d38b3e193019ed9cb09` |
| 5               | 51min 13s         | `d273d8af8251a474fa55d3a6cbbb3d87be` |

### 🔥 PySpark

📁 **Directory**: `scripts/pyspark/`   
🔧 **Command**: Use `run.sh` to initiate the PageRank computation.

| Nombre de nœuds | Temps d'exécution | Dataproc Job ID |
|:---------------:|:-----------------:|:---------------:|
| 2               | 1h 5min           | `d197e9a75eb84e728f168ce07d1b2849` |
| 3               | 54min 8s          | `efb42eb6d08847768a6543a5ee8c7176` |
| 4               | 48min 31s         | `dcc9ddf87ec74685b960af7eef3763ea` |
| 5               | 49min 39s         | `2b2acb5c8bd7c41b4bb50232d9ecc0bd` |

## 📊 Comparaison entre Pig et PySpark


![Comparaison Pig vs PySpark](./graph/trinket_plot.png)

*Le graphique ci-dessus montre la comparaison des temps d'exécution entre Pig et PySpark sur différents nombres de nœuds. Il est clair que la performance varie en fonction du nombre de nœuds et de la technologie utilisée.*

### Tendance générale
- 📈 L'augmentation du nombre de nœuds réduit généralement le temps d'exécution pour les deux frameworks.

### Performance de Pig vs PySpark
- **Avec 2 nœuds** : Pig est plus lent que PySpark de 17 minutes.
- **Avec 3 nœuds** : Pig est en retard de 16 minutes par rapport à PySpark.
- **Avec 4 nœuds** : Pig est en retard de 9 minutes et 16 secondes par rapport à PySpark.
- **Avec 5 nœuds** : Pig est en avance de 1 minute et 26 secondes par rapport à PySpark.

### Efficacité de l'ajout de nœuds
- **Pour Pig** : En passant de 2 à 5 nœuds, le temps d'exécution est réduit de 31 minutes. L'effet le plus significatif est observé entre 2 et 3 nœuds avec une réduction de 12 minutes.
- **Pour PySpark** : La réduction du temps d'exécution est plus régulière, passant de 1h 5min à 49min 39s avec l'ajout de nœuds. La plus grande différence est observée entre 2 et 3 nœuds avec une réduction de 11 minutes.

### 📍 Points clés:
 
1. L'augmentation du nombre de nœuds favorise une exécution plus rapide pour les deux frameworks. Cela met en évidence l'importance de la parallélisation dans les traitements de données.
2. Pig semble être un peu plus variable dans ses améliorations avec l'ajout de nœuds, alors que PySpark montre une tendance plus constante à réduie le temps d'exécution.
3. Intéressant à noter, avec 5 nœuds, Pig parvient à surpasser PySpark, même si ce n'est que d'une petite marge.

## 🎯 Conclusion

Alors que PySpark domine en termes de performance dans la plupart des configurations, Pig semble avoir des moments où il peut être compétitif ou même surpasser PySpark, comme vu avec 5 nœuds. Cela souligne l'importance de tester et d'optimiser les configurations en fonction des besoins spécifiques de chaque situation. Il est essentiel de réaliser des tests pratiques pour déterminer le meilleur framework à utiliser selon le contexte
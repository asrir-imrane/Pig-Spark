# Hadoop/Spark Cluster on GCP with Pig and PySpark 🚀

Ce repo fournit des directives étape par étape et des scripts pour configurer et exécuter un cluster Hadoop/Spark sur Google Cloud Platform (GCP) en utilisant Pig et PySpark pour l'implémentation de PageRank.

## 📚 Table of Contents
- [**Setting Up on GCP**](./setup/gcp_setup.md)
- [**Hadoop and Spark Installation & Configuration**](./setup/hadoop_spark_setup.md)
- [**Running PageRank with Pig and PySpark**](## 🚀 Running PageRank)


## 🚀 Running PageRank

### 🐖 Pig

📁 **Directory**: `scripts/pig/`   
🔧 **Command**: Use `run_pagerank.sh` to initiate the PageRank computation.

| Nombre de nœuds | Temps d'exécution | Dataproc Job ID |
|:---------------:|:-----------------:|:---------------:|
| 2               | 1h 5min           | `d197e9a75eb84e728f168ce07d1b2849` |
| 3               | 58min 8s          | `efb42eb6d08847768a6543a5ee8c7176` |
| 4               | 48min 31s         | `dcc9ddf87ec74685b960af7eef3763ea` |
| 5               | 41min 39s         | `2b2acb5c8bd7c41b4bb50232d9ecc0bd` |

### 🔥 PySpark

| Nombre de nœuds | Temps d'exécution | Dataproc Job ID |
|:---------------:|:-----------------:|:---------------:|
| 2               | 1 h 22 min        | `8adfa467418740639f80428886007559` |
| 3               | 1 h 3 min         | `104ad0ee059d84dd7a108cb95c23387e1` |
| 4               | 58 min 15 s       | `4ecdd4e131e154d38b3e193019ed9cb09` |
| 5               | 59 min 13 s       | `d273d8af8251a474fa55d3a6cbbb3d87be` |

## 📊 Comparaison entre Pig et PySpark

![Comparaison Pig vs PySpark](./graph/trinket_plot.png)

## 💡 Analyse

### Tendance générale
- 📈 L'augmentation du nombre de nœuds réduit généralement le temps d'exécution pour les deux frameworks.

### Performance de Pig vs PySpark
- **Avec 2 nœuds** : Pig est légèrement plus rapide que PySpark.
- **Avec 3 nœuds** : Pig a une avance notable sur PySpark.
- **Avec 4 nœuds** : L'écart entre Pig et PySpark se réduit.
- **Avec 5 nœuds** : PySpark rattrape presque Pig.

### Efficacité de l'ajout de nœuds
- **Pour Pig** : Mise à l'échelle efficace avec des nœuds supplémentaires.
- **Pour PySpark** : Amélioration jusqu'à 4 nœuds, plateau à 5 nœuds.

### 📍 Points clés:
1. Meilleure parallélisation avec plus de nœuds.
2. Pig a une performance supérieure au début.
3. PySpark rattrape Pig avec l'ajout de nœuds.

## 🎯 Conclusion:

Pig a une meilleure performance initiale, mais PySpark se rapproche avec plus de nœuds. Il est crucial de tester ces frameworks avec diverses tâches et paramètres pour une évaluation complète.

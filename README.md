# Hadoop/Spark Cluster on GCP with Pig and PySpark

This repository provides step-by-step guidelines and scripts to set up and run a Hadoop/Spark cluster on Google Cloud Platform (GCP) using Pig and PySpark for PageRank implementation.

## Table of Contents:
- [Setting Up on GCP](./setup/gcp_setup.md)
- [Hadoop and Spark Installation & Configuration](./setup/hadoop_spark_setup.md)
- [Running PageRank with Pig and PySpark](#running-pagerank)
- [Monitoring Performance](./monitoring/performance_monitoring.md)

## Running PageRank

### Pig

Navigate to `scripts/pig/` and use `run_pagerank.sh` to initiate the PageRank computation.


| Number of Nodes (Nombre de nœuds) | Execution Time (Temps d'exécution) | Dataproc Job ID             |
|----------------------------------|-----------------------------------|-----------------------------|
| 2                                | 1h 5min                          | d197e9a75eb84e728f168ce07d1b2849 |
| 3                                | 58min 8s                         | efb42eb6d08847768a6543a5ee8c7176 |
| 4                                | 48min 31s                        | dcc9ddf87ec74685b960af7eef3763ea |
| 5                                | 41min 39s                        | 2b2acb5c8bd7c41b4bb50232d9ecc0bd |

### PySpark




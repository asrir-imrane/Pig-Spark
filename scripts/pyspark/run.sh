
#!/bin/bash
##create bucket
gsutil mb gs://pagerank2/

## copy data
gsutil cp gs://public_lddm_data/page_links_en.nt.bz2 gs://pagerank2/

## copy PySpark code
gsutil cp pagerank.py gs://pagerank2/


## run
## (suppose that out directory is empty !!)
gcloud dataproc jobs submit pyspark --region us-central1 --cluster cluster-spark gs://pagerank1/pagerank.py -- gs://public_lddm_data/page_links_en.nt.bz2 3

## access results
gsutil cat gs://pagerank/pyspark_result_*
gsutil cat gs://pagerank/top_pagerank_*

## delete cluster...
gcloud dataproc clusters delete cluster-a35a --region us-central1
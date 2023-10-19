
for i in {1..3}
do
   gcloud dataproc jobs submit pig --cluster=cluster-51a1 --region=us-central1 --file=PageRank.pig
   # Mettez à jour les chemins d'entrée/sortie selon l'itération
done

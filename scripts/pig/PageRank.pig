edges = LOAD 'gs://pig_spark/page_links_en.nt.bz2' USING PigStorage('\t') AS (source:chararray, destination:chararray);
pages = FOREACH edges GENERATE source, 1.0 AS pagerank;

-- Calculate the count of destinations for each source
destination_count = GROUP edges BY source;
destination_count = FOREACH destination_count GENERATE group AS source, COUNT(edges.destination) AS total_destinations;

-- Join this count with your pages and edges
contributions_with_count = JOIN edges BY source, pages BY source, destination_count BY source;

-- Calculate the contribution
contributions = FOREACH contributions_with_count GENERATE edges::destination AS destination, pages::pagerank / destination_count::total_destinations AS contribution;

-- Group by destination and sum up contributions
grouped_contributions = GROUP contributions BY destination;
new_pageranks = FOREACH grouped_contributions GENERATE group AS destination, SUM(contributions.contribution) * 0.85 + 0.15 AS pagerank;

-- Store the result
STORE new_pageranks INTO 'gs://pig_spark/output_iteration_1';

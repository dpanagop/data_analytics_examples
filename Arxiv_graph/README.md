# arXiv meatadata analysis with neo4j

This folder contains Python code for:
-  extracting (scraping) metadata from arXiv
-  importing them in neo4j graph database,
-  perform analysis on them.

In especial,
* [Scrap Arxiv and insert to Neo4j v1.ipynb](https://github.com/dpanagop/data_analytics_examples/blob/master/Arxiv_graph/Scrap%20Arxiv%20and%20insert%20to%20Neo4j%20v1.ipynb) is a jupyter notebook that extracts (scraps) data from arXiv and imports them in neo4j graph database. The extracted data are alos stored in an excel file [arxiv_math_20220301.xlsx](https://github.com/dpanagop/data_analytics_examples/blob/master/Arxiv_graph/arxiv_math_20220301.xlsx) and in a pickle file [arxiv_df.pkl](https://github.com/dpanagop/data_analytics_examples/blob/master/Arxiv_graph/arxiv_df.pkl).
* [Embedding v2.ipynb](https://github.com/dpanagop/data_analytics_examples/blob/master/Arxiv_graph/Embedding%20v2.ipynb) does the analysis. The main highlights, are creating a node embedding with node2vec and using the result with k-means and UMAP.
* [display_graph.html](https://github.com/dpanagop/data_analytics_examples/blob/master/Arxiv_graph/display_graph.html) uses neovis.js to produce a graph the that depicts the relationship between different Mathematics subject classifications.
* [graph-dbms-neo4j-Mar-18-2022-17-13-25.dump](graph-dbms-neo4j-Mar-18-2022-17-13-25.dump) is a dump of the neo4j database.

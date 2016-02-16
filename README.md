# CsvToGraph

R scripts for CSV conversions to Graphviz graphs. Nothing for general use,
all specialized for my needs.

## DepencenciesToGraphs.R

input.csv: semicolon separated columns where first is cell and next columns are its parents.

```
R --no-save < DependenciesToGraphs.R
dot -Tpng graph.dot > seko.png
```

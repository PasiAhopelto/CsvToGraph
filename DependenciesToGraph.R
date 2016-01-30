input <- read.csv('input.csv', header = F, sep = ';', fileEncoding = 'iso-8859-1')
write('graph {', 'graph.dot', append = F)
rows <- 0
apply(input, c(1), function(row) {
  child <- row[1]
  parents <- row[2:length(row)]
  rows <<- rows + 1
  lapply(parents, function(parent) {
    if(!is.na(parent) && grepl('\\S', parent)) {
      write(sprintf('"%s" -- "%s";', parent, child), 'graph.dot', append = T)
    }
  })
})
write('}', 'graph.dot', append = T)

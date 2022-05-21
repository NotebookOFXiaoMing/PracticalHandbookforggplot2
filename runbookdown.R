library(bookdown)
bookdown::render_book("index.Rmd")
browseURL("docs/index.html")
?geom_col
?read_excel
specie <- c(rep("sorgho" , 3) , rep("poacee" , 3) , rep("banana" , 3) , rep("triticum" , 3) )
condition <- rep(c("normal" , "stress" , "Nitrogen") , 4)
value <- abs(rnorm(12 , 0 , 15))
data <- data.frame(specie,condition,value)

library(rio)
export(data,file = "example_data/04-barplot/dat02_grouped_barplot.xlsx")


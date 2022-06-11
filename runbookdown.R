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

dat01<-read_excel("example_data/05-boxplot/dat01.xlsx")
dim(dat01)
dat01 %>% 
  group_by(var1) %>% 
  sample_n(10) %>% 
  rio::export(file = "example_data/05-boxplot/dat01_1.xlsx")

?geom_boxplot

dat01 %>% 
  group_by(var1) %>% 
  summarise(value=max(var2))
head(dat01)
ggplot(data=dat01,aes(x=var1,y=var2))+
  geom_boxplot()+
  geom_errorbar(data=dat01.1,
                aes(x=var1,
                    ymin=min_value,
                    ymax=max_value))

read_csv("example_data/05-boxplot/boxplot_example_1.csv") %>% 
  rio::export(file = "example_data/05-boxplot/dat02.xlsx")

help(package="ggplot2")
library(tidyverse)
dat<-read_excel("example_data/06-lineplot/dat04_1.xlsx")
dat %>% 
  mutate(lower95=var2-0.5,
         upper95=var2+0.5) %>% 
  rio::export(file = "example_data/06-lineplot/dat04_2.xlsx")

#install.packages("gggibbous")

team_info=readr::read_csv("https://docs.google.com/spreadsheets/d/e/2PACX-1vTiZfW7pSUWPttpHSMlAwgMyXwdAeLAW6HuoHwZa69FrNpfzqVkM_0DaeAveTG7hvbCSK-HBh31QxIM/pub?gid=95813594&single=true&output=csv")
readr::write_csv(team_info,file = "example_data/07-pieplot/team_info.csv")

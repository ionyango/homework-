install.packages(tidyverse)
library(tidyverse)

data(murders)
murders<-mutate(murders, rate==total/population*100000)
murders<-mutate(murders, population_in_millions=population/10^6)
head(murders)

murders_rank<- mutate(murders,rank(rate))
head(murders_rank)

murders_nw<-filter(murders_rank,population<5000000 & region %in% c("Northeast", "West"))
head(murders_nw)

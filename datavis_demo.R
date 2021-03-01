library(readxl)
library(ggplot2)

a <-read_xlsx(file.choose())
#convert column birth year to numberic factor 

a$birth_year <- as.factor(a$birth_year)

q <- ggplot(a, aes(x=birth_year, y=initial_specimen_collection, group=birth_year, fill=birth_year)) + 
  geom_boxplot(outlier.color="red") +
  scale_fill_manual(values=c("#00AEBE","#6B3074", "#f37735","#9E1030FF", "#4C1C43"))


q <-q + scale_y_continuous(name = "Initial Specimen\nCollection Interval (days)",
                           breaks = seq(0, 15, 1),
                           limits = c(0,15))

q

r<- q + stat_summary(fun=mean, geom="point", size=1, color="black")

r + xlab("Birth Year")

r <- r + ggtitle("Specimen Receipt Interval by Year (N=470)") 

r
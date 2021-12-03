#import and create RDS

here::i_am("R/Import.R")

Num_of_Redo <- read.csv(file='data/Num_of_Redo.csv', header=TRUE)
saveRDS(Num_of_Redo, "data/Num_of_Redo.rds")

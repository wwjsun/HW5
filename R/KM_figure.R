#create the Kaplan Meier curves
here::i_am("R/KM_figure.R")

#read in the data
Num_of_Redo <- readRDS(here::here("data", "Num_of_Redo.rds"))

library(survival)
f1 <- survfit(Surv(Survival__years_, Alive_at_last_follow_up) ~ 1, 
              data = Num_of_Redo)

png(here::here("figs", "KM_figure.png"))
plot(survfit(Surv(Survival__years_, Alive_at_last_follow_up) ~ 1, data = Num_of_Redo), 
     xlab = "Survival Years", 
     ylab = "survival probability")

dev.off()


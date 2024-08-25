#install.packages("glmmTMB")
#install.packages("broom.mixed")
#install.packages("xtable")
library(glmmTMB)
library(broom.mixed)
library(xtable)

file_path <- "OneDrive/Project/Analysis/data/delta_df.csv"
data <- read.csv(file_path, header = TRUE, sep = ",")


glmm_model <- glmmTMB(delta_pain_31 ~ log(steps) + period + (1 | userID), data = data)
summary(glmm_model)



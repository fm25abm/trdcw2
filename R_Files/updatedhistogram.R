library(readr)
Sleep_health_and_lifestyle_dataset <- read.csv("dataset/Sleep_health_and_lifestyle_dataset.csv")
View(Sleep_health_and_lifestyle_dataset)
colnames(Sleep_health_and_lifestyle_dataset)[8] <- "stress_level"
new_df <- subset(
  Sleep_health_and_lifestyle_dataset, 
  Occupation == "Doctor" | Occupation == "Engineer"
)
hist(
  new_df$stress_level, 
  breaks = seq(3,8, by = 1),
  xlab = "Stress Levels",
  ylab = "Frequency", 
  main = "Frequency Distribution of Stress Levels between Doctors and Engineers",
  col = "lightblue", 
  xlim = c(0, 10), 
  ylim = c(0, 50)
)



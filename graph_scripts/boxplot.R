library(readr)
Sleep_health_and_lifestyle_dataset <- read.csv("dataset/Sleep_health_and_lifestyle_dataset.csv")
View(Sleep_health_and_lifestyle_dataset)
colnames(Sleep_health_and_lifestyle_dataset)[8] <- "stress_level"
new_df <- subset(
  Sleep_health_and_lifestyle_dataset, 
  Occupation == "Doctor" | Occupation == "Engineer"
)
boxplot(
  stress_level~Occupation, 
  data = new_df, 
  main = "Stress Levels between Doctors and Engineers",
  xlab = "Occupation", 
  ylab = "Stress Levels",
  col = c("lightblue", "lightgreen")
)
legend("topright",
       legend = c("Doctors' Stress Levels (Age: 27-59)", "Engineers' Stress Levels (Age:27-59)"),
       fill = c("lightblue", "lightgreen"),
       bty = "o",
       bg = "white",
       box.col = "black",
       cex = 0.8
)

library(readr)
Sleep_health_and_lifestyle_dataset <- read.csv("dataset/Sleep_health_and_lifestyle_dataset.csv")
View(Sleep_health_and_lifestyle_dataset)
cw2 <- Sleep_health_and_lifestyle_dataset
colnames(cw2)[8] <- "stress_level"

data_hist <- subset(
  cw2,
  Occupation == "Doctor" | Occupation == "Engineer"
)
breaks_seq <- seq(1, 10, by = 1)

hist(
  data_hist$stress_level,
  breaks = breaks_seq,
  main = "Stress Level (Engineers and Doctors)",
  xlab = "Stress Level",
  ylab = "Frequency",
  col = "lightgreen",
  xlim = c(1, 10),
  xaxt = "n",
  yaxt = "n"
)

axis(
  side = 1,
  at = 1:10
)

axis(
  side = 2,
  at = seq(0, 50, by = 5)
  
)

table(cw2$`Stress Level`[cw2$Occupation == "Engineer"])
table(cw2$`Stress Level`[cw2$Occupation == "Doctor"])
sum(cw2$Occupation == "Doctor" & cw2$`Stress Level` == 3)


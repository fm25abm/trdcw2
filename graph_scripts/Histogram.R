library(readr)
Sleep_health_and_lifestyle_dataset <- read.csv("dataset/Sleep_health_and_lifestyle_dataset.csv")
View(Sleep_health_and_lifestyle_dataset)
# Reference dataset as cw2 
cw2 <- Sleep_health_and_lifestyle_dataset
# Adding _ to column so I can call it without errors due to space
colnames(cw2)[8] <- "stress_level"
# Creating a subset of rows with only doctor or engineer as occupation
data_hist <- subset(
  cw2,
  Occupation == "Doctor" | Occupation == "Engineer"
)
breaks_seq <- seq(1, 10, by = 1)
# Creates a Histogram for stress levels
hist(
  data_hist$stress_level,
  breaks = breaks_seq,
  main = "Frequency Distribution of Doctors and Engineers' Stress Level",
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



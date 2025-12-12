library(readr)
Sleep_health_and_lifestyle_dataset <- read_csv("dataset/Sleep_health_and_lifestyle_dataset.csv")
View(Sleep_health_and_lifestyle_dataset)
cw2 <- Sleep_health_and_lifestyle_dataset

data_hist <- cw2[cw2$Occupation %in% c("Engineer", "Doctor"), ]
breaks_seq <- seq(1, 10, by = 1)

hist(
  data_hist$`Stress Level`,
  breaks = breaks_seq,
  main = "Normal Distribution of Stress Levels",
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

stress_vals <- data_hist$`Stress Level`

mu <- mean(stress_vals)
sig <- sd(stress_vals)

n <- length(stress_vals)

bin_width <- 1

x_seq <- seq(1, 10, length.out = 200)


y_norm <- dnorm(x_seq, mean = mu, sd = sig) * n * bin_width

lines(x_seq, y_norm, col = "red", lwd = 2)


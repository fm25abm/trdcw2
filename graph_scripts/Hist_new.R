cw2 <- Sleep_health_and_lifestyle_dataset

data_hist <- cw2[cw2$Occupation %in% c("Engineer", "Doctor"), ]
breaks_seq <- seq(1, 10, by = 1)

hist(
  data_hist$`Stress Level`,
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

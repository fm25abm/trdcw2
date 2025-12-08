cw2 <- Sleep_health_and_lifestyle_dataset

data_hist <- cw2[cw2$Occupation %in% c("Engineer", "Doctor"), ]

hist(
  data_hist$`Stress Level`,
  main = "Stress Level (Engineer and Doctors)",
  xlab = "Stress Level",
  ylab = "Frequency",
)

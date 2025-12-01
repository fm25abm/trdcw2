
stress_eng <- cw2$`Stress Level`[cw2$Occupation == "Engineer"]
stress_doc <- cw2$`Stress Level`[cw2$Occupation == "Doctor"]
summary(stress_eng)
summary(stress_doc)
breaks_seq <- seq(3, 8, by = 1)
hist(
  stress_eng,
  breaks = breaks_seq,
  main = "Stress Level Distribution: Engineer",
  xlab = "Stress Level (3-8)",
  ylab = "Frequency",
  col = "lightblue",
  xlim = c(3, 8)
)
print(table(cw2$Occupation, cw2$`Stress Level`))

hist(
  stress_doc, 
  breaks = breaks_seq,
  main = "Stress Level Distribution: Doctors",
  xlab = "Stress Level (3-8)",
  ylab = "Frequency",
  col = "lightgreen",
  xlim = c(3, 8)
)

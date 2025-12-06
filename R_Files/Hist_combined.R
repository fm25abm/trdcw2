cw2 <- Sleep_health_and_lifestyle_dataset

data_hist <- cw2[cw2$Occupation %in% c("Engineer", "Doctor"), ]
stress_eng <- data_hist$`Stress Level`[data_hist$Occupation == "Engineer"]
stress_doc <- data_hist$`Stress Level`[data_hist$Occupation == "Doctor"]

breaks_seq <- seq(3, 8, by = 1)

hist(
  stress_eng, 
  breaks = breaks_seq, 
  main = "Stress level by Occupation", 
  xlab = "Stress Level", 
  ylab = "Frequency", 
  col = rgb(0.1, 0.3, 0.8, 0.5), 
  xlim = c(3, 8) 
  ) 

hist( 
  stress_doc, 
  breaks = breaks_seq, 
  col = rgb(0.8, 0.4, 0.2, 0.6), 
  add = TRUE
  ) 

legend(
  "topright", 
  legend = c("Engineer", "Doctor"), 
  fill = c(rgb(0.1, 0.3, 0.8, 0.5), 
           rgb(0.8, 0.4, 0.2, 0.6)), 
  title = "Occupation" 
  )


table(cw2$`Stress Level`[cw2$Occupation == "Engineer"])

sum(cw2$Occupation == "Engineer" & cw2$`Stress Level` == 3)


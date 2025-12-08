df <- read.csv("dataset/Sleep_health_and_lifestyle_dataset.csv")

subset_df <- subset(df, Occupation == "Doctor" | Occupation == "Engineer")

colnames(subset_df)[8]<- "Stress"

wilcox.test(Stress ~ Occupation, data=subset_df)

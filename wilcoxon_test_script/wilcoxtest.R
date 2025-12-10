#Reference dataset as df
df <- read.csv("dataset/Sleep_health_and_lifestyle_dataset.csv")

#Creates a subset of rows with only doctor or engineer as occupation
subset_df <- subset(df, Occupation == "Doctor" | Occupation == "Engineer")

#Renaming the 8th column to Stress for better interpretation of the test
colnames(subset_df)[8]<- "Stress"

#Runs the Wilcoxon Rank-Sum Test
wilcox.test(Stress ~ Occupation, data=subset_df)
# Load required library to read CSV files
library(readr)

# Import the dataset from the local folder
Sleep_health_and_lifestyle_dataset <- read_csv(
  "dataset/Sleep_health_and_lifestyle_dataset.csv"
)

# View the dataset in RStudio to understand its structure
View(Sleep_health_and_lifestyle_dataset)

# Assign dataset to a shorter object name for convenience
cw2 <- Sleep_health_and_lifestyle_dataset


# Filter the dataset to include only Engineers and Doctors
data_hist <- cw2[cw2$Occupation %in% c("Engineer", "Doctor"), ]

# Define histogram breaks for stress levels (1 to 10)
breaks_seq <- seq(1, 10, by = 1)


# Create a histogram of stress levels for Engineers and Doctors
hist(
  data_hist$`Stress Level`,
  breaks = breaks_seq,
  main = "Normal Distribution of Stress Levels",
  xlab = "Stress Level",
  ylab = "Frequency",
  col = "lightgreen",
  xlim = c(1, 10),
  xaxt = "n",   # Suppress default x-axis
  yaxt = "n"    # Suppress default y-axis
)

# Add custom x-axis showing stress level values
axis(
  side = 1,
  at = 1:10
)

# Add custom y-axis with fixed frequency intervals
axis(
  side = 2,
  at = seq(0, 50, by = 5)
)

# Display frequency tables of stress levels for Engineers
table(cw2$`Stress Level`[cw2$Occupation == "Engineer"])

# Display frequency tables of stress levels for Doctors
table(cw2$`Stress Level`[cw2$Occupation == "Doctor"])

# Count how many Doctors have a stress level of 3
sum(cw2$Occupation == "Doctor" & cw2$`Stress Level` == 3)


# Extract stress level values for normal curve calculation
stress_vals <- data_hist$`Stress Level`

# Calculate mean stress level
mu <- mean(stress_vals)

# Calculate standard deviation of stress levels
sig <- sd(stress_vals)

# Determine number of observations
n <- length(stress_vals)

# Set bin width (matches histogram breaks)
bin_width <- 1

# Create a sequence of x values for plotting the normal curve
x_seq <- seq(1, 10, length.out = 200)

# Calculate scaled normal distribution to match histogram frequency
y_norm <- dnorm(x_seq, mean = mu, sd = sig) * n * bin_width

# Overlay the normal curve on the histogram
lines(x_seq, y_norm, col = "red", lwd = 2)



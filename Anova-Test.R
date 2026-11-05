#Name: Joel, Date:11/5/2026, Purpose:Anova Analysis

#Load Package ggplot2
library(ggplot2)

# Load the dataset
PATH <- "https://raw.githubusercontent.com/guru99-edu/R-Programming/master/poisons.csv" 

df <- read.csv(PATH) 

# Create a hypothesis: Alternate hypothesis: There is a significant difference for survival with poison type 1 compared types 2 and 3
# Null hypothesis: There is no significant difference between 1 and other 2 poisons.

# Plot the dataset using library ggplot2
ggplot(df, aes(x = poison, y = time, fill = poison)) + geom_boxplot() + geom_jitter(shape = 15, color = "steelblue", position = position_jitter(0.21)) + theme_classic()

#Apply ANOVA function on dependent variable/time and independent variable/poision type.

anova_one_way <- aov(time~poison, data = df)
summary(anova_one_way)

         Df Sum Sq Mean Sq F value   Pr(>F)    
poison       1 0.9316  0.9316   20.67 3.96e-05 ***
Residuals   46 2.0735  0.0451                     
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
----------------------------------------------------------------------------------------------------



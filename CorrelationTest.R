#Name: Joel, Date:08/27/2026, Purpose: Test the correlation analysis

# Install package ggpubr
if(!require(devtools)) install.packages("devtools");
devtools::install_github("kassambara/ggpubr")

# load package ggpubr
library("ggpubr")

# load dummy dataset
my_data <- mtcars

# view data
my_data

# Alternate Hypthesis: THe weight of the car is inversely related to the 
miles per gallon it can travel

# Null Hypothesis: THere is no difference/no relation between 
the weight of the car and the miles per gallon it can travel

ggscatter(my_data, x = "mpg", y = "wt", add = "reg.line", conf.int = TRUE, cor.coef
= TRUE, cor.method = "pearson", xlab = "Miles/(US) gallon", ylab = "Weight (1000
lbs)")

# Perform the correlation test

res <- cor.test(my_data$wt, my_data$mpg, method = "pearson")

res

Pearson's product-moment correlation

data:  my_data$wt and my_data$mpg
t = -9.559, df = 30, p-value = 1.294e-10
alternative hypothesis: true correlation is not equal to 0
95 percent confidence interval:
 -0.9338264 -0.7440872
sample estimates:
       cor 
-0.8676594 

# Accept the alternate hypothesis!
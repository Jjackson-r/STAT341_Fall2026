#Author: Joel Jackson, Date:10/27/26, Purpose: Chi-Square Analysis

#Read sample dataset
data_frame <- read.csv("https://goo.gl/j6lRXD")


#Print the dataset in a table form
 table(data_frame$treatment, data_frame$improvement)

#Apply the Chi-square function to calculate the differnces between treated and not-treated groups
chisq.test(data_frame$treatment, data_frame$improvement, correct=FALSE)

 Pearson's Chi-squared test

data:  data_frame$treatment and data_frame$improvement
X-squared = 5.5569, df = 1, p-value = 0.01841

--------------------------------------------------------------------------------
#Read Sample data set
data_frame <- read.csv("https://raw.githubusercontent.com/gramener/datasets/refs/heads/main/card_transactions.csv")

#Print dataset in a table form
table(data_frame$Funding.source, data_frame$Decision)

#Apply the Chi-square function to calculate the differences between aprroved and declined groups
chisq.test(data_frame$Funding.source, data_frame$Decision, correct=FALSE)

 Pearson's Chi-squared test

data:  data_frame$Funding.source and data_frame$Decision
X-squared = 3.6017, df = 2, p-value = 0.1652




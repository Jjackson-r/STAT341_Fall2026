#Author:Joel Jackson, Date:11/5/2026, Purpose: Chi-Square test


# 2. Load the downloaded CSV file
# The na.strings argument ensures that both "NA" text and empty cells ("") are treated as missing data.
covid_data <- read.csv("01-22-2022.csv", na.strings = c("", "NA"))

# 3. Remove all cells with NA's or empty cells
clean_data <- na.omit(covid_data)

# 4. Perform Chi-Square on column names "Province_State" and "Country_Region"
#This wasn't working I would get the error "Error in chisq.test(clean_data$Province_State, clean_data$Country_Region) : 
  'x' and 'y' must have at least 2 levels
chi_square_result <- chisq.test(clean_data$Province_State, clean_data$Country_Region)

#Solution to previous error
# 3. Extract ONLY the two columns that I needed
# This prevents R from deleting international rows due to missing data in unrelated columns

subset_data <- covid_data[, c("Province_State", "Country_Region")]
clean_data <- na.omit(subset_data)
chisq.test(clean_data$Province_State, clean_data$Country_Region)

# Result
Pearson's Chi-squared test

data:  clean_data$Province_State and clean_data$Country_Region
X-squared = 88728, df = 14328, p-value < 2.2e-16

Warning message:
In chisq.test(clean_data$Province_State, clean_data$Country_Region) :
  Chi-squared approximation may be incorrect
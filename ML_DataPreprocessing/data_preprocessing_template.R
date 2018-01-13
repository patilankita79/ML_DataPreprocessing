# Data Preprocessing

# Importing the dataset
dataset = read.csv('Data.csv')

# Taking care of missing data
# Dealing with missing entry in Age Column
dataset$Age = ifelse(is.na(dataset$Age), 
                     ave(dataset$Age, FUN = function(x) mean(x, na.rm = TRUE)),
                     dataset$Age)

# Dealing with missing entry in Salary Column
dataset$Salary = ifelse(is.na(dataset$Salary), 
                     ave(dataset$Salary, FUN = function(x) mean(x, na.rm = TRUE)),
                     dataset$Salary)

# Encoding categorical data
dataset$Country = factor(dataset$Country, 
                         levels = c('France', 'Spain', 'Germany'),
                         labels = c(1, 2, 3))

dataset$Purchased = factor(dataset$Purchased, 
                           levels = c('No', 'Yes'), 
                           labels = c(0, 1))

# Splitting the dataset into the Training set and Test set
# install.packages('caTools')

library(caTools)
set.seed(123)
split = sample.split(dataset$Purchased, SplitRatio = 0.8)

# Create training set
training_Set = subset(dataset, split == TRUE)

# Create test set
test_Set = subset(dataset, split == FALSE)

# Feature Scaling
training_Set[, 2:3] = scale(training_Set[, 2:3])
test_Set[, 2:3] = scale(test_Set[, 2:3])

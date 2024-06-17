library(tidyverse)
mushrooms <- read.csv('data/mushroom_cleaned.csv')


## Lets Explore the data
head(mushrooms)
str(mushrooms)

summary(mushrooms)


#Exploring all varibles with some visualizations
mushrooms %>% ggplot(aes(x = cap.diameter)) +
  geom_histogram(binwidth = 1, fill = "blue", color = "black") +
  theme_minimal()

ggplot(mushrooms, aes(x = factor(cap.shape))) +
  geom_bar(fill = 'black') +
  labs(x = "Cap Shape", y = "Frequency", title = "Frequency of Mushroom Cap Shape") +
  theme_minimal()

ggplot(mushrooms, aes(x = factor(gill.attachment))) +
  geom_bar(fill = 'black') +
  labs(x = "Gill Attachment", y = "Frequency", title = "Frequency of Mushroom Gill Attachment") +
  theme_minimal()

ggplot(mushrooms, aes(x = factor(gill.color))) +
  geom_bar(fill = 'black') +
  labs(x = "Gill Color", y = "Frequency", title = "Frequency of Mushroom Gill Color") +
  theme_minimal()

ggplot(mushrooms, aes(x = stem.height)) +
  geom_histogram(binwidth = 0.1, fill = "skyblue", color = "black") +
  labs(x = "Stem Height", y = "Frequency", title = "Histogram of Stem Height") +
  theme_minimal()
ggplot(mushrooms, aes(x = stem.height)) +
  geom_histogram(binwidth = 0.1, fill = "skyblue", color = "black") +
  labs(x = "Stem Height", y = "Frequency", title = "Histogram of Stem Height") +
  theme_minimal()


ggplot(mushrooms, aes(x = stem.width)) +
  geom_histogram(binwidth = 50, fill = "skyblue", color = "black") +
  labs(x = "Stem Width", y = "Frequency", title = "Histogram of Stem Width") +
  theme_minimal()
ggplot(mushrooms, aes(y = stem.width)) +
  geom_boxplot(fill = "skyblue", color = "black") +
  labs(y = "Stem Width", title = "Boxplot of Stem Width") +
  theme_minimal()

ggplot(mushrooms, aes(x = factor(stem.color))) +
  geom_bar(fill = 'black') +
  labs(x = "Stem Color", y = "Frequency", title = "Frequency of Mushroom Stem Color") +
  theme_minimal()


ggplot(mushrooms, aes(x = factor(class))) +
  geom_bar(fill = 'red') +
  labs(x = "Class", y = "Frequency", title = "Frequency of Mushroom Classes") +
  theme_minimal()

  

#lets view a correlation matrix of all the variables
library(corrplot)
correlation_matrix <- cor(mushrooms)
print(correlation_matrix)

# correlation matrix heatmap
corrplot(correlation_matrix, method = "color")

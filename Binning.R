library(dplyr)
data <- read.csv("data\meaneducation.csv")
x <- data[,1] #take 1st column of data frame to a vector

summary(x)

library(ggplot2)
ggplot(data=data, aes(x=data[,1])) +
  geom_density(fill='lightblue') +
  geom_rug() +
  labs(x='mean education per house')

# set up boundaries for intervals/bins
breaks <- c(0,2,5,8,10,13,15,19,21)
# specify interval/bin labels
labels <- c("<2", "2-5)", "5-8)", "8-10)", "10-13)", "13-15)", "15-19)", ">=19")
# bucketing data points into bins
bins <- cut(x, breaks, include.lowest = T, right=FALSE, labels=labels)
# inspect bins
summary(bins)

#Plotting the bins
plot(bins, main="Frequency", ylab="Number of Houses",col="bisque")

#Using ggplot

y <- cbind(data, bins)
ggplot(data=y, aes(x=y$bins,fill=..count..)) + 
  geom_bar(color='black', alpha=0.9) + 
  stat_count(geom="text", aes(label=..count..), hjust=-0.1) +
  theme_bw() + 
  labs(y="Number of Houses",x="Mean Education Values") +
  coord_flip() +
  ylim(0,25000) +
  scale_x_discrete(drop=FALSE) # include the bins of length zero
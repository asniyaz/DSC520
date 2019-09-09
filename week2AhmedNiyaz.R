# Week 2 Assignment
# Statistics for Data science
# Ahmed Niyaz

#1 What are the observational units in this study?
# The observational units are the students enrolled in each of the sections 

#2 Identify the variables mentioned in the narrative paragraph and determine which are categorical and quantitative?
# Section - Categorical / Score - Quantitative 

scores=read.csv("scores.csv")

str(scores)

summary(scores)

scores
#3

sports=subset(scores,Section=="Sports")
regular=subset(scores,Section=="Regular")
regular

scores$Regular=(scores$Section=="Regular")
scores$Sports=(scores$Section=="Sports")

par(mfrow=c(1,2))

boxplot(Score~Count,data=regular,xlab="Count",ylab="Score", main="Scores Counts for Regular",col="orange")
boxplot(Score~Count,data=sports,xlab="Count",ylab="Score", main="Scores Counts for Sports",col="purple")

#4 

#a It is quite apparent that the sports section students have obtained more scores than the regular section students. We can employ a t-test to determine a statistical difference between the scores sectionwise.

#b No looking at the summary for regular and summary for sports we cant say that every single person has a better score than the other section.

#c Gender can influence the distribution especially when under the sports distribution.




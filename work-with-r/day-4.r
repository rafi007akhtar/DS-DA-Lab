# ONE: load the ‘iris’ dataset. Print first six rows. Select 3rd and 4th column into a new object
library(datasets)
data(iris)
head(iris)
select = iris[, 3:4]
head(select)

# TWO: Apply k-means clustering algorithm to cluter the data into 3 clusters. Plot the clusters.
model = kmeans(select, 3)
model
library(cluster)
clusplot(select, model$cluster)

# THREE: Mark the clusters using different colors and shading
clusplot(select, model$cluster, color=T, shade=T)

# FOUR: Remove the lines between cluster centers. Add Figure Title.
clusplot(select, model$cluster, color=T, shade=T, lines=0, main="Clusters")

# FIVE: Replace the x-axis and y-axis labels with appropriate labels. Remove the subtitle
clusplot(select, model$cluster, color=T, shade=T, lines=0, main="Clusters", xlab="Petal length", ylab="Petal width", sub="")

# SIX: Evaluate the clusters using ‘withinss’ and ‘betweenss’ values returned by kmeans
paste(model$withinss, model$betweenss)

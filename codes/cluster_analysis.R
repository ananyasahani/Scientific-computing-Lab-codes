library(rattle)
data(wine)


wine_data <- wine[, -1]
wine_scaled <- scale(wine_data)

dist_matrix <- dist(wine_scaled, method = "euclidean")
print(as.matrix(dist_matrix)[1:5, 1:5])

hc_single <- hclust(dist_matrix, method = "single")
plot(hc_single,
     main = "Dendrogram - Single Linkage",
     xlab = "",
     sub = "",
     cex = 0.6)

clusters <- cutree(hc_single, k = 3)
print(table(clusters))


print(table(clusters, wine$Type))


plot(wine$Alcohol, wine$Malic,
     col = clusters, pch = 19,
     xlab = "Alcohol",
     ylab = "Malic Acid",
     main = "Cluster Visualization")


set.seed(1)
sample_index <- sample(1:178, 30)        
sample_data <- wine_scaled[sample_index, ]

dist_matrix <- dist(sample_data, method = "euclidean")

hc_single <- hclust(dist_matrix, method = "single")
plot(hc_single,
     main = "Dendrogram 30 Observations - Single Linkage",
     xlab = "",
     sub = "",
     cex = 0.8)

rect.hclust(hc_single, k = 3, border = "red")

hc_complete <- hclust(dist_matrix, method = "complete")
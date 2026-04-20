

library(readxl)
library(ggplot2)
library(factoextra)



pca_data <- read_excel("D:/sc_230957046/problem_statements/Pizza Data Set.xlsx")
pca_data



data <-data.frame(pca_data)
data_numeric <-data[,-1]

data_scaled <- scale(data_numeric)
pca_result <- prcomp(data_scaled, center=TRUE, scale=TRUE)
View(pca_result)

eigenvalues <- pca_result$sdev^2
print(eigenvalues)

prop_var <-eigenvalues/sum(eigenvalues)
print(prop_var)

loadings <-pca_result$rotation
print(loadings)

scores <-pca_result$x
head(scores)

fviz_eig(pca_result,addlabels=TRUE)

fviz_pca_biplot(pca_result, repel=TRUE, col.var="red",col.ind="blue")

fviz_pca_var(pca_result,col.var="contrib",gradient.cols=c("blue","yellow","red"),repel=TRUE)

fviz_pca_ind(pca_result, col.ind="cos2", gradient.cols=c("blue","yellow","red"), repel=TRUE)




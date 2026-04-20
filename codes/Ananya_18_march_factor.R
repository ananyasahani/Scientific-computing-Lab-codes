data(mtcars)
data_fa<-mtcars[, c("mpg","disp","hp","drat","wt","qsec")]
data_scaled<-scale(data_fa)

cor_matrix<-cor(data_scaled)
print("correlation Matrix:")
print(cor_matrix)

eigen_values<-eigen(cor_matrix)$values
print("Eigenvalues:")
print(eigen_values)

plot(eigen_values, type="b", main="scree Plot", xlab="Factor Number", ylab="Eigenvalue")

fa_result<-factanal(data_scaled, factors=2, rotation="varimax")

print(fa_result)

loadings_matrix<-as.matrix(fa_result$loadings)

communalities <-rowsums(loadings_matrix^2)

specific_variance <-fa_result$uniqueness

fa_table <-cbind(loadings_matrix, Communality=communalities, Specific_Variance=specific_variance)

print("Final Factor Analysis Table:")

print(round(fa_table,3))

data("USArrests")


data_fa <- USArrests[, c("Murder", "Assault", "UrbanPop", "Rape")]


data_scaled <- scale(data_fa)

corr_matrix <- cor(data_scaled)
print("Correlation Matrix:")
print(corr_matrix)
eigen_values <- eigen(corr_matrix)$values
print("Eigenvalues:")
print(eigen_values)

plot(eigen_values,
     type = "b",
     main = "Scree Plot",
     xlab = "Factor Number",
     ylab = "Eigenvalue")

fa_result <- factanal(data_scaled, factors = 1,rotation = "varimax")
print(fa_result)

loadings_matrix <- as.matrix(fa_result$loadings)
communalities <- rowSums(loadings_matrix^2)
specific_variance <- fa_result$uniquenesses

fa_table <- cbind(loadings_matrix, Communality = communalities, Specific_Variance = specific_variance)
print("Final Factor Analysis Table:")
print(round(fa_table, 3))
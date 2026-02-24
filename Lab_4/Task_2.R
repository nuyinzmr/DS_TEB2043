V1 <- c(2,3,1,5,4,6,8,7,9)

Matrix1 <- matrix(V1, nrow = 3, ncol = 3, byrow = TRUE)
rownames(Matrix1) <- c("R1","R2","R3")
colnames(Matrix1) <- c("C1","C2","C3")

Matrix2 <- t(Matrix1)
rownames(Matrix2) <- c("R1","R2","R3")
colnames(Matrix2) <- c("C1","C2","C3")

add <- Matrix1 + Matrix2
subtract <- Matrix1 - Matrix2
multiply <- Matrix1 * Matrix2
divide <- Matrix1 / Matrix2

Matrix1
Matrix2
add
subtract
multiply
divide
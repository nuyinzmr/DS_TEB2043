Array1 <- array(1:24, dim = c(2,4,3))
Array2 <- array(25:54, dim = c(3,2,5))

Array1
Array2

second_row_second_matrix <- Array1[2,,2]
element_value <- Array2[3,2,1]

cat("The second row of the second matrix of the array:\n")
print(second_row_second_matrix)

cat("The element in the 3rd row and 3rd column of the 1st matrix:\n")
print(element_value)
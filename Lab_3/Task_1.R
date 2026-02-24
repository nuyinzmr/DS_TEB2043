scores <- c(33, 24, 54, 94, 16, 89, 60, 6, 77, 61, 13, 44, 26, 24, 73, 73, 90, 39, 90, 54)

A <- sum(scores >= 90 & scores <= 100)
B <- sum(scores >= 80 & scores <= 89)
C <- sum(scores >= 70 & scores <= 79)
D <- sum(scores >= 60 & scores <= 69)
E <- sum(scores >= 50 & scores <= 59)
F <- sum(scores < 50)

cat("A:", A, "\n")
cat("B:", B, "\n")
cat("C:", C, "\n")
cat("D:", D, "\n")
cat("E:", E, "\n")
cat("F:", F, "\n")

pass <- sum(scores >= 50)
fail <- sum(scores < 50)

cat("Number of students pass:", pass, "\n")
cat("Number of students fail:", fail, "\n")
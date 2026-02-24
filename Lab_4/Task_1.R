age <- c(55,57,56,52,51,59,58,53,59,55,60,60,60,60,52,55,56,51,60,
         52,54,56,52,57,54,56,58,53,53,50,55,51,57,60,57,55,51,50,57,58)

age <- sort(age)

age_factor <- factor(age)

levels(age_factor)

age_table <- table(age_factor)
age_table

range1 <- sum(age >= 50 & age <= 52)
range2 <- sum(age >= 53 & age <= 54)
range3 <- sum(age >= 55 & age <= 56)
range4 <- sum(age >= 57 & age <= 58)
range5 <- sum(age >= 59 & age <= 60)

cat("50-52:", range1, "\n")
cat("53-54:", range2, "\n")
cat("55-56:", range3, "\n")
cat("57-58:", range4, "\n")
cat("59-60:", range5, "\n")

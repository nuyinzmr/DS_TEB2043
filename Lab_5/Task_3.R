cat("Check whether an n digits number is Armstrong or not:\n")
cat("-----------------------------------------------------------\n")

num <- as.numeric(readline("Input an integer: "))

digits <- strsplit(as.character(num), "")[[1]]
power <- length(digits)

sum_power <- sum(as.numeric(digits)^power)

if (sum_power == num) {
  cat(num, "is an Armstrong number.\n")
} else {
  cat(num, "is not an Armstrong number.\n")
}
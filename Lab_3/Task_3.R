students <- list(
  Robert = c(Chemistry = 59, Physics = 89),
  Hemsworth = c(Chemistry = 71, Physics = 86),
  Scarlett = c(Chemistry = 83, Physics = 65),
  Evans = c(Chemistry = 68, Physics = 52),
  Pratt = c(Chemistry = 65, Physics = 60),
  Larson = c(Chemistry = 57, Physics = 67),
  Holland = c(Chemistry = 62, Physics = 40),
  Paul = c(Chemistry = 92, Physics = 77),
  Simu = c(Chemistry = 92, Physics = 90),
  Renner = c(Chemistry = 59, Physics = 61)
)

chemistry_scores <- sapply(students, function(x) x["Chemistry"])
physics_scores <- sapply(students, function(x) x["Physics"])

chem_fail <- sum(chemistry_scores <= 49)
phys_fail <- sum(physics_scores <= 49)

chem_highest <- max(chemistry_scores)
phys_highest <- max(physics_scores)

chem_top_student <- names(chemistry_scores)[which.max(chemistry_scores)]
phys_top_student <- names(physics_scores)[which.max(physics_scores)]

cat("Number of students fail Chemistry:", chem_fail, "\n")
cat("Number of students fail Physics:", phys_fail, "\n")
cat("Highest Chemistry score:", chem_highest, "\n")
cat("Student with highest Chemistry score:", chem_top_student, "\n")
cat("Highest Physics score:", phys_highest, "\n")
cat("Student with highest Physics score:", phys_top_student, "\n")
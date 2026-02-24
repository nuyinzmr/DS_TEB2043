library(dplyr)
library(stringr)
library(lubridate)
library(readr)

raw <- readLines("C:/Users/Admin/Downloads/archive/Unclean Dataset.csv", encoding = "UTF-8", warn = FALSE)
raw <- raw[!str_detect(raw, "^\\s*$")]
raw <- raw[!str_detect(raw, "^Student_ID")]
raw <- str_replace_all(raw, "\\s*\\|\\s*|\\t|\\s{2,}", ",")

for(i in seq_along(raw)) {
  if(str_detect(raw[i], "^[\\$£]")) {
    raw[i-1] <- paste(raw[i-1], str_replace_all(raw[i], "[\\$£]", ""))
    raw[i] <- NA
  }
}
raw <- raw[!is.na(raw)]

split_data <- lapply(strsplit(raw, ","), function(x) {
  x <- x[1:8]
  length(x) <- 8
  x
})

data <- as.data.frame(do.call(rbind, split_data), stringsAsFactors = FALSE)
colnames(data) <- c("Student_ID","First_Name","Last_Name","Age","Gender","Course","Enrollment_Date","Total_Payments")

data <- data %>%
  mutate(
    Student_ID = row_number(),
    First_Name = str_trim(First_Name),
    Last_Name = str_trim(Last_Name),
    Gender = str_trim(Gender),
    Course = str_trim(Course),
    Age = as.numeric(Age),
    Enrollment_Date = parse_date_time(Enrollment_Date, orders = c("ymd","d/m/Y","m/d/Y")),
    Total_Payments = str_replace_all(Total_Payments, "[^0-9\\.]", ""),
    Total_Payments = as.numeric(Total_Payments)
  ) %>%
  distinct()

data$Total_Payments[is.na(data$Total_Payments)] <- 0

write_csv(data, "C:/Users/Admin/Downloads/archive/Cleaned_Dataset.csv")

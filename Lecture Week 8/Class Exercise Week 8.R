#Intro
library(dplyr)
library(readr)

student_data<-read.csv("C:/Users/Admin/Downloads/student_data.csv")
View(student_data)
summary(student_data)
head(student_data)
tail(student_data)

#Filter----------------------------------------------------------------------------
#1.student_fail
student_fail<-student_data %>% filter(final_exam_mark<40)
View(student_fail)
#2.Arrange student data
mydata<- student_data%>% filter(final_exam_mark > 40) %>% arrange(final_exam_mark)
View(mydata)
mydata1<- student_data %>% filter(final_exam_mark > 40) %>% arrange(desc(final_exam_mark))
View(mydata1)
#3.Select
mydataselect <- student_data%>% select(student_id,coursework_mark, final_exam_mark)
View(mydataselect)
glimpse(mydata)
#4.Mutate
mydatamutate = student_data %>% mutate(Total_Mark=(coursework_mark + final_exam_mark/200*100))
View(mydatamutate)

#Descriptive Analytics-------------------------------------------------------------
data <-iris
head(data)
tail(data)
str(data)
min(data$Sepal.Length) 
max(data$Sepal.Length)
summary(data)
A<-c(170.2, 181.5, 188.9, 163.9, 166.4, 163.7, 160.4, 175.8, 181.5)
quantile(A)
sort(A)
IQR(A)

#Histogram
hist(iris$Sepal.Length,
     main = "Histogram of Sepal Length",
     xlab = "Sepal Length (cm)",
     ylab = "Frequency",
     col = "lightblue",
     border = "black")
#normally distributed

#Boxplot by Species
boxplot(Sepal.Length ~ Species,
        data = iris,
        main = "Sepal Length by Species",
        xlab = "Species",
        ylab = "Sepal Length (cm)",
        col = c("lightblue","lightpink","lightyellow"))

#Scatter Plot
plot(iris$Sepal.Length, iris$Petal.Length,
     main = "Sepal Length vs Petal Length",
     xlab = "Sepal Length (cm)",
     ylab = "Petal Length (cm)",
     col = as.numeric(iris$Species),
     pch = 19)
legend("topleft",
       legend = levels(iris$Species),
       col = 1:3 ,
       pch = 19) 

#Outliers
players<-read.csv("C:/Users/Admin/Downloads/players.csv")
is.na(players)
median_age <- median(players$Age, na.rm =TRUE)
players$Age[players$Age<18 |players$Age>38]<-median_age
View(players)

#Boxplot
data<-c(30,24,26,28,29,28,27,26,32,34,13,15,14,31,29,28,24,25,30,34,35,27,30,34,44,48)
boxplot(data, main = "Boxplot")
first_q<-quantile(data,0.25)
third_q<-quantile(data,0.75) 
iqr<-IQR(data)
le<-first_q - 1.5 * iqr
ue<-third_q + 1.5 * iqr

#Handling Outliers
#Drop Value
data_new<-data
data_new <- data_new[!data_new<le]
data_new <- data_new[!data_new>ue]
data_new
#Replace Values with Mean
data_new <- data
avg <- round(mean(data_new)) 
data_new[data_new<le] <- avg
data_new[data_new>ue] <- avg
data_new
#Replace Values with ue & le
data_new <- data
data_new[data_new<le] <- le
data_new[data_new>ue] <- ue
data_new
boxplot(data_new, main = "Boxplot")
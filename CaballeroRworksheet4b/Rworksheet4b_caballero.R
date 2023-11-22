#1
vectorA <- c(1,2,3,4,5)
vectorA

mat <- matrix(0, nrow=5, ncol=5)
mat

#     [,1] [,2] [,3] [,4] [,5]
#[1,]    0    0    0    0    0
#[2,]    0    0    0    0    0
#[3,]    0    0    0    0    0
#[4,]    0    0    0    0    0
#[5,]    0    0    0    0    0


for(i in 1:5){
  for(j in 1:5){
      mat[i,j] <- abs(vectorA[i] - vectorA[j])
    }
  }
print(mat)

#     [,1] [,2] [,3] [,4] [,5]
#[1,]    0    1    2    3    4
#[2,]    1    0    1    2    3
#[3,]    2    1    0    1    2
#[4,]    3    2    1    0    1
#[5,]    4    3    2    1    0

#2
rightTriangle <- c()

for (i in 1:5){
  for(j in 1:i+1){
    rightTriangle = c(rightTriangle,"*")
  }
  print(rightTriangle)
  rightTriangle <- c()
}

#[1] "*"
#[1] "*" "*"
#[1] "*" "*" "*"
#[1] "*" "*" "*" "*"
#[1] "*" "*" "*" "*" "*"

#3
n <- as.integer(readline(prompt = "Enter the number of terms: "))

#n <- as.integer(readline(prompt = "Enter the number of terms: "))
#Enter the number of terms: 

a<- 0
b<- 1

cat("Fibonacci sequnce: ",a,b)
#Fibonacci sequnce:  0 1

repeat{
  c<-a+b
  if (c>500){
    break
  }
  cat(",",c)
  a<-b
  b<-c
}
#, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377

#using basic Graphics(plot(),barplot(),pie(),hist()) 


#4

#a

HouseholdData <-read.table("HouseholdData.csv", header = TRUE, sep = ",",as.is = TRUE)
View(HouseholdData)  

head(HouseholdData,6)

#  X shoe_size Height
#1 1       6.5   66.0
#2 2       9.0   68.0
#3 3       8.5   64.5
#4 4       8.5   65.0
#5 5      10.5   70.0
#6 6       7.0   64.0

#b

maleSubset<- subset(HouseholdData, Gender == 'M')
femaleSubset<- subset(HouseholdData,Gender == 'F')

male_count <- nrow(maleSubset)
male_count

#[1] 14

female_count <- nrow(femaleSubset)
female_count

#[1] 14

#c

count<- c(male_count,female_count)
gender <- c("Male","Female")


barplot(count,
        names.arg = gender,
        main = "The number of Males and Females in Household Data",
        xlab = "Gender",
        ylab = "Count",
        col = c("blue","pink"))
legend("topright",
       legend = gender,
       fill = c("blue","pink"))

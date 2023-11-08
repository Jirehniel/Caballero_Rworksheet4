#1.
shoe_size <- c(6.5,9.0,8.5,8.5,10.5,7.0,9.5,9.0,13.0,7.5,10.5,8.5,12.0,10.5,13.0,11.5,8.5,5.0,10.0,6.5,7.5,8.5,10.5,8.5,10.5,11.0,9.0,13.0)
Height <- c(66.0,68.0,64.5,65.0,70.0,64.0,70.0,71.0,72.0,64.0,74.5,67.0,71.0,71.0,77.0,72.0,59.0,62.0,72.0,66.0,64.0,67.0,73.0,69.0,72.0,70.0,69.0,70.0)
Household_data <- data.frame(shoe_size,Height)
Household_data
#A the data shows the data of shoe sizes and their corresponding height.



Gender <- c("F","F","F","F","M","F","F","F","M","F","M","F","M","M","M","M","F","F","M","F","F","M","M","F","M","M","M","M")
final_household <- cbind(Household_data,Gender)
final_household
#we are making a subset of Male and Female
male_subset <- subset(final_household, Gender == "M")
male_subset

female_subset <- subset(final_household,Gender == "F")
female_subset
#B the result is
#male_subset
#shoe_size Height Gender
#5       10.5   70.0      M
#9       13.0   72.0      M
#11      10.5   74.5      M
#13      12.0   71.0      M
#14      10.5   71.0      M
#15      13.0   77.0      M
#16      11.5   72.0      M
#19      10.0   72.0      M
#22       8.5   67.0      M
#23      10.5   73.0      M
#25      10.5   72.0      M
#26      11.0   70.0      M
#27       9.0   69.0      M
#28      13.0   70.0      M

#> female_subset
#shoe_size Height Gender
#1        6.5   66.0      F
#2        9.0   68.0      F
#3        8.5   64.5      F
#4        8.5   65.0      F
#6        7.0   64.0      F
#7        9.5   70.0      F
#8        9.0   71.0      F
#10       7.5   64.0      F
#12       8.5   67.0      F
#17       8.5   59.0      F
#18       5.0   62.0      F
#20       6.5   66.0      F
#21       7.5   64.0      F
#24       8.5   69.0      F


#C Means
mean_size <- mean(shoe_size)
mean_size
#the mean of all shoe size of the repondents(all) is 9.410714

mean_height <- mean(Height)
mean_height
#the mean of all height of the respondents(all) is  68.57143

mean_shoe_M <- mean(male_subset$shoe_size)
mean_shoe_M
#the mean of shoe sizes of male repondents is 10.96429

mean_height_M <- mean(male_subset$Height)
mean_height_M
#the mean of height of male respondents is 71.46429

mean_shoe_F <- mean(female_subset$shoe_size)
mean_shoe_F
#the mean of shoe sizes of female respondents is 7.857143

mean_height_F <- mean(female_subset$Height)
mean_height_F
#the mean of height of female respondents is 65.67857

#D 
#Yes there is a relationship between shoe sizes and height, the taller the person is the bigger its shoe size.


#2
months <- c("March","April","January","November","January",
            "September","October","September","November","August",
            "January","November","November","February","May","August",
      "July","December","August","August","September","November","February","April")
factor_months_vector <- factor(months)     
factor_months_vector

#3
summary_month <- summary(months)
summary_month
#  Length     Class      Mode 
#      24 character character 

summary_factor <- summary(factor_months_vector)
summary_factor
#April    August  December  February   January      July     March 
#2         4         1         2         3         1         1 
#May  November   October September 
#1         5         1         3 
#both Vectors are useful but a factor can be more important when the order of levels matters, while a character is sufficient for basic frequency analysis


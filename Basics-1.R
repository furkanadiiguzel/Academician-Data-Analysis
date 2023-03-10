# Create vectors for ID, Name, Title, Salary, and Language Exam Score
academician_Id <- c(111, 222, 333, 444, 555, 666, 777, 888, 999, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 123, 124, 125, 126)
academician_Name <- c("Rick" , "Dan" , "Michelle" ,"Aaron" , "Frank" , "Abbey" ,"Edward" , "Abel" , "Reuben" , "Abelson","Abrams" , "Ace" , "Jane" , "Mary" , "James" , "Bertie" , "Rachel" , "Ross" , "Monica", "Chandler", "Phoebe", "Joseph", "Janice" )
academician_Title <- c("Dr","Asst","Dr","Prof","Dr","Prof","Prof","Asst","Dr","Inst","Asst", "Inst","Dr","Asst","Asst","Asst","Dr","Dr","Prof","Inst","Inst","Dr","Prof")
academician_Salary <- c(6230.3 , 5150.2 , 6110.0 , 7290.0 , 8430.0 , 8500.0 , 9540.0 ,4145.0 ,7410.0 , 6000.0 , 4510.0 , 6200.0 , 7500.0 , 4600.0 ,4621.0 ,5400.0 , 7410.0 ,8560.0 , 9740.0, 6870.0 , 5740.0 , 6410.0 ,8245.0)
academician_languageExamScore <- c( 65, 84, 86, 95, 91 , 40 ,35 , 85 , 38, 59 , 81 ,68 , 87, 84,53,94,85, 88, 79, 86, 53,45,89)

# Calculate new salaries with 2.5% increase for those with language score greater than 85
new_salaries <- academician_Salary
new_salaries[academician_languageExamScore > 85] <- academician_Salary[academician_languageExamScore > 85] * 1.025

# Create a data frame with the information
academician_df <- data.frame(ID = academician_Id, Name = academician_Name, Title = academician_Title, 
                             Old_Salary = academician_Salary, New_Salary = new_salaries)

# Rename columns to match Figure 1
colnames(academician_df) <- c("ID", "Name", "Title", "Old Salary", "New Salary")

# Convert the Title column to a factor
academician_df$Title <- as.factor(academician_df$Title)

# Compare means of old and new salaries
mean(academician_df$`Old Salary`)
mean(academician_df$`New Salary`)

# Find and print the academician who earns the maximum amount of the raise
max_raise <- max(academician_df$`New Salary` - academician_df$`Old Salary`)
academician_df[which.max(academician_df$`New Salary` - academician_df$`Old Salary`), ]


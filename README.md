# Academician Data Analysis

This repository contains R code for analyzing academician data. The code creates vectors for academician ID, name, title, salary, and language exam score. It then calculates new salaries with a 2.5% increase for those with a language score greater than 85.

## Code Summary

### Vector Creation
- `academician_Id`: IDs of academicians
- `academician_Name`: Names of academicians
- `academician_Title`: Titles of academicians (Dr, Asst, Prof)
- `academician_Salary`: Salaries of academicians
- `academician_languageExamScore`: Language exam scores of academicians

### Salary Calculation
The code calculates new salaries (`new_salaries`) with a 2.5% increase for academicians with a language score greater than 85.

### Data Frame Creation
A data frame (`academician_df`) is created with columns: ID, Name, Title, Old Salary, and New Salary.

### Data Frame Operations
- Column names are renamed to match Figure 1.
- The Title column is converted to a factor.

### Salary Comparison
The mean of old and new salaries is calculated.

### Maximum Raise
The academician who earns the maximum raise is identified and printed.

## Usage
You can use this code to analyze academician data, calculate salary increases, and visualize the results.

Feel free to explore and modify the code based on your specific needs.

**Note:** Make sure you have an R environment set up to run the code successfully.

Happy analyzing!

<img width="594" alt="Screen Shot 2023-03-10 at 15 15 03" src="https://user-images.githubusercontent.com/101877734/224314142-39fc66af-1593-4ae2-ac07-16aa25ce2c48.png">

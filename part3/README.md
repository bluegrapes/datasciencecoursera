# run_analysis.R
--- 
## Summary 
This is a course project for Coursera's Getting and Cleaning Data

This program does the following:

1. unzip source file (getdata-projectfiles-UCI HAR Dataset.zip)
2. reads source data file, processed them as required for the course project
3. output part1.csv - a tidy data set containing only the mean, and standard deviations for each measurement.
4. output part5.txt - a tidy data set with the average of each variable for each activity and each subject.

Please see CookBook.md for more in-dept explanation of the process

## Run
To run this program from RStudio

1. Set working directory,

	```
	$ setwd('<directory_where_run_analysis_r_is_located>')
	```

2. Source it 

	```
	$ source("run_analysis.R")
	```


To run this program from console

```
$ RScript run_analysis.R
```

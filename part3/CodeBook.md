# CookBook.md
---

## Summary
This document describes primarily the process for generating the output result files:

- *part1.csv* 
- *part5.txt* 

from the source data zip file 

- *getdata-projectfiles-UCI HAR Dataset.zip*

----
## Part1.csv
This file is generated from run_analysis.R.  It contains the mean and standard deviations for each measurement.  

### Process

1. Unzip the following data file, getdata-projectfiles-UCI HAR Dataset.zip
2. Read the activity labels, ./UCI HAR Dataset/activity_labels.txt
3. Read the features table, ./UCI HAR Dataset/features.txt
4. Read the train data set from ./UCI HAR Dataset/train folder
5. Read the test data set from ./UCI HAR Dataset/test folder
6. Combine train and test data set
7. Extract only those whose columns contains "mean" and "std"
8. Output the result into part1.csv

----
## Part5.txt
This file is generated from run_analysis.R.  It contains the average of each variable for each activity and each subject.

### Process

1. From the dataset generated in Part1.csv
2. Get average of each variable for each activity and each subject
3. Output the result into part5.txt

---
## Dataset 
The source data set in the *getdata-projectfiles-UCI HAR Dataset.zip* is from 

[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The columns listed on the *part1.csv* and *part5.txt* are means and standard deviations of:

- Triaxial acceleration from the accelerometer (total acceleration) 
- Estimated triaxial body acceleration
- Triaxial Angular velocity from the gyroscope.


| Colum | Description |
|-------|-------------|
| activityid | Activity Id | 
| activitylabel | Activity Label | 
| subjectid | Subject Id | 
| tbodyacc-mean-x |  | 
| tbodyacc-mean-y |  | 
| tbodyacc-mean-z |  |  
| tbodyacc-std-x |  | 
| tbodyacc-std-y |  | 
| tbodyacc-std-z |  | 
| tgravityacc-mean-x |  | 
| tgravityacc-mean-y |  | 
| tgravityacc-mean-z |  | 
| tgravityacc-std-x |  | 
| tgravityacc-std-y |  | 
| tgravityacc-std-z |  | 
| tbodyaccjerk-mean-x |  | 
| tbodyaccjerk-mean-y |  | 
| tbodyaccjerk-mean-z |  | 
| tbodyaccjerk-std-x |  | 
| tbodyaccjerk-std-y |  | 
| tbodyaccjerk-std-z |  | 
| tbodygyro-mean-x |  | 
| tbodygyro-mean-y |  | 
| tbodygyro-mean-z |  | 
| tbodygyro-std-x |  | 
| tbodygyro-std-y |  | 
| tbodygyro-std-z |  | 
| tbodygyrojerk-mean-x |  | 
| tbodygyrojerk-mean-y |  | 
| tbodygyrojerk-mean-z |  | 
| tbodygyrojerk-std-x |  | 
| tbodygyrojerk-std-y |  | 
| tbodygyrojerk-std-z |  | 
| tbodyaccmag-mean |  | 
| tbodyaccmag-std |  | 
| tgravityaccmag-mean |  | 
| tgravityaccmag-std |  | 
| tbodyaccjerkmag-mean |  | 
| tbodyaccjerkmag-std |  | 
| tbodygyromag-mean |  | 
| tbodygyromag-std |  | 
| tbodygyrojerkmag-mean |  | 
| tbodygyrojerkmag-std |  | 
| fbodyacc-mean-x |  | 
| fbodyacc-mean-y |  | 
| fbodyacc-mean-z |  | 
| fbodyacc-std-x |  | 
| fbodyacc-std-y |  | 
| fbodyacc-std-z |  | 
| fbodyaccjerk-mean-x |  | 
| fbodyaccjerk-mean-y |  | 
| fbodyaccjerk-mean-z |  | 
| fbodyaccjerk-std-x |  | 
| fbodyaccjerk-std-y |  | 
| fbodyaccjerk-std-z |  | 
| fbodygyro-mean-x |  | 
| fbodygyro-mean-y |  | 
| fbodygyro-mean-z |  | 
| fbodygyro-std-x |  | 
| fbodygyro-std-y | | 
| fbodygyro-std-z |  | 
| fbodyaccmag-mean |  | 
| fbodyaccmag-std |  | 
| fbodybodyaccjerkmag-mean |  | 
| fbodybodyaccjerkmag-std |  | 
| fbodybodygyromag-mean |  | 
| fbodybodygyromag-std |  | 
| fbodybodygyrojerkmag-mean |  | 
| fbodybodygyrojerkmag-std |   | 

# run_analysis.R
#
#  ** Make sure to set the working directory first **
#
### 1. Merges the training and the test sets to create one data set.
### 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
### 3. Uses descriptive activity names to name the activities in the data set
### 4. Appropriately labels the data set with descriptive variable names. 
### 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
require(dplyr)

# unzip data files
print("Unzip data files...")
unzip("getdata-projectfiles-UCI HAR Dataset.zip")

print("Loading activity, features...")
# read activity labels
activity_labels = read.table('./UCI HAR Dataset/activity_labels.txt')
names(activity_labels) <- c('activityid', 'activitylabel')
# read the features
features = read.table('./UCI HAR Dataset/features.txt')
# get the list of features
cols <- c(as.character(features[,2]))
# lower case the labels, e.g. tBodyAcc-mean()-X to tbodyacc-mean()-x
col_labels = sapply(cols, tolower)

loadData <- function(folder) {
    print(paste("Loading", folder, "data..."))
    # read subject_.txt
    subjects = read.table(paste0('./UCI HAR Dataset/', folder, '/subject_', folder, '.txt'))
    colnames(subjects) <- c("subjectid")
    # read y_.txt
    ydata = read.table(paste0('./UCI HAR Dataset/', folder, '/y_', folder, '.txt'))
    colnames(ydata) <- c("activityid")
    # read x_.txt
    xdata = read.table(paste0('./UCI HAR Dataset/', folder, '/X_', folder, '.txt'), header=FALSE)
    colnames(xdata) <- col_labels
    # get 
    result = cbind(subjects, ydata, xdata)
    result
}

### TRAIN
train_data = loadData("train")

### TEST
test_data = loadData("test")

### PART1 Process
print("Processing part1...")
# combine them
data = rbind(train_data, test_data)
# get the mean, std col labels
selcols = col_labels[ grepl("mean\\(\\)|std\\(\\)", col_labels) ]
seldata = subset(data, select=c("subjectid", "activityid", selcols))
# remove the "()," from col names, e.g. tbodyacc-mean()-x to tbodyacc-mean-x
changeColName <- function(x) {
    tolower(gsub('\\(', '', 
                 gsub('\\)', '', 
                      gsub(',', '', x))))
}
colnames(seldata) <- sapply(colnames(seldata), changeColName)
# include activity label
part1data = merge(activity_labels, seldata)
# write to file
write.csv(part1data, file="./part1.csv", row.names=FALSE)
print("Part1.csv written")

#### PART5 Process
print("Processing part5...")
# get average of each variable for each activity and each subject.
part5data <- part1data %>% group_by(subjectid, activityid) %>% summarise_each(funs(mean))
# write to file
write.table(part5data, file="./part5.txt", row.names=FALSE)
print("Part5.txt written")

print("Done!")




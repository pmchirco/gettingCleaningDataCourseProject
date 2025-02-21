# Course Project
# Getting and Cleaning Data

# Instructions: 
# You should create one R script called run_analysis.R that does the following. 
#  1. Merges the training and the test sets to create one data set.
#  2. Extracts only the measurements on the mean and standard deviation for each measurement. 
#  3. Uses descriptive activity names to name the activities in the data set
#  4. Appropriately labels the data set with descriptive variable names. 
#  5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.        



# Get the Data for the project
# once downloaded, the data needs to be extracted using the unzip command

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if (!file.exists("./data")) {dir.create("./data")}
download.file(fileUrl, destfile="./data/projectFiles.zip")
unzip("./data/projectFiles.zip", exdir="./data")

#  Merge the training and the test sets to create one data set. (requirement #1)

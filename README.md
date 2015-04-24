#Coursera Course Project - Getting and Cleaning Data #

##Overview##
Course Project Assignment was to download a set of files containing smartphone accelerometer data, and from these files, create one dataset containing all measurements for either the mean or the standard deviation. Once this was complete, to take the averages of each variable and each test subject, and create an independent tiday data set from it. 

This was accomplished through R scriping, using both the dplyr and tidyr packages. 

##Details##

* First step was to read in the data and merge the two data sets. I read the X_test.txt and X_Train.txt files into independent data frames, and merged them using rbind. Unlike merge(), rbind will not alter the order of the rows. 
* Once the dataset was merged, I had to pull the field names from features.txt. These names were not syntactically correct for R column names, so I used the make.names function, which replaces invalid characters in names with the '.' (dot) character. After cleaning up the cases where there were several dots in a row (eg, an empty () would be converted to ..), I had a unique set of names for my dataset. I preserved the existing camelCase of the column names for readbility. 
* Using select(x, contains()) I was able to create a new dataset only containing data from columns where the measurement was a mean or a standard deviation. I actually created 2 datasets, one for each measurement type, and then used cbind to put them together. 
* In order to maintain the ID of the subject in the trial, I created a vector with the data from the subject_test.txt and subject_train.csv files. Using rbind in the same order as in the previous steps, the subject IDs would be in the exact same order as the measurement data was. I then used cbind to add this column to the beginning of the dataframe and label it 'subject'. 
* 

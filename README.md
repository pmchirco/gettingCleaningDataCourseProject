# gettingCleaningDataCourseProject
Coursera class Getting and Cleaning Data Course Project

Course Project Assignment was to download a set of files containing smartphone accelerometer data, and from these file, create one dataset containing all measurements for either the mean or the standard deviation. Once this was complete, to take the averages of each variable and each test subject, and create an independent tiday data set from it. 

This was accomplished through R scriping, using both the dplyr and tidyr packages. 

I first downloaded the files, and read individual files into their own dataframes. Testing data and training data was merged using rbind to append one to the other. Column names on the initial dataset did not follow standard R syntactic standards, so I used the make.names function to clean them into something more appropriate. After the datasets were merged and the columns named, I added the subject data through cbind. 

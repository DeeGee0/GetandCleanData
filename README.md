Source
-----

Data set: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 


Script
---------------

`run_analysis.R`: this script takes the input data, and creates the output file as a tidy data set 'tidy_data.txt'

The script downloads and unzips the dataset from the source url. It then merges the data into one data frame, with only measurements for the mean and sd from the data set. The script then adds labels to ensure the data frame is tidy, before writing a new independent tidy dataset.


Code Book
---------

`CodeBook.md`: describes the variables, the data, and any transformations or work performed to clean up the data


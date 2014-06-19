README
========================================================

When the file **run_analysis.R**, which obtains the two tidy data sets, is called using source, the working directory should be that where the Samsung data have been unzipped; that is, the directory in which the folder named 'getdata-projectfiles-UCI HAR Dataset' is located. This is because of the relative references to directories in the script.

The script does the following:

Once data are read from the unzipped directory, train data are joined with their corresponding activities and number of subject, and the same with test data. The names "activity" and "subject" have been assigned to these last two variables.

Then, train and test data have been merged in a unique data frame. Features names have been assigned to the variables in that data frame (except activity and subject) from the 'features.txt' file. Finally, only variables related to means and standard deviation (79) have been extracted. The names of these variables have been changed from the original, deleting some characters and explaining the meaning of some letters (t and f). And the name from the numbers representing the different activities have been assigned from the file 'activity_labels.txt'. The last data frame (datameanstd in the script) has been saved as 'tidyset1.txt'.                       

A second tidy data set is saved in the file 'tidyset2means.txt' containing the means for the previous 79 variables for each activity and each subject.





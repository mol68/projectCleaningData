Codebook
========================================================

A total of 30 subjects aged 19-48 were involved in the experiment, randomly divided in two groups: train (70%) and test (30%). Each one performed six activities (WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING) and some measures have been taken using an accelorometer and a gyroscope embedded in a smartphone.

Data are zipped in 'getdata-projectfiles-UCI HAR Dataset.zip'. Once data are read from the unzip directory, train data are joined with their corresponding activities and number of subject, and the same with test data. The names "activity" and "subject" have been assigned to these last two variables.

Then, train and test data have been merged in a unique data frame. Features names have been assigned to the variables in that data frame (except activity and subject) from the 'features.txt' file. Finally, only variables related to means and standard deviation have been extracted. The names of these variables have been changed from the original, deleting some characters and explaining the meaning of some letters (t and f). And the name from the numbers representing the different activities have been assigned from the file 'activity_labels.txt'. The last data frame (datameanstd) has been saved as 'tidyset1.txt'.                       

A second tidy data set is saved in the file 'tidyset2means.txt' containing the means for the previous variables for each activity and each subject.
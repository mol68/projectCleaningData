Codebook
========================================================

A total of 30 subjects aged 19-48 were involved in the experiment, randomly divided in two groups: train (70%) and test (30%). Each one performed six activities (WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING) and some measures have been taken using an accelorometer and a gyroscope embedded in a smartphone. Original data are zipped in 'getdata-projectfiles-UCI HAR Dataset.zip'. 

From these, only the relatives to means and standar deviations are selected and returned in the 'tidyset1.txt' file by the script **run_analysis.R**, together with two more variables, indicating the activity and the subject corresponding to each measure (row):

1.  timeBodyAccmeanX  
2.	timeBodyAccmeanY   
3.	timeBodyAccmeanZ
4.	timeBodyAccstdX
5.	timeBodyAccstdY
6.	timeBodyAccstdZ                
7.	timeGravityAccmeanX
8.	timeGravityAccmeanY
9.	timeGravityAccmeanZ
10.	timeGravityAccstdX
11.	timeGravityAccstdY
12.	timeGravityAccstdZ             
13.	timeBodyAccJerkmeanX
14.	timeBodyAccJerkmeanY           
15.	timeBodyAccJerkmeanZ
16.	timeBodyAccJerkstdX            
17.	timeBodyAccJerkstdY
18.	timeBodyAccJerkstdZ            
19.	timeBodyGyromeanX
20.	timeBodyGyromeanY              
21.	timeBodyGyromeanZ
22.	timeBodyGyrostdX            
23.	timeBodyGyrostdY
24.	timeBodyGyrostdZ               
25.	timeBodyGyroJerkmeanX
26.	timeBodyGyroJerkmeanY          
27.	timeBodyGyroJerkmeanZ
28.	timeBodyGyroJerkstdX           
29.	timeBodyGyroJerkstdY
30.	timeBodyGyroJerkstdZ
31.	timeBodyAccMagmean
32.	timeBodyAccMagstd             
33.	timeGravityAccMagmean
34.	timeGravityAccMagstd           
35.	timeBodyAccJerkMagmean
36.	timeBodyAccJerkMagstd
37.	timeBodyGyroMagmean
38.	timeBodyGyroMagstd"             
39.	timeBodyGyroJerkMagmean
40.	timeBodyGyroJerkMagstd         
41.	freqBodyAccmeanX
42.	freqBodyAccmeanY              
43.	freqBodyAccmeanZ
44.	freqBodyAccstdX               
45.	freqBodyAccstdY
46.	freqBodyAccstdZ               
47.	freqBodyAccmeanFreqX
48.	freqBodyAccmeanFreqY         
49.	freqBodyAccmeanFreqZ
50.	freqBodyAccJerkmeanX         
51.	freqBodyAccJerkmeanY
52.	freqBodyAccJerkmeanZ        
53.	freqBodyAccJerkstdX
54.	freqBodyAccJerkstdY         
55.	freqBodyAccJerkstdZ
56.	freqBodyAccJerkmeanFreqX   
57.	freqBodyAccJerkmeanFreqY
58.	freqBodyAccJerkmeanFreqZ    
59.	freqBodyGyromeanX
60.	freqBodyGyromeanY     
61.	freqBodyGyromeanZ
62.	freqBodyGyrostdX       
63.	freqBodyGyrostdY
64.	freqBodyGyrostdZ       
65.	freqBodyGyromeanFreqX
66.	freqBodyGyromeanFreqY     
67.	freqBodyGyromeanFreqZ
68.	freqBodyAccMagmean      
69.	freqBodyAccMagstd
70.	freqBodyAccMagmeanFreq      
71.	freqBodyBodyAccJerkMagmean
72.	freqBodyBodyAccJerkMagstd   
73.	freqBodyBodyAccJerkMagmeanFreq
74.	freqBodyBodyGyroMagmean   
75.	freqBodyBodyGyroMagstd
76.	freqBodyBodyGyroMagmeanFreq    
77.	freqBodyBodyGyroJerkMagmean
78.	freqBodyBodyGyroJerkMagstd    
79.	freqBodyBodyGyroJerkMagmeanFreq
80. activity: The activity developed in this measure
81.	subject: The subject involved in this measure


The second tidy data set provided by **run_analysis.R**, named 'tidyset2means.txt', contains the means for the previous first 79 variables for each activity and each subject.
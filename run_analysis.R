## Reads the data sets

library(plyr)

xtrain<-read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/x_train.txt")
ytrain<-read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt")
subjecttrain<-read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt")

xtest<-read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt")
ytest<-read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt")
subjecttest<-read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt")

activitylabels<-read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt")
features<-read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/features.txt")

## Merges the training and the test sets to create one data set

dimnames(ytrain)[[2]]<-"activity"
dimnames(ytest)[[2]]<-"activity"
dimnames(subjecttrain)[[2]]<-"subject"
dimnames(subjecttest)[[2]]<-"subject"
train<-cbind(xtrain,ytrain,subjecttrain)
test<-cbind(xtest,ytest,subjecttest)
dataset<-rbind(train,test)
dimnames(dataset)[[1]]<-c(dimnames(train)[[1]],as.character(as.numeric(dimnames(test)[[1]])+dim(train)[1]))
namevar<-as.character(features[,2])
dimnames(dataset)[[2]][1:dim(xtrain)[2]]<-namevar

## Extracts only the measurements on the mean and standard deviation for each measurement

indexmeanstd<-grep("mean|std",namevar)
indexes<-c(indexmeanstd,dim(dataset)[2]-1,dim(dataset)[2])
datameanstd<-dataset[,indexes]


## Uses descriptive activity names to name the activities in the data set

datameanstd$activity<-as.factor(datameanstd$activity)
datameanstd$activity<-mapvalues(datameanstd$activity,levels(datameanstd$activity),levels(activitylabels[,2]))


## Appropriately labels the data set with descriptive variable names

colnames(datameanstd)<-gsub("[()-]","",colnames(datameanstd))
colnames(datameanstd)<-gsub("^t","time",colnames(datameanstd))
colnames(datameanstd)<-gsub("^f","freq",colnames(datameanstd))
write.table(datameanstd, "tidyset1.txt")

## Creates a second, independent tidy data set with the average of each variable for each activity and each subject

mean_act_subj<-ddply(datameanstd,.(activity,subject),numcolwise(mean))
write.table(mean_act_subj, "tidyset2means.txt")

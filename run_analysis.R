##0. a) Getting the data##
if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/Dataset.zip",method="curl")
unzip(zipfile="./data/Dataset.zip",exdir="./data")
#check files#
path_rf <- file.path("./data" , "UCI HAR Dataset")
files<-list.files(path_rf, recursive=TRUE)
files #check
##0. b) Creating variables from the data##
dataActivityTest  <- read.table(file.path(path_rf,
                                          "test" , "Y_test.txt" ),
                                header = FALSE)
str(dataActivityTest) #check
dataActivityTrain <- read.table(file.path(path_rf,
                                          "train", "Y_train.txt"),
                                header = FALSE)
str(dataActivityTrain)
dataSubjectTrain <- read.table(file.path(path_rf,
                                         "train", "subject_train.txt"),
                               header = FALSE)
str(dataSubjectTrain) #check
dataSubjectTest  <- read.table(file.path(path_rf,
                                         "test" , "subject_test.txt"),
                               header = FALSE)
str(dataSubjectTest) #check
dataFeaturesTest  <- read.table(file.path(path_rf,
                                          "test" , "X_test.txt" ),
                                header = FALSE)
str(dataFeaturesTest) #check
dataFeaturesTrain <- read.table(file.path(path_rf,
                                          "train", "X_train.txt"),
                                header = FALSE)
str(dataFeaturesTrain) #check
##1. Merges the training and the test sets to create one data set.##
#concatenating by rows#
dataSubject <- rbind(dataSubjectTrain, dataSubjectTest)
dataActivity<- rbind(dataActivityTrain, dataActivityTest)
dataFeatures<- rbind(dataFeaturesTrain, dataFeaturesTest)
#setting variable names#
names(dataSubject)<-c("subject")
names(dataActivity)<- c("activity")
dataFeaturesNames <- read.table(file.path(path_rf, "features.txt"),
                                head=FALSE)
names(dataFeatures)<- dataFeaturesNames$V2
#merging columns to get one data frame ("Data")#
dataCombine <- cbind(dataSubject, dataActivity)
Data <- cbind(dataFeatures, dataCombine)
##2. Extracts only the measurements on the mean and standard deviation#
#for each measurement.##
subdataFeaturesNames<-dataFeaturesNames$V2[grep("mean\\(\\)|std\\(\\)",
                                                dataFeaturesNames$V2)]
selectedNames<-c(as.character(subdataFeaturesNames), "subject", "activity" )
Data<-subset(Data,select=selectedNames)
str(Data) #check
##3. Uses descriptive activity names to name the activities in the data set.##
activityLabels <- read.table(file.path(path_rf, "activity_labels.txt"),
                             header = FALSE)
Data$activity <- factor(Data$activity, labels = activityLabels$V2)
head(Data$activity,30) #check
##4. Appropriately labels the data set with descriptive variable names.##
names(Data)<-gsub("^t", "time", names(Data))
names(Data)<-gsub("^f", "frequency", names(Data))
names(Data)<-gsub("Acc", "Accelerometer", names(Data))
names(Data)<-gsub("Gyro", "Gyroscope", names(Data))
names(Data)<-gsub("Mag", "Magnitude", names(Data))
names(Data)<-gsub("BodyBody", "Body", names(Data))
names(Data) #check
##5. From the data set in step 4, creates a second, independent tidy data set#
#with the average of each variable for each activity and each subject.##
Data_tidy<-aggregate(. ~subject + activity, Data, mean)
Data_tidy<-Data_tidy[order(Data_tidy$subject,Data_tidy$activity),]
write.table(Data_tidy, file = "tidydata.txt",row.name=FALSE)

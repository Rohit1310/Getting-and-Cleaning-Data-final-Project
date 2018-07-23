library(dplyr)


# downloading zip file containing data if it hasn't already been downloaded
zipUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipFile <- "UCI HAR Dataset.zip"

if (!file.exists(zipFile)) {
  download.file(zipUrl, zipFile, mode = "wb")
}

# unzip zip file containing data if data directory doesn't already exist
dataPath <- "C:/Users/Admin/Documents/UCI HAR Dataset/UCI HAR Dataset"
if (!file.exists(dataPath)) {
  unzip(zipFile)
}


# Changing working directory
setwd("C:/Users/Admin/Documents/UCI HAR Dataset")


# Reading Data from the working directory
xtest <- read.table(file = "./test/X_test.txt");
ytest <- read.table(file = "./test/y_test.txt");
subjestTest <- read.table(file = "./test/subject_test.txt");
xtrain <- read.table(file = "./train/X_train.txt");
ytrain <- read.table(file = "./train/y_train.txt");
subjestTrain <- read.table(file = "./train/subject_train.txt");
features <- read.table(file = "./features.txt");
activityLabels <- read.table("./activity_labels.txt");

#column naming for the datasets
names(xtest) <- features[,2]
names(xtrain) <- features[,2]
names(activityLabels) <- c("activityId","activityNames");
names(ytest) <- c("activity")
names(ytrain) <- c("activity")
names(features) <- c("count", "variable")

#########################################################################

# 1. merging test and training data
traningData <- cbind(ytrain,xtrain)
testData <- cbind(ytest,xtest)
finalData <- rbind(traningData,testData)

########################################################################

# 2. extracting the measurements on the mean and standard deviation for each measurement

meanAndsd <- features$variable[grepl("*mean*\\(\\)|*std*\\(\\)", features[,2])]
dataFilter <- c("activity", as.character(meanAndsd))
filteredData <- finalData[dataFilter]

########################################################################

# 3. Named the activities as per the descriptive activity names in the data set

filteredData$activity <- factor(
                                filteredData$activity , 
                                levels = activityLabels$activityId, 
                                labels = activityLabels$activityNames
                                )

#######################################################################

# 4. Giving descriptive variable names to the data set.

# assigning the column names to a new vector.
filteredDatanames <- colnames(filteredData)

# Removing special characters from the column names.
filteredDatanames <- gsub("[\\(\\)-]", "", filteredDatanames)

# Expaning the alias to the full forms from the column names.
filteredDatanames<- gsub("^f", "frequencyDomain", filteredDatanames)
filteredDatanames<- gsub("^t", "timeDomain", filteredDatanames)
filteredDatanames<- gsub("Acc", "Accelerometer", filteredDatanames)
filteredDatanames<- gsub("Gyro", "Gyroscope", filteredDatanames)
filteredDatanames<- gsub("Mag", "Magnitude", filteredDatanames)
filteredDatanames<- gsub("Freq", "Frequency", filteredDatanames)
filteredDatanames<- gsub("mean", "Mean", filteredDatanames)
filteredDatanames<- gsub("std", "StandardDeviation", filteredDatanames)

# Removing multiple words from the column names.
filteredDatanames <- gsub("BodyBody", "Body" , filteredDatanames)

# Renaming the dataset with descriptive names.
colnames(filteredData) <- filteredDatanames


###################################################################################################

# 5. Creating new data set on the of means on the basis of activity for all the measured variables

tidyMean <- filteredData %>% 
              group_by(activity) %>%
            summarise_all(funs(mean))

write.table(tidyMean, "tidyMean_dataset.txt", row.names = FALSE, 
            quote = FALSE)

#END

activity_desc <- function(activity) {
  if(activity == 1) {
    return("WALKING")
  } else if(activity == 2) {
    return("WALKING_UPSTAIRS")
  } else if(activity == 3) {
    return("WALKING_DOWNSTAIRS")
  } else if(activity == 4) {
    return("SITTING")
  } else if(activity == 5) {
    return("STANDING")
  } else if(activity == 6) {
    return("LAYING")
  } else {
    return("")
  }
}

test_subjects <- read.table("UCI HAR Dataset/test/subject_test.txt")
train_subjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
test_X <- read.table("UCI HAR Dataset/test/X_test.txt")
train_X <- read.table("UCI HAR Dataset/train/X_train.txt")
test_y <- read.table("UCI HAR Dataset/test/y_test.txt")
train_y <- read.table("UCI HAR Dataset/train/y_train.txt")
test_activities = unlist(lapply(test_y[,1], activity_desc))
train_activities = unlist(lapply(train_y[,1], activity_desc))

testWearableData <- data.frame(
  tBodyAcc_mean_X = test_X[,1],
  tBodyAcc_mean_Y = test_X[,2],
  tBodyAcc_mean_z = test_X[,3],
  tBodyAcc_std_X = test_X[,4],
  tBodyAcc_std_Y = test_X[,5],
  tBodyAcc_std_z = test_X[,6],
  tGravityAcc_mean_X = test_X[,41],
  tGravityAcc_mean_Y = test_X[,42],
  tGravityAcc_mean_Z = test_X[,43],
  tGravityAcc_std_X = test_X[,44],
  tGravityAcc_std_Y = test_X[,45],
  tGravityAcc_std_Z = test_X[,46],
  tBodyAccJerk_mean_X = test_X[,81],
  tBodyAccJerk_mean_Y = test_X[,82],
  tBodyAccJerk_mean_Z = test_X[,83],
  tBodyAccJerk_std_X = test_X[,84],
  tBodyAccJerk_std_Y = test_X[,85],
  tBodyAccJerk_std_Z = test_X[,86],
  tBodyGyro_mean_X = test_X[,121],
  tBodyGyro_mean_Y = test_X[,122],
  tBodyGyro_mean_Z = test_X[,123],
  tBodyGyro_std_X = test_X[,124],
  tBodyGyro_std_Y = test_X[,125],
  tBodyGyro_std_Z = test_X[,126],
  tBodyGyroJerk_mean_X = test_X[,161],
  tBodyGyroJerk_mean_Y = test_X[,162],
  tBodyGyroJerk_mean_Z = test_X[,163],
  tBodyGyroJerk_std_X = test_X[,164],
  tBodyGyroJerk_std_Y = test_X[,165],
  tBodyGyroJerk_std_Z = test_X[,166],
  tBodyAccMag_mean = test_X[,201],
  tBodyAccMag_std = test_X[,202],
  tGravityAccMag_mean = test_X[,214],
  tGravityAccMag_std = test_X[,215],
  tBodyAccJerkMag_mean = test_X[,227],
  tBodyAccJerkMag_std = test_X[,228],
  tBodyGyroMag_mean = test_X[,240],
  tBodyGyroMag_std = test_X[,241],
  tBodyGyroJerkMag_mean = test_X[,253],
  tBodyGyroJerkMag_std = test_X[,254],
  fBodyAcc_mean_X = test_X[,266],
  fBodyAcc_mean_Y = test_X[,267],
  fBodyAcc_mean_Z = test_X[,268],
  fBodyAcc_std_X = test_X[,269],
  fBodyAcc_std_Y = test_X[,270],
  fBodyAcc_std_Z = test_X[,271],
  fBodyAccJerk_mean_X = test_X[,345],
  fBodyAccJerk_mean_Y = test_X[,346],
  fBodyAccJerk_mean_Z = test_X[,347],
  fBodyAccJerk_std_X = test_X[,348],
  fBodyAccJerk_std_Y = test_X[,349],
  fBodyAccJerk_std_Z = test_X[,350],
  fBodyGyro_mean_X = test_X[,424],
  fBodyGyro_mean_Y = test_X[,425],
  fBodyGyro_mean_Z = test_X[,426],
  fBodyGyro_std_X = test_X[,427],
  fBodyGyro_std_Y = test_X[,428],
  fBodyGyro_std_Z = test_X[,429],
  fBodyAccMag_mean = test_X[,503],
  fBodyAccMag_std = test_X[,504],
  fBodyAccJerkMag_mean = test_X[,516],
  fBodyAccJerkMag_std = test_X[,517],
  fBodyGyroMag_mean = test_X[,529],
  fBodyGyroMag_std = test_X[,530],
  fBodyGyroJerkMag_mean = test_X[,542],
  fBodyGyroJerkMag_std = test_X[,543],
  subject = test_subjects[,1],
  activity = test_activities
)

trainWearableData <- data.frame(
  tBodyAcc_mean_X = train_X[,1],
  tBodyAcc_mean_Y = train_X[,2],
  tBodyAcc_mean_z = train_X[,3],
  tBodyAcc_std_X = train_X[,4],
  tBodyAcc_std_Y = train_X[,5],
  tBodyAcc_std_z = train_X[,6],
  tGravityAcc_mean_X = train_X[,41],
  tGravityAcc_mean_Y = train_X[,42],
  tGravityAcc_mean_Z = train_X[,43],
  tGravityAcc_std_X = train_X[,44],
  tGravityAcc_std_Y = train_X[,45],
  tGravityAcc_std_Z = train_X[,46],
  tBodyAccJerk_mean_X = train_X[,81],
  tBodyAccJerk_mean_Y = train_X[,82],
  tBodyAccJerk_mean_Z = train_X[,83],
  tBodyAccJerk_std_X = train_X[,84],
  tBodyAccJerk_std_Y = train_X[,85],
  tBodyAccJerk_std_Z = train_X[,86],
  tBodyGyro_mean_X = train_X[,121],
  tBodyGyro_mean_Y = train_X[,122],
  tBodyGyro_mean_Z = train_X[,123],
  tBodyGyro_std_X = train_X[,124],
  tBodyGyro_std_Y = train_X[,125],
  tBodyGyro_std_Z = train_X[,126],
  tBodyGyroJerk_mean_X = train_X[,161],
  tBodyGyroJerk_mean_Y = train_X[,162],
  tBodyGyroJerk_mean_Z = train_X[,163],
  tBodyGyroJerk_std_X = train_X[,164],
  tBodyGyroJerk_std_Y = train_X[,165],
  tBodyGyroJerk_std_Z = train_X[,166],
  tBodyAccMag_mean = train_X[,201],
  tBodyAccMag_std = train_X[,202],
  tGravityAccMag_mean = train_X[,214],
  tGravityAccMag_std = train_X[,215],
  tBodyAccJerkMag_mean = train_X[,227],
  tBodyAccJerkMag_std = train_X[,228],
  tBodyGyroMag_mean = train_X[,240],
  tBodyGyroMag_std = train_X[,241],
  tBodyGyroJerkMag_mean = train_X[,253],
  tBodyGyroJerkMag_std = train_X[,254],
  fBodyAcc_mean_X = train_X[,266],
  fBodyAcc_mean_Y = train_X[,267],
  fBodyAcc_mean_Z = train_X[,268],
  fBodyAcc_std_X = train_X[,269],
  fBodyAcc_std_Y = train_X[,270],
  fBodyAcc_std_Z = train_X[,271],
  fBodyAccJerk_mean_X = train_X[,345],
  fBodyAccJerk_mean_Y = train_X[,346],
  fBodyAccJerk_mean_Z = train_X[,347],
  fBodyAccJerk_std_X = train_X[,348],
  fBodyAccJerk_std_Y = train_X[,349],
  fBodyAccJerk_std_Z = train_X[,350],
  fBodyGyro_mean_X = train_X[,424],
  fBodyGyro_mean_Y = train_X[,425],
  fBodyGyro_mean_Z = train_X[,426],
  fBodyGyro_std_X = train_X[,427],
  fBodyGyro_std_Y = train_X[,428],
  fBodyGyro_std_Z = train_X[,429],
  fBodyAccMag_mean = train_X[,503],
  fBodyAccMag_std = train_X[,504],
  fBodyAccJerkMag_mean = train_X[,516],
  fBodyAccJerkMag_std = train_X[,517],
  fBodyGyroMag_mean = train_X[,529],
  fBodyGyroMag_std = train_X[,530],
  fBodyGyroJerkMag_mean = train_X[,542],
  fBodyGyroJerkMag_std = train_X[,543],
  subject = train_subjects[,1],
  activity = train_activities
)

wearableData <- rbind(testWearableData, trainWearableData)

library(dplyr)
wearableDataMeans <- wearableData %>% group_by(activity, subject) %>%
  summarize(across(tBodyAcc_mean_X:fBodyGyroJerkMag_std, list(mean), .names = "average_{.col}"))

write.table(wearableData, 'wearableData.txt', row.names = FALSE)
write.table(wearableDataMeans, 'wearableDataMeans.txt', row.names = FALSE)

# README

## run_analysis.R

Data cleaning steps
1. Open the following files to extract data using read.table.
   - UCI HAR Dataset/test/subject_test.txt
   - UCI HAR Dataset/train/subject_train.txt
   - UCI HAR Dataset/test/X_test.txt
   - UCI HAR Dataset/train/X_train.txt
   - UCI HAR Dataset/test/y_test.txt
   - UCI HAR Dataset/train/y_train.txt
   
2. Data from y_test.txt and y_train.txt was converted to more descriptive activity names
   - 1, 2, 3, 4, 5, 6 were converted to 'WALKING', 'WALKING_UPSTAIRS', 'WALKING_DOWNSTAIRS', 'SITTING', 'STANDING', 'LAYING' respectively
   - Applied 'activity_desc' function to activity data using lapply to do the conversion.

3. To create the dataset containing all the mean and standard deviation values for all measurements, two data frames were created first then merged into a single dataset.
   - testWearableData - contains data from the testing set (subject_test.txt, X_test.txt, converted activity names from y_test.txt data)
   - trainWearableData - contains data from the training set (subject_train.txt, X_train.txt, converted activity names from y_train.txt data)
   - 'rbind' was used to merge the two data frame into a single data frame 'wearableData'.

5. To create the dataset of measurement averages for every activity and every subject, tapply was used to compute the mean of a measurement, using the subject and activity columns as factors. To perform the tapply to all measurements, lapply was used on the first 66 columns to create 'wearableDataMeans'
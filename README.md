This file describes how the script: run_analysis.R works

Important things to know before executing the script:

- It worked on R version 3.2.2 (2015-08-14)
- It assumes that the Samsung data (test and training data sets) are in your working directory
- It requires the package: dplyr
- It generates the file: tidy_table.txt
- Several comments in the script provide additional information    

Set-by-step:

- It merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement.
  Variables selected contain in their name the text "mean" or "std" and do not contain "Freq" or "angle"
- It preserves the names of the variables described in the file features.txt
- Finally, it creates a tidy data set (tidy_table.txt) with the average of each variable for each activity and each subject.

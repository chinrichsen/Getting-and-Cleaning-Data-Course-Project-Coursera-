# Getting and Cleaning Data Course Project Coursera

This repo contains all the relevant information about the Week 4 Course Project of the course: "Getting and Cleaning Data"

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. The project requires you to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected

Main Description of the used data:
One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data represent data collected from the accelerometers from the Samsung Galaxy S smartphone. The data used in the project is available in https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and a full explanation of the data sets is in http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Objectives:
You should create one R script called run_analysis.R that does the following.

1) Merges the training and the test sets to create one data set.
2) Extracts only the measurements on the mean and standard deviation for each measurement.
3) Uses descriptive activity names to name the activities in the data set
4) Appropriately labels the data set with descriptive variable names.
5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The required script, run_analysis.R, is available in this repo, and the general explanation of how it works you can find it in the codebook, CodeBook.md

Finally, in this repo you can find the output of the run_analysis.R script, which is a tidy data set called tidy_data_set.txt (step 5 of the objectives)

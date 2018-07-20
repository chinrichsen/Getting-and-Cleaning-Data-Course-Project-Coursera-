# Getting and Cleaning Data Course Project Coursera

This repo contains all the relevant information about the Week 4 Course Project of the course: "Getting and Cleaning Data"

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. The project requires you to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected

## Main Description of the used data:
One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data represent data collected from the accelerometers from the Samsung Galaxy S smartphone. The data used in the project is available in https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and a full explanation of the data sets is in http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Objectives:
You should create one R script called run_analysis.R that does the following.

1) Merges the training and the test sets to create one data set.
2) Extracts only the measurements on the mean and standard deviation for each measurement.
3) Uses descriptive activity names to name the activities in the data set
4) Appropriately labels the data set with descriptive variable names.
5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## How to do the analysis

1) Be sure to install the reshape package first

2) Set your own working directory. You can do this changing the path in the third line of the code in the run_analysis.R script

4) Download the data information to your working directory. Be sure to uncompressed the .zip file. The link of the data is: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

5) Run the script run_analysis.R

## Files in this repo

You can find:

1) The required script, run_analysis.R

2) CodeBook.md: Gives a general explanation about the main data set, their attributes, the data sets used, the variables used and the data transofrmation process

3) tidy_data_set.txt: Is the required data set with the average of each variable for each activity and each subject

4) README.md: Explains the main description of the project, the description of the used data, the objectives and how to the the required analysis

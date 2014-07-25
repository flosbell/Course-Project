Course project - Getting and Cleaning Data, Summer 2014
=======================================================

CONTENTS OF GITHUB FOLDER
--------------------------
  * README.md 	--> This file
  * codebook.md 	--> Description of the tidy dataset
  * run_analysis.R 	--> R script that produces the file 'tidy.txt'


ABOUT run_analysis.R
---------------------
 The script will download and unzip dataset into the working directory and produce file 'tidy.txt'


REQUIREMENTS FOR run_analysis.R
--------------------------------
 * Distribution of R
 * Installed data.table package
 * Installed tools package
 * Internet Connection	


HOW TO USE run_analysis.R
-------------------------------
 1. Run R studio or R console
 2. Save the file 'run_analysis.R' into directory that you want to work in
 3. Set the directory containing 'run_analysis.R' as the working directory.
    * (Optional) If you already dowloaded the zip file with data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip, rename it to 'data.zip' and save it into working directory. The script will skip the dowload of file if it finds it in the working directory.
 4. Type 'source("run_analysis.R")' into the console and press enter
 5. Wait while the script works (can take up to several minutes, depending on your inetrnet connection and PC)
 5. After the script finishes, file 'tidy.txt' should be in your working directory. You can load it
    into R using the 'read.table("tidy.txt")' command.
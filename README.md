Course project - Getting and Cleaning Data, Summer 2014


CONTENTS OF GITHUB FOLDER

README.md 	--> This file

codebook.md 	--> Description of the tidy dataset

run_analysis.R 	--> R script that produces the file 'tidy.txt'


ABOUT run_analysis.R

 The script will download and unzip dataset into the working directory and produce file 'tidy.txt'


REQUIREMENTS FOR run_analysis.R

 Distribution of R
 Installed data.table package
 Internet Connection	


HOW TO USE run_analysis.R

 1. Set the directory that will contain tidy.txt as the working directory.
 2. Save the file 'run_analysis.R' in this directory
 3. Type 'source("run_analysis.R")' into the console and press enter
 4. Wait while the script works (can take up to several minutes, depending on your inetrnet connection and PC)
 5. After the script finishes, file 'tidy.txt' should be in your working directory. You can load it
    into R using the 'read.table("tidy.txt")' command.
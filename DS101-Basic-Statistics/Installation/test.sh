#!/bin/bash

# change directory to the R folder
echo "changing directory to R folder"
cd /Library/Frameworks/R.framework/Versions/4.1
echo "ensure you're in the right directory"
pwd

# curl a.R
echo "curl a.R from github"
curl -O https://github.com/Wildertrek/Jupyter-Latex/blob/master/install_scripts/a.r

# Start R terminal
echo " R Terminal start and run script"
#Rscript a.r




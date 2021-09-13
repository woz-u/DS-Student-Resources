#!/bin/bash

# this script is for mac and runs in a terminal and can run on latest M1 chip macs :) 
# chmod 755 Homebrew_install.sh then ./Homebrew_install.sh

#install homebrew
echo "installing homebrew please enter your password when asked"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

#install Python3
echo "installing python3"
brew install python3

#install r
echo "installing R App"
brew install --cask r

#install rstudio
echo "installing RStudio"
brew install --cask rstudio

#install jupyter
echo "installing Jupyter"
brew install jupyter

#install jupyter-lab
echo "installing Jupyter-lab"
brew install jupyterlab

#install mysqlworkbench
echo "install mysqlworkbench"
brew install --cask mysqlworkbench

#install mysql
echo "installing mysql"
brew install mysql

#start mysql automatically
echo "Starting mysql"
brew services start mysql

#install mongosh
echo "installing mongosh"
brew install mongosh

# todo: install mongo
# brew tap mongodb/brew
# brew install mongodb-community@4.2
# brew services start mongodb-community@4.2

#install vscode
echo "installing vscode"
brew install --cask visual-studio-code

#install github desktop
echo "install github desktop"
brew install --cask github

#install slack
echo "install slack"
brew install --cask slack

#install zoom
echo "install zoom enter password when asked"
brew install --cask zoom

#install tableau
echo "installing tableau enter password when asked"
brew install --cask tableau-public

#install speedtest
echo "installing speedtest"
brew install speedtest-cli

#install G*Power
echo "installing G*Power"
brew install --cask gpower

#install wget
echo "installing wget"
brew install wget

#install julia
echo "installing Julia"
brew install julia

# Install R kernelspec
# change directory to the R folder
echo "changing directory to R folder"
cd /Library/Frameworks/R.framework/Versions/4.1
echo "ensure you're in the right directory"
pwd

# curl a.r
echo "curl a.r from github"
curl -O https://github.com/Wildertrek/Jupyter-Latex/blob/master/install_scripts/a.r

# Start R terminal
echo "R Terminal start and run script"
Rscript a.r







echo "*******************************************************************"
echo "Congratulations! Main Data Science applications have been installed"
echo "*******************************************************************"
echo ""
echo "install R kernelspec for jupyter lab next by following these instructions:"
echo ""
echo "It's important that these next commands are done from within the version of R that you want to link to Jupyter Lab."
echo ""
echo "cd /Library/Frameworks/R.framework/Versions/4.1"
echo ""
echo "Open R and install the necessary packages by running the command below:"
echo "1. Type R in your terminal"
echo ""
echo "R"
echo ""
echo "2. Configure IRkernel from within R by running the command below:"
echo "install.packages(c('repr', 'IRdisplay', 'evaluate', 'crayon', 'pbdZMQ', 'devtools', 'uuid', 'digest'))"
echo ""
echo "3. install devtools and the IRKernel by running the command below:"
echo "devtools::install_github('IRkernel/IRkernel')"
echo ""
echo "4. install spec to make available to Jupyter Lab by running the command below:"
echo "IRkernel::installspec(user = FALSE)"
echo ""
echo "Exit out of your R terminal by typing q()"
echo ""
echo "Next install Julia kernel into Jupyter"
echo ""
echo "Open the Julia Command-Line by typing the following line"
echo ""
echo "julia"
echo ""
echo "Press ENTER
echo ""
echo "Run the following command in the Julia Terminal"
echo ""
echo "using Pkg"
echo ""
echo "Press ENTER"
echo ""
echo "Run the following command in the Julia Terminal"
echo ""
echo "Pkg.add("IJulia")"
echo ""
echo "Press ENTER"
echo ""
echo "Wait a minute or so for the installation to complete"
echo ""
echo "Exit out of Julia terminal by typing CTRL-D"
echot ""
echo "Now in a new terminal (not Julia)test jupyter lab run test by running the command below:"
echo "jupyter lab"
echo "ensure you see notebook choices for Python3, Julia and R"
echo ""
echo "Give your computer a good reboot!"
echo ""
echo "CONGRATULATIONS!!!"

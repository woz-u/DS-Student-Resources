#!/bin/bash

# Download this script for use with Mac i86 Processor ONLY
# curl -O https://raw.githubusercontent.com/woz-u/DS-Student-Resources/main/DS101-Basic-Statistics/Installation/i86-Homebrew-install.sh

# change permissions so script is executable
echo "chmod 755 i86-Homebrew-install.sh"

echo "run command below: "
echo "./i86-Homebrew-install.sh"

#install homebrew
echo "installing homebrew please enter your password when asked"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

#install github desktop
echo "install github desktop"
brew install --cask github

#install Python3 commented out because Jupyter Lab installs python as a dependency
#echo "installing python3"
#brew install python@3.9

#install jupyter-lab
echo "installing Jupyter-lab"
brew install jupyterlab

#symlink python to python3 location
echo "symlink python to python3"
ls -l /usr/local/bin/python*
ln -s -f /usr/local/bin/python3 /usr/local/bin/python

#set python/pip from python2 to python3
#echo "setting python and pip in .bashrc"
#echo "alias python=/usr/local/bin/python3" >> ~/.bashrc
#echo "alias pip=/usr/local/bin/pip3" >> ~/.bashrc
#echo "setting python and pip in .zshrc"
#echo "alias python=/usr/local/bin/python3" >> ~/.zshrc
#echo "alias pip=/usr/local/bin/pip3" >> ~/.zshrc

#install r
echo "installing R App"
brew install --cask r

#install rstudio
echo "installing RStudio"
brew install --cask rstudio

# chown and chmod man pages
sudo chown -R $(whoami) /usr/local/share/man/man5
chmod u+w /usr/local/share/man/man5

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

#install mongo
brew tap mongodb/brew
brew install mongodb-community
brew services start mongodb-community

#install vscode
echo "installing vscode"
brew install --cask visual-studio-code

#install slack
#echo "install slack"
#brew install --cask slack

#install zoom
#echo "install zoom enter password when asked"
#brew install --cask zoom

#install tableau
echo "installing tableau enter password when asked"
brew install --cask tableau-public

#install speedtest
echo "installing speedtest"
brew tap teamookla/speedtest
brew install speedtest

#install G*Power
echo "installing G*Power"
brew install --cask gpower

#install wget
echo "installing wget"
brew install wget

#install julia
echo "installing Julia"
brew install julia

#install node commented out since Jupyter Lab installs node as a dependency
#echo "installing node"
#brew install node

#install AWS Command Line Interface
echo "installing awscli"
brew install awscli

#install openjdk@11 as it's a neo4j dependency
#echo "installing openjdk@11 for neo4j"
#brew install openjdk@11

#install neo4j
#echo "installing neo4j"
#brew install --cask neo4j

#install ds-students
pip3 install ds-students

#upgrade pip
pip3 install --upgrade pip

#ensuring jupyterlab installs all it needs
#pip install jupyterlab

#run brew list to get a list of applications installed
brew list
brew services list

echo "*******************************************************************"
echo "Congratulations! Main Data Science applications have been installed"
echo "Check the brew list above to ensure all applications are installed"
echo "github, git, python, r, rstudio, jupyterlab, mysqlworkbench, mysql,"
echo "vscode, tableau-public, speedtest-cli, gpower, wget, julia"
echo "*******************************************************************"
echo ""
echo "install R kernelspec for jupyter lab next by following these instructions:"
echo ""
echo "It's important that these next commands are done from within the version of R that you want to link to Jupyter Lab."
echo ""
echo "cd /Library/Frameworks/R.framework/Versions/Current"
echo ""
echo "Check to ensure you are in R directory pwd , Open R and install the necessary packages by running the command below:"
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
echo "IRkernel::installspec(user = TRUE)"
echo ""
echo "Exit out of your R terminal by typing q()"
echo ""
echo "Next install Julia kernel into Jupyter"
echo ""
echo "Open the Julia Command-Line by typing the following line:"
echo ""
echo "julia"
echo ""
echo "Press ENTER and you should now be in the Julie Terminal"
echo ""
echo "Run the following command in the Julia Terminal:"
echo ""
echo ""
echo "using Pkg"
echo ""
echo ""
echo "Press ENTER"
echo ""
echo "Run the following command in the Julia Terminal:"
echo ""
echo ""
echo 'Pkg.add("IJulia")'
echo ""
echo ""
echo "Press ENTER"
echo ""
echo "Wait a minute or so for the installation to complete"
echo ""
echo "Exit out of Julia terminal by typing CTRL-D"
echo ""
echo "Now in a new terminal (not Julia)test jupyter lab run test by running the command below:"
echo ""
echo "jupyter lab"
echo ""
echo "ensure you see notebook choices for Python3, Julia and R"
echo ""
echo "Give your computer a good reboot!"
echo ""
echo "CONGRATULATIONS!!!"

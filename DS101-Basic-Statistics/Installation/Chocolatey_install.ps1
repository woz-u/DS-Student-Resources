# Step 0: ensure you have a solid, high-bandwidth and unlimited 
# connection to the internet

#IMPORTANT if you have Avast or any other security protection, please dissable during installation

# Step 1: Open Powershell and run as Administrator

# Step 2: Run this command to install Chocolately in Powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Step 3: Close and Reopen Powershell for chocolately to take effect

# Step 4: Install PythoIMPORTANT n and set PATH Note: that if python is already installed please uninstall
choco install python3 --params "/InstallDir:C:\Python39"
#<Press A> for All

# Step 5: Close and Reopen Powershell for python to be added to PATH

# Step 6 OPTIONAL: Open a command prompt as adminstrator and Upgrade pip
# pip install --upgrade pip

# Step 7: use the command prompt to Install Jupyter Lab
pip install jupyterlab

# Step 8: Install Data Science Applications using powershell as administrator
choco install git mysql mysql.workbench vscode mongodb-shell vscode-mongodb r r.studio tableau-public github-desktop julia speedtest putty wget
#<Press A> for All
# gpower may or maynot work depending on the weather so I removed it for now, I'll be testing it periodically to see if was fixed....

# Step 9: Follow steps to connect Github Desktop to Github.com account/create new account

# Step 10: Install R kernel into Jupyter
# open a command prompt as administrator
# change directories by copying and pasting the below command into your command prompt
# cd C:\Program Files\R\R-4.1.1\bin 
# Then type R in the command prompt
# an R prompt should open inside the command prompt/terminal
# inside the R prompt install the below commands in order:

install.packages("devtools")

devtools::install_github("IRkernel/IRkernel")

IRkernel::installspec()

# Step 11: Install Julia kernal into Jupyter
# Open the Julia Command-Line
# Run the following line
# using Pkg
# press ENTER
# Then type this command
# Pkg.add("IJulia")
# Press ENTER
# You’ll have to wait a minute or so for the installation to complete

# Step 12: exit out of your current command prompt
# Step 13: reopen a command prompt (Not in administrator mode) then test jupyter-lab by typing "jupyter-lab" 
# Step 14: ensure you see an option for R and Julia notebooks
# Step 15: give your computer a good reboot!
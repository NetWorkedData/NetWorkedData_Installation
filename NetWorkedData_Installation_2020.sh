#!/bin/bash

# test on MacOS
# go to user's directory
cd ~/Desktop

# remove old folder
rm -rf NetWorkedData_Installation/.git*
rm -r NetWorkedData_Installation

# checkout NetWorkedData_Tutorial
git clone git@github.com:NetWorkedData/NetWorkedData_Installation.git
cd NetWorkedData_Installation

# create new branch 
git checkout Unity_2020
git checkout -b Unity_2020_Test Unity_2020
git switch Unity_2020_Test

# add extension to ignore
echo '' >> .gitignore
echo '# Ignore NetWorkedData files' >> .gitignore
echo '*.prp' >> .gitignore
echo '*/*.prp' >> .gitignore
echo '*/Assets/NetWorkedData_Private/*' >> .gitignore
echo '*/Assets/NetWorkedData_Compile/*' >> .gitignore
git add --all
git commit -m "[ADD] Ignore"
git switch Unity_2020_Test

# checkout submodule NetWorkedData engine
# use git from GitHub
cd ~/Desktop/NetWorkedData_Installation/Assets
git submodule add --force git@github.com:NetWorkedData/NetWorketData.git

# checkout submodule NetWorkedData database engine
# use git from GitHub
cd ~/Desktop/NetWorkedData_Installation/Assets
git submodule add git@github.com:NetWorkedData/NetWorkedData_Database.git

echo 'Enjoy'
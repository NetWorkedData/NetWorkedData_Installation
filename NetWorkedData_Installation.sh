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
git checkout Unity_2019
git checkout -b Unity_2019_Test Unity_2019

# add extension to ignore
echo '' >> .gitignore
echo '# Ignore NetWorkedData files' >> .gitignore
echo '*.prp' >> .gitignore
echo '*/*.prp' >> .gitignore
echo '*/Assets/NetWorkedData_Private/*' >> .gitignore
echo '*/Assets/NetWorkedData_Compile/*' >> .gitignore
git add --all
git commit -m "[ADD] Ignore"

# checkout submodule NetWorkedData engine
# use git from GitHub
cd ~/Desktop/NetWorkedData_Installation/Assets
git submodule add --force git@github.com:NetWorkedData/NetWorketData.git
cd NetWorkedData
git checkout master

# checkout submodule NetWorkedData database engine
# use git from GitHub
cd ~/Desktop/NetWorkedData_Installation/Assets
git submodule add git@github.com:NetWorkedData/NetWorkedData_Database.git
cd NetWorkedData_Database
#git checkout SQLCipher_4-4-0_Cluster
git checkout master

echo 'Enjoy'
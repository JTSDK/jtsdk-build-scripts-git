# WSJT APplication Build Scripts fo Git Repositories
This project is of for testing WSJT applications using Git repositories. The
script has no interaction with Git, nor any need to be aware of its presence.

## Requirments

### **Win32**
* You must have [JTSDK 2.0.6-0 - Release 725](https://sourceforge.net/projects/jtsdk/files/win32/2.0.0/), or Later, 
Installed and Fully Functional
* Git for Windows or comprable Git Client
* The Git client must be accessable from the Windows Command Prompt

### **Linux**
Linux is not currently supported, but will be in the near future.

## Installation
Installaiton should be done `outside` of any JTSDK Environemt. You can use
any Git Client you prefer to checkout and update the code.

The following setps will chehckout, and install `jtsdk-build-scripts-git`. For
this example, it will be using both Git-Bash and Git-CMD for Windows.

> Note - If C:\JTSDK\src does not exist, you should create it prior to
checking out the source code.
```
# Open a non-administrator Windows Console or Git-bash Terminal, then follow the steps.

# Windows Console
cd /d C:\JTSDK\src

# Git-Bash Console
cd /c/JTSDK/src

# Checkout Source Code
git clone https://github.com/KI7MT/jtsdk-build-scripts-git.git

# Change Directories and Install
cd jtsdk-build-scripts-git
make install
```

## Upgrading
To upgrade `jtsdk-build-scripts-git`, use the following:
```
# Open a non-administrator Windows Console or Git-bash Termainl, then follow the steps.

# Windows Console
cd /d C:\JTSDK\src\jtsdk-build-scripts-git

# Git-Bash Console
cd /c/JTSDK/src/jtsdk-build-scripts-git

# Update Source Code
git pull origin master

# Install Updates
make install
```

## Build Examples
For directions on building the default example, see [Build Examples](https://github.com/KI7MT/jtsdk-build-scripts-git/blob/master/docs/wsjtx-git-build.md)


# WMsetup
A tool to rapidly set up my DWM configuration

# How to use:
# Step 1: give permissions

the bash scripts need to be executed, to do so type:

> chmod +x install.sh

and

> chmod +x dependencies.sh

# Step 2: dependencies

before doing anything, we must install the dependencies we will need
since different package managers exist so this command should change depending on your package manager:

> sudo "package manager install command" $(./dependencies.sh)

Also, git is used in the installation, im assuming that since you've downloaded the repo you already have it.

# Step 3: run the installer

> sudo ./install.sh

WARNING: this will erase whatever graphical setup you already had.

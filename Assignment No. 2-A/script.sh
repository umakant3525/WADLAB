#!/bin/bash

# Step 1: Sign Up for a GitHub Account
# You need to manually sign up for a GitHub account at https://github.com/

# Step 2: Install Git
# You need to install Git manually from https://git-scm.com/downloads

# Step 3: Configure Git
git config --global user.name "Your GitHub Username"
git config --global user.email "your_email@example.com"

# Step 4: Create a New Repository on GitHub
# You need to create a repository manually on GitHub before running this script.

# Step 5: Initialize a Local Git Repository
git init

# Step 6: Add Your Files to the Repository
git add .

# Step 7: Commit Your Changes
git commit -m "Initial commit with push all code "

# Step 8: Link Your Local Repository to GitHub
# Replace <repository_URL> with the URL of the repository you created on GitHub.
git remote add origin <repository_URL>

# Step 9: Push Your Code to GitHub
git push -u origin master
# If you are using a branch other than master, replace "master" with the name of your branch.

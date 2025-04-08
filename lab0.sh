#!/bin/bash

# 1. Creating a directory
mkdir new_directory

# 2. Creating a subdirectory within a directory
mkdir 423174/UNIX

# 3. Changing the current directory to a subdirectory
cd 423174/UNIX

# 4. Displaying the calendar for the current month
cal

# 5. Listing the files in the parent directory
ls ..

# 6. Finding the number of users currently logged in
who | wc -l

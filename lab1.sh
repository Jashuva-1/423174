#!/bin/bash

# 1. Obtain the following results:

# (i) To print the name of the operating system
uname

# (ii) To print the login name
whoami

# (iii) To print the host name
hostname


# 2. Display the calendar for:

# (i) January 2024
cal 1 2024

# (ii) February 1995
cal 2 1995

# (iii) 9th month of the year 7 A.D
cal 9 7

# (iv) Current month
cal

# (v) Current Date, Day Abbreviation, Month Abbreviation, and Year
date +"%a, %b %Y"


# 3. Display the time in 12-Hour and 24-Hour Notations:

# (i) 12-Hour Notation
date +"%r"

# (ii) 24-Hour Notation
date +"%T"


# 4. Display the Current Date and Current Time
date


# 5. Display the message "GOOD MORNING" in enlarged characters
banner "GOOD MORNING"


# 6. Display the name of your home directory
echo $HOME


# 7. Create a directory SAMPLE under your home directory
mkdir $HOME/SAMPLE

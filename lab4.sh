#!/bin/bash

# GREP Commands

# 1. Find all lines containing the word "error" in a log file (log.txt):
grep "error" log.txt

# 2. Count the occurrences of the word "success" in a file (data.txt):
grep -o "success" data.txt | wc -l

# 3. Extract all lines from a file (records.txt) that start with a digit:
grep "^[0-9]" records.txt

# 4. Display all lines in file.txt that do not contain the word "failed":
grep -v "failed" file.txt

# 5. Find all .txt files in the current directory that contain the word "TODO":
grep -l "TODO" *.txt


# SED Commands

# 1. Replace all occurrences of "foo" with "bar" in text.txt:
sed -i 's/foo/bar/g' text.txt

# 2. Delete all blank lines from input.txt:
sed -i '/^$/d' input.txt

# 3. Remove leading and trailing spaces from each line in whitespace.txt:
sed -i 's/^[ \t]*//;s/[ \t]*$//' whitespace.txt

# 4. Insert a new line with the text "Header: Report" at the beginning of report.txt:
sed -i '1i Header: Report' report.txt

# 5. Replace all instances of multiple spaces with a single space in file.txt:
sed -i 's/ \{2,\}/ /g' file.txt


# AWK Commands

# 1. Print only the second column from a space-separated file (data.txt):
awk '{print $2}' data.txt

# 2. Sum the numbers in the third column of values.txt:
awk '{sum += $3} END {print sum}' values.txt

# 3. Count the number of lines in log.txt that contain the word "warning":
awk '/warning/ {count++} END {print count}' log.txt

# 4. Print all lines in marks.txt where the second column is greater than 50:
awk '$2 > 50' marks.txt

# 5. Print only the first and last columns from a tab-separated file (data.csv):
awk -F'\t' '{print $1, $NF}' data.csv

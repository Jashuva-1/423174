#!/bin/bash

# 1. Extract only ERROR messages along with their timestamps from a log file:
awk '$2 == "ERROR" {print $1, $4}' log.txt

# 2. Compute the average of each subject from a CSV file with tab-separated values:
awk -F'\t' '{math += $2; science += $3; english += $4; count++} END {print "Math Avg:", math/count, "Science Avg:", science/count, "English Avg:", english/count}' data.csv

# 3. Count occurrences of each IP address in a server log:
awk '{ip[$1]++} END {for (i in ip) print i, ip[i]}' server.log

# 4. Swap the first and last words in lines of text:
sed 's/^\([^ ]*\) \(.*\) \([^ ]*\)$/\3 \2 \1/' input.txt

# 5. Remove consecutive duplicate words:
sed -E 's/\b(\w+) \1\b/\1/g' duplicates.txt

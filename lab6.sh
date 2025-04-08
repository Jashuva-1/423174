#!/bin/bash

# TAR Command Examples

# Example 1: Creating a Tar Archive
tar -czf myarchive.tar.gz myfolder

# Example 2: Creating an Uncompressed Archive using tar Command
tar cvf archive_name.tar abc def

# Example 3: Creating a Compressed Archive using tar Command
# (i) Gzipped Tar:
tar cvzf archive_name.tar.gz abc/

# (ii) Bzipped Tar:
tar cvfj archive_name.tar.bz2 abc/

# Example 4: Extracting Files from an Archive
tar xvf archive_name.tar

# Example 5: Extracting a Compressed Tar Archive
# (i) Extracting a Gzipped Tar:
tar xvfz archive_name.tar.gz

# (ii) Extracting a Bzipped Tar:
tar xvfj archive_name.tar.bz2

# Example 6: Listing an Uncompressed Archive using the Tar Command
tar tvf archive_name.tar
s

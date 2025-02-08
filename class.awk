#!/usr/bin/gawk -f

BEGIN { FS="," }  # Set field separator to comma

NR > 1 { class[$3]++ }  # Skip header and count passengers per class

END { 
    for (c in class) 
        print "Class " c ": " class[c] " passengers"
}
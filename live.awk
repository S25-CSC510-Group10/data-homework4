#!/usr/bin/gawk -f

BEGIN { FS="," }  # Set field separator to comma

NR > 1 && $2 == 1 { class[$3]++ }
NR > 1 { classTotal[$3]++ } 

END { 
    for (c in class) 
        print "Class " c ": " class[c]/classTotal[c]
}
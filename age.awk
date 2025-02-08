#!/usr/bin/gawk -f

BEGIN {FS=","}

NR > 1 && $6 != "" { 
    sum1 = sum
    sum += $7;
    if (sum != sum1) count++ 
} 

END { 
    print sum / count
}
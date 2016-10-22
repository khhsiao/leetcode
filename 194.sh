awk '
{
    for (i=1; i<=NF; i++) {
        a[NR, i] = $i
    }
}
END {
    for (i=1; i<=NF; i++) {
        str=a[1, i]
        for (j=2; j<= NR; j++) {
            str=str" "a[j, i]
        }
        print str
    }
}' file.txt

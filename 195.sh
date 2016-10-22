a=0
while [ $a -lt 10 ]
do
    a=$((a + 1))
    read line
done < file.txt
echo $line

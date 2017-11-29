import shodan
import subprocess
ans=True
while ans:
    print ("""
    1.Search for hosts
    2.Separate working hosts
    3.start cracking
    """)
    ans=raw_input("What would you like to do? ") 
    if ans=="1": 
        api2 = raw_input('Enter Shodan api key:')
	host = raw_input('Enter number of hosts(1 = 100hosts)')
	api = shodan.Shodan(api2)
	count = 0
 	while count < host:
		try:

			results = api.search('antminer port:80',page=count)
			for result in results['matches']:
    				print '%s' % result['ip_str']
				with open("log2.txt","a") as myfile:
					myfile.write('\n'+result['ip_str'])
		except shodan.APIError, e:
			print'ERROR: %s' % e
		count = count + 1;

    elif ans=="2":
      print("\n Separating hosts") 
      subprocess.call(['./separator.sh'])
    elif ans=="3":
      print("\n Starting cracker") 
      subprocess.call(['./cracker.sh'])
    elif ans !="":
      print("\n Not Valid Choice Try again") 

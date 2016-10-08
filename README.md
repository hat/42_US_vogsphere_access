# 42 US Remote Vogsphere Access Setup
##Setup Kerberos &amp; Git access to 42 US

To setup access to your git repos on vogsphere, (only works on LInux / OSX)
1. Clone this repo
2. Run the shell script 
	
	sudo sh run.sh

(Enter system password if you need sudo previleges)
3. Get your kerberos ticket

	kinit xloginx

(xloginx represents your login id)
4. Enter your 42 password when asked to successfull authenticate.
5. lone/Push/Pull from all the Vogsphere Git repos you have access to. 
6.To close your connection :

    kdestroy


### You can now access your vogsphere outside the 42 clusters
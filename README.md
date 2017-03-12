3proxy install script for Debian / Ubuntu VPS (ver 0.8.6)
======================================================

A simple script (without any russian in it, yeepeeh) to install the lightweight russian proxy: 3proxy (http://3proxy.ru/) as an elite high anonymous HTTP proxy with SSL support with a few command lines. 
This script has been created to bypass the fact that Squid3 proxy isn't compiled with SSL support and is an absolute nightmare to compile in Debian right now.

This setup has been created to quickly install a proxy on small lowendbox VPS mostly for "google rank analysis" / scraping.

**MANUAL :**

Download, make executable and run with these lines :

    wget --no-check-certificate https://raw.github.com/h1777/3proxy/0.8.9/3proxyinstaller.sh
    chmod +x 3proxyinstaller.sh
    ./3proxyinstaller.sh

After install : CHANGE DEFAULT USERNAME AND PASSWORD !!! 

    nano /etc/3proxy/.proxyauth
	
Example change line inside .proxyauth

    johndoe:CL:johndoepassword123

You can also change the port, default is 3128

    nano /etc/3proxy/3proxy.cfg
    

Once you've change the username / password you can start the proxy 
(or reboot the VPS as 3proxy has been added to the init scripts and will autostart)

    /etc/init.d/3proxyinit start
	
For Uninstall Download, make executable and run with these lines :

	wget --no-check-certificate https://raw.github.com/h1777/3proxy/0.8.9/3proxyuninst.sh
	chmod +x 3proxyuninst.sh
	./3proxyuninst.sh

**Script tested on 20.05.2016 on the following fresh VPS install distros :**

- Ubuntu 14.04 64bit (Vmware)
- Scaleway C1 Arm Server (Debian Jessie)


**Script will run on :**
- Debian 6 
- Debian 7 
- Debian 8 
- Ubuntu 12.10 
- Ubuntu 12.04 
- Ubuntu 14.04
- Ubuntu 16.04

<<<<<<< HEAD
=======
http://barankilic.github.io/3proxy/
>>>>>>> origin/master

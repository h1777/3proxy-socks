3proxy as SOCKS5 proxy install script 
Debian / Ubuntu VPS (3proxy 0.8.12)
======================================================

**HOW TO :**

To download and install just run these commands, a) or b), depending in your situation

a) for single IP

	wget --no-check-certificate https://raw.github.com/h1777/3proxy-socks/master/3proxyinstaller.sh
    chmod +x 3proxyinstaller.sh
    ./3proxyinstaller.sh

b) for multiple IP's (this will download a different .cfg file prepared for multiple IPs)

    wget --no-check-certificate https://raw.github.com/h1777/3proxy-socks/master/3proxy_installerX.sh
    chmod +x 3proxy_installerX.sh
    ./3proxy_installerX.sh
    
After install : CHANGE DEFAULT USERNAME AND PASSWORD !!! 

    nano /etc/3proxy/.proxyauth
	
Example line inside .proxyauth for user and password are separated by :CL:

    johndoe:CL:password123

You can also change the port, default is 3128 (OPTIONAL but you should do it). 
Change port in line 42 >> socks -n -p3128 -a 

    nano /etc/3proxy/3proxy.cfg
    

Once you've changed the username / password you can start the proxy 
(or reboot the VPS as 3proxy has been added to the init scripts and will autostart)

    /etc/init.d/3proxyinit start
	
For Uninstall Download, make executable and run with these lines :

	wget --no-check-certificate https://raw.github.com/h1777/3proxy-socks/master/3proxyuninst.sh
	chmod +x 3proxyuninst.sh
	./3proxyuninst.sh

**Script last tested in August 2018 on the following fresh VPS install distros :**

- Ubuntu 16.04 64bit
- Debian 8


**Script will run on :**
- ?

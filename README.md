3proxy install script for Debian / Ubuntu VPS (ver 0.8.9)
======================================================

**HOW TO :**

Download, make executable and run with these lines :

    wget --no-check-certificate https://raw.github.com/h1777/3proxy/0.8.9/3proxyinstaller.sh
    chmod +x 3proxyinstaller.sh
    ./3proxyinstaller.sh

After install : CHANGE DEFAULT USERNAME AND PASSWORD !!! 

    nano /etc/3proxy/.proxyauth
	
Example change line inside .proxyauth

    johndoe:CL:johndoepassword123

You can also change the port, default is 3128 (OPTIONAL)

    nano /etc/3proxy/3proxy.cfg
    

Once you've change the username / password you can start the proxy 
(or reboot the VPS as 3proxy has been added to the init scripts and will autostart)

    /etc/init.d/3proxyinit start
	
For Uninstall Download, make executable and run with these lines :

	wget --no-check-certificate https://raw.github.com/h1777/3proxy/0.8.9/3proxyuninst.sh
	chmod +x 3proxyuninst.sh
	./3proxyuninst.sh

**Script tested on March 2017 on the following fresh VPS install distros :**

- Ubuntu 16.04 64bit (Vmware)


**Script will run on :**
- ?

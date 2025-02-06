3proxy as SOCKS5 proxy install script 
Debian / Ubuntu VPS (3proxy 0.8.12)
======================================================

**HOW TO :**

To download run these commands, a) or b), depending in your situation

a) for single IP

	wget --no-check-certificate https://raw.github.com/h1777/3proxy-socks/master/3proxy.sh
    chmod +x 3proxy.sh
    ./3proxy.sh

b) for multiple IP's (this will download a different .cfg file prepared for multiple IPs)

    wget --no-check-certificate https://raw.github.com/h1777/3proxy-socks/master/3proxyX.sh
    chmod +x 3proxyX.sh
    ./3proxyX.sh
    
To install: chmod and run

    chmod 755 3proxyinstaller.sh
    sudo ./3proxyinstaller.sh
	
Add user and pass (replace user and pass with yours)

    sudo /usr/local/3proxy/conf/add3proxyuser.sh user pass

Start and check the service 

    sudo systemctl start 3proxy
    sudo service 3proxy status
    

If need to change ports, edit 3proxy.cfg

    sudo nano /usr/local/3proxy/conf/3proxy.cfg

Restart service after changes

    sudo systemctl restart 3proxy
	





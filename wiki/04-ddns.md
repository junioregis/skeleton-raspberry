# 4.1. Dynu

### 4.1.1. Create Account

https://www.dynu.com

### 4.1.2. Install

```bash
sudo apt-get install -y ddclient
```

### 4.1.3. Configure

```/etc/ddclient.conf```

```
protocol=dyndns2
use=web, web=checkip.dyndns.com, web-skip='IP Address'
server=api.dynu.com
login=<YOUR_USERNAME>
password='<YOUR_PASSWORD>'
DOMAIN1.DYNU.COM
DOMAIN2.DYNU.COM
DOMAIN3.DYNU.COM
```

### 4.1.4. Create initialize script

```bash
sudo nano /etc/init.d/dynu
```

```
#! /bin/sh
# /etc/init.d/dynu

case "$1" in
  start)
    /usr/sbin/ddclient -daemon 300 -syslog
    ;;
  stop)
    killall ddclient
    ;;
  *)
    echo "Usage: /etc/init.d/dynu {start|stop}"
    exit 1
    ;;
esac
exit 0
```

Execute:

```bash
sudo chmod 755 /etc/init.d/dynu
sudo chmod +x /etc/init.d/dynu
```

### 4.1.5. Start service

```bash
sudo /etc/init.d/dynu start
```

# 4.2. NoIp

### 4.2.1. Create Account

https://www.noip.com

### 4.2.2. Install

```bash
cd /tmp
wget --output-document=noip-duc-linux.tar.gz http://www.no-ip.com/client/linux/noip-duc-linux.tar.gz
tar vzxf noip-duc-linux.tar.gz
cd /tmp/noip-{version}

sudo make
sudo make install
```

### 4.2.3. Create initialize script

```bash
sudo nano /etc/init.d/noip
```

```
#! /bin/sh
# /etc/init.d/noip

case "$1" in
  start)
    /usr/local/bin/noip2
    ;;
  stop)
    killall noip2
    ;;
  *)
    echo "Usage: /etc/init.d/noip {start|stop}"
    exit 1
    ;;
esac
exit 0
```

Execute:

```bash
sudo chmod 755 /etc/init.d/noip
sudo chmod +x /etc/init.d/noip
```

### 4.2.4. Start service

```bash
sudo /etc/init.d/noip start
```

### 4.3. Allow DMZ port in your modem

```
192.168.0.110
```
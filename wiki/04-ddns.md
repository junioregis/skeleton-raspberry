# 1. Create and configure your No-IP account

https://www.noip.com

# 2. Install

```bash
cd /tmp
wget --output-document=noip-duc-linux.tar.gz http://www.no-ip.com/client/linux/noip-duc-linux.tar.gz
tar vzxf noip-duc-linux.tar.gz
cd /tmp/noip-{version}

sudo make
sudo make install
```

# 3. Create initialize script

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
sudo /etc/init.d/noip start
```

# 4. Allow DMZ port in your modem

```
192.168.0.110
```
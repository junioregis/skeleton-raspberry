# 2.1. Configure interfaces

### 2.1.1. Backup

```bash
sudo cp /etc/network/interfaces /etc/network/interfaces.bkp
sudo nano /etc/network/interfaces
```

### 2.1.2. Choose ONE config interface

For ```Ethernet``` use:

```
auto lo
iface lo inet loopback

auto eth0
allow-hotplug eth0
iface eth0 inet static
address 192.168.0.110
netmask 255.255.255.0
gateway 192.168.0.1
dns-nameservers 8.8.8.8 8.8.4.4
```

For ```WiFi``` use:

```
auto lo
iface lo inet loopback

auto wlan0
allow-hotplug wlan0
iface wlan0 inet static
address 192.168.0.110
netmask 255.255.255.0
gateway 192.168.0.1
dns-nameservers 8.8.8.8 8.8.4.4
wpa-essid ssid
wpa-psk password
```

# 2.2. Enable SSH

```bash
sudo systemctl enable ssh
sudo systemctl start ssh
```

# 2.3. Connect from remote

```bash
ssh pi@192.168.0.110
```
# 1.1. Download ISO

Raspbian Stretch Lite

https://www.raspberrypi.org/downloads/raspbian/

# 1.2. Write disk

### 1.2.1. Plug your SDCard/SSD

### 1.2.2. Get letter of your device

```bash
lsblk
```

### 1.2.3. Unmount

```bash
umount /dev/sdXN
```

### 1.2.4. Run

```bash
unzip -p yyyy-mm-dd-raspbian-stretch-lite.zip | sudo dd of=/dev/sdX bs=4M status=progress conv=fsync
```

Unplug the SDCard/SSD from your machine after complete.

# 1.3. Boot Raspberry PI

### 1.3.1. Plug SDCard/SSD

### 1.3.2. Plug HDMI and Keyboard

### 1.3.3. Plug power cable

Credentials

```
user: pi
pass: raspberry
```

# 1.4. Optional: Enable boot from USB

### 1.4.1. Execute

```bash
echo program_usb_boot_mode=1 | sudo tee -a /boot/config.txt
sudo reboot
```

### 1.4.2. Check

```bash
vcgencmd otp_dump | grep 17
```

The result must be ```17:3020000a```

### 1.4.3. Shutdown system:

```bash
sudo shutdown -h now
```

Execute steps again but with your SSD in this time.
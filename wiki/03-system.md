# 3.1. Enable SUDO

```bash
sudo sh -c "echo 'pi ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers"
```

# 3.2. Configure system

```bash
ssh pi@192.168.0.110 'bash -s' < scripts/install.sh
```
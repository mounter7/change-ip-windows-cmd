@echo off
netsh interface ipv4 show config
pause
netsh interface ipv4 set address name="Wi-Fi" source=dhcp
netsh interface ipv4 set address name="Wi-Fi" static %1 255.255.255.0 %2
netsh interface ipv4 set dns name="Wi-Fi" static 8.8.8.8
ipconfig

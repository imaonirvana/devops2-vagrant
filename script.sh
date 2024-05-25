#!/bin/bash

# show OS and build version
apt -y install neofetch
neofetch
uname -a

# show the users with installed 
cat /etc/passwd | grep bin/bash

# show open ports
ss -tulpn

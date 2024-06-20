#!/bin/sh

echo "Installing packages"
pkg install -y `cat pkg.txt`

echo "Creating /etc/periodic/daily/998.rkhunter to update rkhunter and run it daily"
echo '# Update rkhunter daily' > /etc/periodic/daily/998.rkhunter
echo 'security_rkhunter_update_enable="YES"' >> /etc/periodic/daily/998.rkhunter
echo 'security_rkhunter_update_period="daily"' >> /etc/periodic/daily/998.rkhunter
echo 'security_rkhunter_update_flags="--update --nocolors"' >> /etc/periodic/daily/998.rkhunter
echo ' ' >> /etc/periodic/daily/998.rkhunter
echo '# Run rkhunter daily' >> /etc/periodic/daily/998.rkhunter
echo 'security_rkhunter_check_enable="YES"' >> /etc/periodic/daily/998.rkhunter
echo 'security_rkhunter_check_period="daily"' >> /etc/periodic/daily/998.rkhunter
echo 'security_rkhunter_check_flags="--checkall --nocolors --skip-keypress' >> /etc/periodic/daily/998.rkhunter

echo "Updating arpwatch's ethercodes.dat"
/usr/local/arpwatch/update-ethercodes

echo "Updating pip"
python3.9 -m pip install -U pip

echo "Installing virtualenv"
python3.9 -m pip install virtualenv

echo "Installing a few Python utilities"
python3.9 -m pip install requests sherlock scapy

echo "Grabbing a wordlist"
mkdir -p /usr/share/wordlists
fetch -o /usr/share/wordlists/rockyou.txt.gz "https://gitlab.com/kalilinux/packages/wordlists/-/raw/kali/master/rockyou.txt.gz?ref_type=heads"
gunzip /usr/share/wordlists/rockyou.txt.gz

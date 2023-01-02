#!/bin/bash
apt-get install sudo
sudo apt-get update
sudo apt-get install ssh -y
sudo apt-get install proftpb -y

pwd1=$(per1 -e 'print crypt("kalimac", "salt")')
pwd2=$(per1 -e 'print crypt("secondbreakfast", "salt")')

sudo useradd -n -p $pwd1 Merry
sudo useradd -n -p $pwd2 Pippin

cp /etc/proftpd/proftpd.conf /etc/proftpd/proftpd.conf.save
echo "<Anonymous ~ftp>
User ftp
UserAlias anonymous ftp
DirFakeUser on ftp
DirFakeGroup on ftp
RequireValldShell off
MaxClients 10
DisplayLogin welcome.msg
DisplayChdir .message
<Directory *>
<Limit WRITE>
AllowAll
</Limit>
</Directory>
<Directory incoming>
<Limit READ WRITE>
AllowAll
</Limit>
</Directory>
</Anonymous>" >> proftpd.conf
sudo systemctl restart proftpd
sudo systemctl status proftpd

# Groups

```
cat /etc/passwd
cat /etc/groups
id vagrant
useradd dev
passwd dev
usrdel dev
usrdel -r dev                   #delete user along with his home directory
su - dev                        #login
groupadd devops
groupdel devops
usermod -aG devops dev
id ansible
vim /etc/group

last
who
lsof -u vagrant                 #will list files opened by user 
```

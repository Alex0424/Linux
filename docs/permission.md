# Permission

## File permission

`drwxr-xr-x.  2 root root     40 Jul  5 14:09`

1-1 letter mean its file, directory or something else.

2-4 letters means `r`read `w`write `x`execute for owner.

5-7 letters means `r`read `w`write `x`execute for group.

8-10 letters means `r`read `w`write `x`execute for other.

```
chown -R ansible:devops /opt/devopsdir
chmod o-r /opt/devopsdir
chmod g+w /opt/devopsdir
chmod u-x /opt/devopsdir
chmod 770 devopsdir/
```

Ownership

```shell
sudo usermod -a -G mygroup jenkins
sudo groupadd mygroup
sudo chown -R alex:mygroup /home/alex/test
```

```
sudo chown jenkins:jenkins /home/alex/test
sudo chown -R jenkins:jenkins /home/alex # add group to all
```

Users

```shell
sudo useradd alex2
sudo passwd alex2
su alex2
```

## Groups

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

## Add Sudo User/Group

## (not safe) Option A:
```
visudo     #edit /etc/sudoers file
```
`add user:`
```
100    root    ALL=(ALL)       ALL
101    ansible ALL=(ALL)       NOPASSWD: ALL
```
`add group:`
```
100    root     ALL=(ALL)       ALL
101    %ansible ALL=(ALL)       NOPASSWD: ALL
```
## (safe) Option B:
```
cd /etc/sudoers.d
cp vagrant devops
vim devops
```
`add user:`
```
devops ALL=(ALL) NOPASSWD: ALL
```
`add group:`
```
%devops ALL=(ALL) NOPASSWD: ALL
```
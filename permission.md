# File permission

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

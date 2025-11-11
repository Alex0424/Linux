
# Services (CentOS)

lets analize httpd (do this before: `yum install httpd`)

```
systemctl status httpd
systemctl start httpd
systemctl stop httpd
systemctl restart httpd
systemctl reload httpd
systemctl enable httpd
systectl disable httpd
systemctl is-active httpd
systemctl is-enabled httpd
```

where the config file is created for httpd when installed:

```
cat /etc/systemd/system/multi-user.target.wants/httpd.service
```

# Processes

```
top
ps aux
ps -ef
ps -ef | grep httpd | grep -v "grep"
kill 1420                              #kill process and close child processes if the process is a parent.
kill -9 1420                           #kill the process without closing child processes
ps -ef | grep httpd | grep -v "grep" | awk "{print $2}"
ps -ef | grep httpd | grep -v "grep" | awk "{print $2}" | xargs kill -9
```

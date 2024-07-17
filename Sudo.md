# Add Sudo User/Group

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
##

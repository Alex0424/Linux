# filter

```
grep -i firewall example.txt         #looking for "firewall" pattern in example.txt wheter the letters are capital or not.
grep -i firewall < example.txt       #
grep -i firewall *                   #lookin for firewall word in all files.
grep -iR firewall *                  #
grep -R SELINUX /etc/*               #search for "SELINUX" in all file and directories in etc
grep -vi firewall example.txt        #everything that do not contain firewall pattern
less example.txt                     #
more example.txt                     #
head -10 example.txt                 #first 10 lines
tail -10 example.txt                 #last 10 lines
tail -f var/log/messages             #monitor system log messages in real time
cut -d: -f1 /etc/passwd              #cut separator
awk -F':' '{print $1}' /etc/passwd   #awk separator
sed -i 's/word/new_word/g' *.txt     #replace all words containing coronavirus to covid19 to all txt files
```

# Log files
  
log files are located at /var/log

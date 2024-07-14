# Linux default "command-line shell" commands
```
command list:
$ whoami                       #display your username
$ uptime                       #time status
$ pwd                          #print working directory
$ ls                           #list files
$ cd /example/dir              #change to /example/dir directory
$ cd ..                        #change to one step back directory
$ cd                           #change to home directory
$ mkdir dir                    #create directory
$ mkdir -p /dir1/dir2/dir3     #create multiple directories
$ ln -s /dir/fileA.txt fileB   #create a link
$ unlink fileC                 #remove a link
$ cat                          #displaying file conten & concatenation
$ sudo -i                      #switch to root user
$ touch testfile1.txt          #create file
$ cp file.txt dir/             #move txt file to another directory
$ cp /dir1/file.txt /dir1/dir2 # cp txt file to another directory using absolute path
$ cp -r dirX dirY/             # copy a directory to another directory
$ mv file.txt dir/             #move file to directory
$ mv dir1 dir2/                #move directory to another directory
$ mv fileA.txt fileB.txt       #rename file
$ mv *.txt dir/                #move all txt files to a directory
$ rm file.txt                  #remove a file
$ rm -r dir                    #remove a directory
$ rm -rf dir                   #remove a directory with force
$ rm -rf *                     #remove everything with force
$ file file_example            #check file info bin or txt...
$ vim /etc/host                #idk
$ vim /etc/hostname            #change host name in vim
$ hostname name_example        #change hostname in command
```

# Get help with any command:

`command --help` e.g. `ls --help`

# Advanced commands:
```
$ ls -lhatr                   #(long format), -h (human-readable sizes), -a (all files include hidden files), -t (sort by modification time, recently modified files first)
$ cat /etc/os-release         #OS name & Version from CLI
$ touch testfile{1..10}.txt   #create 10 files
```

# Git Clone With HTTPS

```
#git config --global user.name <YOUR USERNAME> # ignore this
#git config --global user.email <YOUR EMAIL>   # ignore this
```

```
git clone https://github.com/<USERNAME>/<REPO NAME>.git
```

after a git pull or push Git will prompt you for your username and password:
```
Username for 'https://github.com': <your-username>
Password for 'https://github.com': <Paste your Personal Access Token here>
```

Cache your credentials temporarily (for 1 hour)
```
git config --global credential.helper 'cache --timeout=3600'
```

or store credentials permanently in plain text
```
git config --global credential.helper store
```

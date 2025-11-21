# Git Clone With SSH

generate a new ssh key:
```
ssh-keygen -t ed25519 -C "your_email@example.com"
cat cat ~/.ssh/id_ed25519.pub
```
on github.com --> settings/ssh --> New SSH Key --> paste your public ssh key here

make sure ssh-agent is running and add ssh key to ssh-agent:
```
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/<private_key>
```

make ssh-agent to remember it permanent, then do this:

`vim ~/.bashrc`
```
if [ -z "$SSH_AUTH_SOCK" ]; then
  eval "$(ssh-agent -s)"
  ssh-add ~/.ssh/<private_key>
fi
```

```
git clone git@github.com:USERNAME/REPO_NAME.git
```

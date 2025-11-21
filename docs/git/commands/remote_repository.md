# Remote Repository

## Add a Remote Branch

```shell
git remote add <remote_name> <repository path/URL>
git push -u <remote_name> <local_branch>:<remote_branch>
git branch --set-upstream-to=<remote-branch-name>
```

`-u` = `--set-upstream`
- meaning your local branch will now "track" the specified remote branch.
  - git push (without arguments) will know which remote and branch to push to.
  - git pull will automatically pull from the corresponding remote branch.

## Viewing Remote

```shell
git remote -v
```

`-v` = `--verbose` This will show the URLs for both fetching and pushing

## Renaming Remote

```shell
git remote rename <old_remote_name> <new_remote_name>
```
## Removing Remote

1. Delete branch on the remote repository (remote changes)
```shell
git push <remote_name> --delete <branch_name>
```

2. Disconnect upstream (local changes)
```shell
git remote remove <remote_name>
```

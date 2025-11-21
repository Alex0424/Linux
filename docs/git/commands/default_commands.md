# Default Commands

taking a copy of remote repository and initializing a local:

```shell
git clone <optional arguments> <remote URL/path> ./<path_name>
```

Retrieving changes from remote branch to local:

```shell
git fetch
```

Integrate fetched changes from remote into current local branch:

```shell
git merge
```

Same as fetch and merge:

```shell
git pull
```

Add files to staging:

```shell
git add . -p
```

Create a snapshot from staging files:

```shell
git commit -m "Updated file1.txt"
```

Send changes from local branch to remote:

```shell
git push
```

# GIT COMMANDS

```shell
git checkout <file>                     # undo changes in a file to recent git push change
git restore --staged <file name>        # restore a staged file
git revert HEAD                         # revert a commit | this would be saved as history in a commit
git reset --hard <commit_id>            # go back in time to a commit_id and remove future history/commits | won't create a commit in timeline
```

## Initialize a GIT repository

```shell
cd /path/to/your/project
git init
git add .
git commit -m "Initial commit"
```

Create repository on github without a readme

follow on screen commands

### Check changes inside a commit

```shell
git cat-file -p <commit-id>
git cat-file -p <tree-id>
git cat-file -p <blob-id>
```
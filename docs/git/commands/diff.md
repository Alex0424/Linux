# Diff

## Everything `*` `.`

Local (working directory vs. last commit):

```shell
git diff HEAD
```

Between 2 `commits`/`branches`/`tags`:

```shell
git diff <commit1|branch1|tag1|HEAD~1> <commit2|branch2|tag2|HEAD>
```

## File

Local (working directory vs. last commit):

```shell
git diff HEAD -- hello.txt
```

Between 2 `commits`/`branches`/`tags`:

```shell
git diff <commit1|branch1|tag1|HEAD~1> <commit2|branch2|tag2|HEAD> -- hello.txt
```

## Options

staged changes: `--cached` ``git diff --cached`

file names: `--name-only` `git diff --name-only HEAD`

add/rm lines: `--stat` `git diff --stat HEAD`

word-level: `--word-diff` `git diff --word-diff HEAD`

## Advanced

```shell
git diff <commit_id>..<commit_id> # changes between two commits
```

```shell
git diff <commit_id>...<commit_id> # changes from the common ancestor to the second commit
```

## Who edit what file/line

```shell
git blame
```
# History

## Visualize Branches (branches and merges)

```shell
git log --oneline --graph --all --decorate
```

## Pretty log

```shell
git log --pretty=format:"%h %an %ar %s"
```

## Author

```shell
git log --author="Alexander"
```

## Keyword

```shell
git log --grep="bugfix"
```

## File

```shell
git log -- hello.txt
```

## Show commits between two refs:

```shell
git log branch1..branch2
```

## Last 5 commits

```shell
git log -5
```

## Time

```shell
git log --since="1 week ago"
```

## Two Dates

```shell
git log --since="2024-01-01" --until="2024-01-31"
```

# GIT

This is a collection of useful GIT commands and configurations for command line interface (CLI) users.

## Links to useful GIT practices

- [GIT Game](https://learngitbranching.js.org/)
- [Video Lecture](https://youtu.be/2sjqTHE0zok)

## What is GIT (Version Control System Tool)

- Git tracks changes to a project over time, storing them as a series of snapshots (commits).
- Capture the entire state (files) of a project
  - Authors and timestamp
  - A history of commits(each commit is a change) for rollback capability if bugs happens.
- Collaboration Tool

## GIT History Model - Metadata

type blob = array<byte>

type tree = map<string, tree | blob>

type commits = struct
    parents: array<commit>
    author: string
    timestamp: datetime
    message: string
    snapshot: tree

type object = blob | tree | commit

objects = map<string, object>

Git identifies commits by `SHA1` (40char string)

HEAD: is on what commit you're looking at

Check changes compared to latest commit

```
git diff <commit-hash>`hello.txt`
```
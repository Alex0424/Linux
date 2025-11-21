# Git Cherry Pick vs Git Checkout

## Checkout

**Useful Scenario**: Move your working directory and HEAD to another commit, branch, or file state.

File rollback
- restore a file to a few commits ago

Detached HEAD
- puts you to a past commit

## Cherry Pick

**Useful Scenario**: Take a commit from one branch and apply it on top of the current branch.

Useful Scenario
- Release and main branch
  - Cut the release branch and add few commits ahead of release branch

## Difference

| Aspect                         | git checkout                          | git cherry-pick                          |
|--------------------------------|---------------------------------------|------------------------------------------|
| Effect on history              | None (just moves HEAD)                | Rewrites history by adding a new commit  |
| Danger                         | Detached HEAD if checking out a commit| Can cause duplicate commits if overused  |


## About cherry-pick VS checkout - git conflict scenario

Cherry Conflict
- If the commit you’re cherry-picking modifies the same lines as commits already present in the branch you’re applying it to.

Checkout Conflict
- If you switch branches and the branch you’re checking out has changes that conflict with uncommitted changes in your working directory.

![alt text](../img/git_diagram.png)
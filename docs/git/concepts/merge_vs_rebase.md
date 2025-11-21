# GIT MERGE vs REBASE

## MERGE

**Pros**: full commit history and branch evolution

**Cons**: Can lead to lots of merge commits -> messy history.

INFO: This will create a new "merge commit" in the process

**Keep feature branch up to date**
- combine the latest changes from main into feature branch


**Feature branch back into the main branch**
- Integrates all feature branch commits into main, with a merge commit created to tie histories together.

## REBASE

**Pros**: 
- clean, straightforward commit history
- Interactive rebase can squash commits if desired (not by default).

**Cons**: 
- Rewrites history
  - it creates new commit hashes for all rebased commits.

**Keep feature branch up to date**

- changes the base of feature branch to the latest commit on main

**Feature branch back into the main branch**

- Move the feature branch changes onto the tip of main
  - Then perform a fast-forward merge

## Difference

| Scenario                                | Merge | Rebase                                       |
|-----------------------------------------|-------|----------------------------------------------|
| New commit hashes created               | No    | Yes                                          |
| History shape                           | Branching with merge commits | Linear, rewritten     |
| Adds an explicit merge commit connection| Yes   | No                                           |
| Preserves original commits              | Yes   | No (rewrites as new ones)                    |
| Commit history readability              | Can be cluttered | Cleaner, linear                   |
| Collaboration safety (shared branches)  | Safe (no history rewrite) | Risky (needs force-push) |

![alt text](../img/git_diagram.png)
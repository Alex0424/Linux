# Patchset

A patchset is a review mechanism used in version control systems, particularly in code review tools like Gerrit. It represents a collection of changes or modifications made to the codebase that are grouped together for review and approval before being merged into the main codebase.

Examples of patchsets:

```mermaid
flowchart TD
    A[Initial Commit] --> B[Patchset 1: Original Changes]
    B --> C{Code Review}
    C -->|Changes Requested| D[Patchset 2: Address Review Comments]
    D --> E{Code Review}
    E -->|Minor Issues| F[Patchset 3: Final Fixes]
    F --> G{Code Review}
    G -->|Approved| H[Merged to Main Branch]
    
    subgraph PS1[" "]
        B
        I1[Added new feature]
        I2[Updated tests]
        I3[Modified documentation]
    end
    
    subgraph PS2[" "]
        D
        J1[Fixed logic bug]
        J2[Improved error handling]
        J3[Refactored code]
    end
    
    subgraph PS3[" "]
        F
        K1[Fixed typos]
        K2[Updated variable names]
        K3[Added missing comments]
    end
    
    style B fill:#4a90e2,color:#fff
    style D fill:#f39c12,color:#fff
    style F fill:#9b59b6,color:#fff
    style H fill:#27ae60,color:#fff
    style C fill:#e74c3c,color:#fff
    style E fill:#e74c3c,color:#fff
    style G fill:#27ae60,color:#fff
```

## Patchset Workflow

1. **Patchset 1**: Developer submits initial changes
   - Contains the original implementation
   - Sent for code review

2. **Patchset 2**: Developer addresses review feedback
   - Fixes issues identified in review
   - Improves code quality
   - Same change ID, new patchset version

3. **Patchset 3**: Developer makes final adjustments
   - Addresses remaining minor issues
   - Polishes the changes
   - Ready for merge

Each patchset is a revision of the same change, maintaining the same Change-ID but incrementing the patchset number.

## Commands to push Patchsets

For Patchset 1

```bash
git add <files>
git commit -m "patchset 1 description"
git push
```

For Patchset 2 and beyond

```bash
git commit --amend -m "patchset 2 description"
# Or keep commit message from Patchset 1: git commit --amend --no-edit
git push
```
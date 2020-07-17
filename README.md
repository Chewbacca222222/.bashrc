# .bashrc

A collection of .bashrc shortcuts, functions and aliases

## Installation

Place it in the root of the user folder for example:

```
C:\Users\joe.blogs\.bashrc
```

And then either restart your machine or run:

```bash
. ~/.bashrc
```

## Docs
### General shortcuts
| Command | Explanation |
| ------ | ------ |
| `explr` | Opens the current directory in windows explorer |
| `tree` | Lists all files in the current directory in a tree view |
| `bashr` | Restarts the .bashrc file |

### Gulp shortcuts
| Command | Explanation |
| ------ | ------ |
| `glpw` | Runs `gulp watch` |
| `glpb` | Runs `gulp build` |
| `glpr` | Runs `gulp release` |

### Git
#### Shortcuts
| Command | Explanation |
| ------ | ------ |
| `g` | Runs `git` |
| `ga` | Runs `git add` |
| `gaa` | Runs `git add .` |
| `gaaa` | Runs `git add --all` |
| `gau` | Runs `git add --update` |
| `gb` | Runs `git branch` |
| `gbd` | Runs `git branch --delete` |
| `gbc` | Clears all merged branches |
| `gc` | Runs `git commit` |
| `gcm` | Runs `git commit --message` |
| `gcf` | Runs `git commit --fixup` |
| `gco` | Runs `git checkout` |
| `gcob` | Runs `git checkout -b` |
| `gcom` | Runs `git checkout master` |
| `gcod` | Runs `git checkout develop` |
| `gd` | Runs `git diff` |
| `gdh` | Runs `git diff HEAD` |
| `gi` | Runs `git init` |
| `glg` | Runs `git log --graph --oneline --decorate --al` |
| `gld` | Runs `git log --pretty=format:"%h %ad %s" --date=short --all` |
| `gm` | Runs `git merge --no-ff` |
| `gma` | Runs `git merge --abort` |
| `gmc` | Runs `git merge --continue` |
| `gull` | Runs `git pull` |
| `gullr` | Runs `git pull --rebase` |
| `gfull` | Runs `git fetch && git pull` |
| `gush` | Runs `git push` |
| `gr` | Runs `git rebase` |
| `gs` | Runs `git status` |
| `gss` | Runs `git status --short` |
| `gst` | Runs `git stash` |
| `gsta` | Runs `git stash apply ` |
| `gstd` | Runs `git stash drop ` |
| `gstl` | Runs `git stash list ` |
| `gstp` | Runs `git stash pop ` |
| `gsts` | Runs `git stash save ` |

#### Functions

| Command | Explanation |
| ------ | ------ |
| `glf` | Runs a git log |
| `gas` | Runs `git add .` then a `git status` |
| `gazy` | To use with a commit message, for example `gazy wip: add readme.md file`, this will add all files, commit them with the message and push |
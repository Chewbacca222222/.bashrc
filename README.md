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
### General
#### Shortcuts
| Shortcut | Explanation |
| ------ | ------ |
| `explr` | Opens the current directory in windows explorer |
| `tree` | Lists all files in the current directory in a tree view |
| `bashrc` | Restarts the .bashrc file |
| `clearnm` | Deletes the node_modules folder |

#### Functions
| Shortcut | Explanation |
| `rsa` | Add a new rsa key, for example a work account |

### Gulp shortcuts
| Shortcut | Command it runs |
| ------ | ------ |
| `glp` | `gulp` |
| `glpw` | `gulp watch` |
| `glpb` | `gulp build` |
| `glpr` | `gulp release` |
| `glpp` | `gulp production` |

### Git
#### Shortcuts
| Shortcut | Command it runs |
| ------ | ------ |
| `g` | `git` |
| `ga` | `git add` |
| `gaa` | `git add .` |
| `gaaa` | `git add --all` |
| `gau` | `git add --update` |
| `gb` | `git branch` |
| `gbd` | `git branch --delete` |
| `gc` | `git commit` |
| `gcm` | `git commit --message` |
| `gcf` | `git commit --fixup` |
| `gco` | `git checkout` |
| `gcob` | `git checkout -b` |
| `gcom` | `git checkout master` |
| `gcos` | `git checkout staging` |
| `gcod` | `git checkout develop` |
| `gd` | `git diff` |
| `gdh` | `git diff HEAD` |
| `gi` | `git init` |
| `glg` | `git log --graph --oneline --decorate --al` |
| `gld` | `git log --pretty=format:"%h %ad %s" --date=short --all` |
| `gm` | `git merge --no-ff` |
| `gma` | `git merge --abort` |
| `gmc` | `git merge --continue` |
| `gull` | `git pull` |
| `gullr` | `git pull --rebase` |
| `gfull` | `git fetch && git pull` |
| `gush` | `git push` |
| `gr` | `git rebase` |
| `gs` | `git status` |
| `gss` | `git status --short` |
| `gst` | `git stash` |
| `gsta` | `git stash apply` |
| `gstd` | `git stash drop` |
| `gstl` | `git stash list` |
| `gstp` | `git stash pop` |
| `gsts` | `git stash save` |
| `gr` | `git restore` |
| `grs` | `git restore --staged` |
| `gra` | `git restore .` |
| `grsa` | `git restore --staged .` |

#### Functions
| Shortcut | Explanation |
| ------ | ------ |
| `gbc` | Clears all merged branches |
| `glf` | Runs a git log |
| `gas` | Runs `git add .` then a `git status` |
| `gazy` | To use with a commit message, for example `gazy wip: add readme.md file`, this will add all files, commit them with the message and push |
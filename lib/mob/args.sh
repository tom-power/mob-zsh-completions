_startArgs() {
  _arguments \
    '-i[Move uncommitted changes to wip branch]' \
    '-b[Set wip branch to "mob/<base-branch>-<branch-postfix>"]:' \
    '--create[Create the remote branch]'
}

_nextArgs() {
  _arguments \
    '-s[Stay on wip branch (default)]' \
    '-r[Return to base branch]' \
    '-m[Override]commit message]'
}

_doneArgs() {
  _arguments \
    '--no-squash[Squash no commits from wip branch, only merge wip branch]' \
    '--squash[Squash all commits from wip branch]' \
    '--squash-wip[Squash wip commits from wip branch, maintaining manual commits]'
}

_resetArgs() {
  _arguments \
    '-b[Set wip branch to "mob/<base-branch>/<branch-postfix>"]:'
}

_startArgs() {
  _arguments \
    '--include-uncommitted-changes[Move uncommitted changes to wip branch]' \
    '--branch[Set wip branch to "mob/<base-branch>-<branch-postfix>"]' \
    '--create[Create the remote branch]'
}

_nextArgs() {
  _arguments \
    '--stay[Stay on wip branch (default)]' \
    '--return-to-base-branch[Return to base branch]' \
    '--message[Override commit message]'
}

_doneArgs() {
  _arguments \
    '--no-squash[Squash no commits from wip branch, only merge wip branch]' \
    '--squash[Squash all commits from wip branch]' \
    '--squash-wip[Squash wip commits from wip branch, maintaining manual commits]'
}

_resetArgs() {
  _arguments \
    '--branch[Set wip branch to "mob/<base-branch>/<branch-postfix>"]'
}

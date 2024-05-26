_commands() {
  _values -s ' ' 'cmd' \
    'start[start session from base branch in wip branch and a <mintues> timer]' \
    'next[handover changes in wip branch to next person]' \
    'done[squashes all changes in wip branch to index in base branch]' \
    'reset[removes local and remote wip branch]' \
    'clean[removes all orphan wip branches]' \
    'status[show the status of the current session]' \
    'fetch[fetch remote state]' \
    'branch[show remote wip branches]' \
    'config[show all configuration options]' \
    'version[show the version]' \
    'help[show help]' \
    'timer[start a <minutes> timer]' \
    'break[start a <minutes> break timer]' \
    'moo[!moo]'
}


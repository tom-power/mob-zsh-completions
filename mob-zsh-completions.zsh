#compdef mob
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

_branchArgValuesJira() {
  local -a tickets ticketsKeysDescriptions ticketsKeys
  local tickets=("${(f)"$(_jiraTicketsCurrent)"}")
  for ticket in "${tickets[@]}"; do
     ticketsKeysDescriptions+=$(echo "${ticket/$(echo -e '\t')/ -- }")
     ticketsKeys+=$(echo "$ticket" | cut -d$'\t' -f 1)
  done
  compadd -d ticketsKeysDescriptions -a ticketsKeys
}

_branchArgValues() {
  if [[ "$(command -v jira)" ]]; then
    _branchArgValuesJira
  fi
}


_arguments \
  '1:cmd:_commands' \
  '*::args:->args'

if [[ $state == 'cmd' ]]; then
  _cmdItems
fi

if [[ $state == 'args' ]]; then
  case $words[$CURRENT-1] in
    '-b' )
      _branchArgValues ;;
    *)
    case $words[1] in
      'start' )
        _startArgs ;;
      'next' )
        _nextArgs ;;
      'done' )
        _doneArgs ;;
      'reset' )
        _resetArgs ;;
      *)
    esac
  esac
fi

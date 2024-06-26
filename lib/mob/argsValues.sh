#!/bin/sh
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

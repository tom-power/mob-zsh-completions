_jiraTicketsCurrent() {
  jira issue list \
    --label "Checkout_Team" -q"type in ('Sub-task', Story) and status in ('In Progress')"  \
    --plain --no-headers --columns key,summary
}

local -a tickets ticketsKeysDescriptions ticketsKeys
_branchArgValuesJira() {
  local tickets=(${(f)"$(_jiraTicketsCurrent)"})
  for ticket in "${tickets[@]}"; do
     ticketsKeysDescriptions+=$(echo "${ticket/$(echo -e '\t')/ -- }")
     ticketsKeys+=$(echo "$ticket" | cut -d$'\t' -f 1)
  done
  compadd -d ticketsKeysDescriptions -a ticketsKeys
}

_branchArgValues() {
  if [ "$(command -v jira)" ]; then
    _branchArgValuesJira
  fi
}

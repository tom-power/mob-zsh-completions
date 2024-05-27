## zsh completions for mob

zsh completions for interacting with [mob](https://github.com/remotemobprogramming/mob)

### Installation

add `sh/.env` with the path to your custom completions directory, then run `sh/install.sh`

### Usage

[mob](https://github.com/remotemobprogramming/mob) should be configured and on your path, then run `mob` and `tab` for commands/options.

### Jira

If [jira-cli](https://github.com/ankitpokhrel/jira-cli) is installed the script will populate `--branch` argument values with the output of `_jiraTicketsCurrent`.

See below and `lib/mob/_jiraTicketsCurrent.example` for examples:

```
_jiraTicketsCurrent() {
  jira issue list \
    --label "My_Team" -q"type in ('Sub-task', Story) and status in ('In Progress')"  \
    --plain --no-headers --columns key,summary
}
```

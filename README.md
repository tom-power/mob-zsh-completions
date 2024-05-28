## mob Zsh completions

Completions for the [remotemobprogramming/mob](https://github.com/remotemobprogramming/mob) tool in [Zsh](https://www.zsh.org/).

### Installation

Add `sh/.env` with the path to your custom completions directory, then run `sh/install.sh`

### Usage

After [remotemobprogramming/mob](https://github.com/remotemobprogramming/mob) installation, run `mob` and `tab` for commands/options.

### Jira tickets for --branch

If [jira-cli](https://github.com/ankitpokhrel/jira-cli) is installed, the script will populate `--branch` argument values with the output of `_jiraTicketsCurrent`.

See below and `lib/mob/_jiraTicketsCurrent.example` for examples:

```
_jiraTicketsCurrent() {
  jira issue list \
    --label "My_Team" -q"type in ('Sub-task', Story) and status in ('In Progress')"  \
    --plain --no-headers --columns key,summary
}
```

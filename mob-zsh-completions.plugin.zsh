r0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"
0="${${(M)0:#/*}:-$PWD/$0}"
MOB_ZSH_COMPLETIONS_HOME="${0:A:h}"

source "$MOB_ZSH_COMPLETIONS_HOME"/mob-zsh-completions.zsh

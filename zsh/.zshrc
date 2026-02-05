# lines configured by zsh-newuser-install
histfile=~/.histfile
histsize=1000
savehist=1000
# end of lines configured by zsh-newuser-install
# the following lines were added by compinstall
zstyle :compinstall filename '/home/lejdo/.zshrc'

# autoload -uz compinit
# compinit
# end of lines added by compinstall

# Show current directory in prompt
PROMPT='%F{cyan}%~%f ❯ '
RPROMPT='%F{yellow}%D{%H:%M}%f'

# Prompt - show pwd and git branch
autoload -Uz vcs_info
precmd() { vcs_info }
# Configure vcs_info (git branch)
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' formats '(%b)'

# NVM (Node Version Manager)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

setopt correct

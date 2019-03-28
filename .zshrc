# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
setopt autocd
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/vagrant/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

bindkey -M emacs '^[[H' beginning-of-line # Ctrl+Home
bindkey -M emacs '^[[F' end-of-line # Ctrl+End
bindkey -M emacs '^[[1~' beginning-of-line # Ctrl+Home for VS Code Terminal
bindkey -M emacs '^[[4~' end-of-line # Ctrl+End for VS Code Terminal
bindkey -M emacs '^[[1;5C' forward-word # Ctrl+Right to next word
bindkey -M emacs '^[[1;5D' backward-word # Ctrl+Left to previous word
bindkey -M emacs '^U' backward-kill-line # Ctrl+U
bindkey -M emacs '^[[3;5~' kill-word # Ctrl+Del
bindkey -M emacs '^_' backward-kill-word # Ctrl+Backspace
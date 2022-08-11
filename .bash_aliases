alias ls='ls -al --color=auto'
alias ps='ps -ux'
alias df='df -h'
export HISTSIZE=100000
export LANG='ja_JP.UTF-8'
export LC_ALL='ja_JP.UTF-8'
export LC_MESSAGES='ja_JP.UTF-8'

# wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
# wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
if [ -f ~/git-completion.bash -a -f ~/git-prompt.sh ]; then
  source ~/git-completion.bash
  GIT_PS1_SHOWDIRTYSTATE=1
  source ~/git-prompt.sh
  PS1="[\[\e[1;31m\]\u\[\e[m\]\[\e[1;34m\]@\[\e[m\]\[\e[1;33m\]\H\[\e[m\] \[\e[1;34m\]\W\[\e[m\]\[\e[1;35m\]$(__git_ps1 " (%s)")\[\e[m\] \[\e[1;36m\]\D{%F %T}\[\e[m\]]\[\e[1;34m\]\$\[\e[m\] "
fi

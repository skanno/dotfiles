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
  PS1='[\u@\h \W$(__git_ps1 " (%s)") \D{%F %T}]\$ '
fi

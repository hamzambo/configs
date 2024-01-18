# ksh configuration file
. /etc/ksh.kshrc

# Check for an interactive session
[ -z "$PS1" ] && return

PS1='\u@\h \W > '
function parse_git_branch {
    local branch_name
    local author_name

# Get the current branch name
branch_name=$(git rev-parse --abbrev-ref HEAD 2> /dev/null)

  if [ -n "$branch_name" ]; then
      # Get the author of the last commit on the current branch
          author_name=$(git log -1 --pretty=format:'%an' 2> /dev/null)

              # Format the output with branch and author information
                  echo "($branch_name - $author_name)"
                    fi
                    }


# function parse_git_branch {
#  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
# }
export  PS1='\[\033[0;31m\]\u \[\033[1;34m\]\w \[\033[1;33m\]$(parse_git_branch)\n\[\033[1;32m\]> \[\033[00m\]'
# export PS1='\[\033[0;31m\]\u \[\033[1;32m\]\w $(parse_git_branch)\n\[\033[1;32m\]> \[\033[00m\]'

# export PS1='\[\e[0;36m\]\w\[\e[01m\]\[\e[30m\]$([ $? -eq 0 ]||printf $red)\$\[\e[0m\] '
# export PS1='\[\e[0;36m\]\w\[\e[01m\]\[\e[30m\]\$\[\e[0m\] ' red=$(printf '\e[31m')

# use vim if it's installed, vi otherwise
case "$(command -v vim)" in
  */vim) VIM=vim ;;
    *)     VIM=vi  ;;
    esac

export EDITOR=$VIM
export FCEDIT=$EDITOR
export PAGER=less
export LESS='-iMRS -x2'
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export CLICOLOR=1
HISTFILE=$HOME/.ksh_history
HISTSIZE=20000

# emacs mode gives you the familiar Ctrl-A, Ctrl-E, etc
set -o emacs

# use colorls
LSCOLORS=fxexcxdxbxegedabagacad
export LSCOLORS
alias ls='colorls -G'
alias ll='ls -l'
alias la='ls -lA'
alias ..='cd ..'
alias ...='cd ...'
alias mkdir='mkdir -p'
alias df='df -h'
alias du='du -ch'
alias weather='curl http://wttr.in/Banana'
command -v neomutt > /dev/null && alias mutt='neomutt'
alias svim="doas vim"
alias svi="doas vi"
alias john='mpv https://www.youtube.com/LastWeekTonight'
alias mkbhd='mpv https://www.youtube.com/mkbhd'
alias dy="dig +short @dns.toys"

source "$HOME/.aliases"

# Store 10,000 history entries
export HISTSIZE=10000
# Don't store duplicates
export HISTCONTROL=erasedups
# Append to history file
shopt -s histappend

VISUAL=vim
EDITOR="$VISUAL"
PSQL_EDITOR='vim -c"setf sql"'
CLICOLOR=1

export VISUAL EDITOR PSQL_EDITOR CLICOLOR

# PROMPT
# give the fullpaths of files passed in argv or piped through stdin
  function fullpath {
    ruby -e '
      $stdin.each_line { |path| puts File.expand_path path }  if ARGV.empty?
      ARGV.each { |path| puts File.expand_path path }         unless ARGV.empty?
    ' "$@"
  }

# Prompt
  function parse_git_branch {
    branch=`git rev-parse --abbrev-ref HEAD 2>/dev/null`
    if [ "HEAD" = "$branch" ]; then
      echo "(no branch)"
    else
      echo "$branch"
    fi
  }

  function prompt_segment {
    # for colours: http://en.wikipedia.org/wiki/ANSI_escape_code#Colors
    # change the 30 to change the text
    # change the 45 to change the background
    if [[ ! -z "$1" ]]; then
      echo "\[\033[${2:-30};46m\]${1}\[\033[0m\]"
    fi
  }

  function build_mah_prompt {
    # time
      ps1="$(prompt_segment " \@ ")"

    # cwd
    ps1="${ps1} $(prompt_segment " \w ")"

    # git branch
    git_branch=`parse_git_branch`
    if [[ ! -z "$git_branch" ]]
    then
      ps1="${ps1} $(prompt_segment " $git_branch " 35)"
    fi

    # next line
    ps1="${ps1}\n\$ "

    # set prompt output
    # PS1="$ps1"
    PS1="$ps1"

  }

  PROMPT_COMMAND='build_mah_prompt'

# This is absolutely disgusting, but I can't find a better way to do it. It will colourize the
# standarderr red (but will print on stdout, and stdout on stderr)
  function colour-red {
    ruby -e '$stderr.print "\e[31m", $stdin.read, "\e[0m"'
  }
  function colour-stderr-red {
    ( $* 3>&1 1>&2- 2>&3- ) | colour-red
  }

export HISTIGNORE="%*"

if [ -f '/usr/local/etc/bash_completion.d/git-completion.bash' ]; then
  source '/usr/local/etc/bash_completion.d/git-completion.bash'
fi

# source ~/dotfiles/bin/tmuxinator.bash

# get thefuck to work(https://github.com/nvbn/thefuck)
eval $(thefuck --alias)

export PATH=/usr/local/bin:$PATH



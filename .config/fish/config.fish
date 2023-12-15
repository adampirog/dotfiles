set fish_greeting

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
status is-interactive && eval /home/apirog/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<


if type -q exa
  alias ll "exa --long --header --icons"
  alias lla "ll -a"
end

source /home/apirog/.bash_aliases

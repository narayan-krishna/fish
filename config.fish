if status is-interactive
and not set -q TMUX
    exec tmux
end

# alias ll='ls -alF'
# alias la='ls -A'
# alias l='ls -CF'
alias ls='ls --color=never'

alias vi='nvim --startuptime /tmp/nvim-startuptime'
alias cs='cd /mnt/c/users/knara/Documents/CPSC_Courses && ls'
alias config='cd ~/.config && ls'
alias basics='cd /mnt/c/users/knara/Desktop/Basics'
# unalias ls

cd /mnt/c/users/knara
set -g fish_prompt_pwd_dir_length 1
set -g fish_prompt_pwd_full_dirs 1
set -g __fish_git_prompt_show_informative_status 0

fish_vi_key_bindings


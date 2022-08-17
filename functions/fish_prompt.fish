# function fish_prompt
#     if test -n "$SSH_TTY"
#         echo -n (set_color brred)"$USER"(set_color white)'@'(set_color yellow)(prompt_hostname)' '
#     end
#
#     echo -n (set_color blue)(prompt_pwd)' '
#
#     set_color -o
#     if fish_is_root_user
#         echo -n (set_color red)'# '
#     end
#     echo -n (set_color red)'❯'(set_color yellow)'❯'(set_color green)'❯ '
#     set_color normal
# end

# jonhoo's config with subtle changes

function fish_prompt
  set_color brblack
  echo -n "["(date "+%H:%M")"] "
  set_color blue
  echo -n "$USER"
  if [ $PWD != $HOME ]
    set_color brblack
    echo -n ':'
    set_color yellow
    echo -n (basename $PWD)
  end
  # set_color green
  # printf '%s ' (__fish_git_prompt) 
  set_color red
  echo -n ' | '
  set_color normal
end

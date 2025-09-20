if status is-interactive
    # Commands to run in interactive sessions can go here
    
end

if test -d ~/.linuxbrew/bin
    set -gx PATH ~/.linuxbrew/bin $PATH
else if test -d /home/linuxbrew/.linuxbrew/bin
    set -gx PATH /home/linuxbrew/.linuxbrew/bin $PATH
end
set -gx EDITOR "nvim"
set -gx VISUAL "nvim"
set -U fish_user_paths /home/ruby/.local/bin $fish_user_paths
set -x HYFETCH_DONT_WARN_RUST 1

set -l time $(printf "%(%x | %X)T")

# use this for random pride flag
set -l RANDOM (date +%s)
set -a flags femme transgender transfeminine lesbian sapphic finsexual
set -l use_flag $flags[(math $RANDOM % (count $flags) + 1)]
hyfetch -b fastfetch -p "$use_flag"

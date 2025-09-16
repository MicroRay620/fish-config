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

hyfetch

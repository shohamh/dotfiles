set -g -x XDG_CONFIG_HOME ~/.config
set -g -x VISUAL nvim
set -g -x EDITOR nvim
set -g theme_color_scheme gruvbox
set -gx PATH ~/.cargo/bin ~/.yarn/bin ~/bin ~/.local/bin $PATH

# Base16 Shell
if status --is-interactive
    eval sh $HOME/.config/base16-shell/scripts/base16-tomorrow-night.sh
end

# less&man colors
set -x LESS_TERMCAP_md (printf "\e[01;31m")
set -x LESS_TERMCAP_me (printf "\e[0m")
set -x LESS_TERMCAP_se (printf "\e[0m")
set -x LESS_TERMCAP_so (printf "\e[01;44;33m")
set -x LESS_TERMCAP_ue (printf "\e[0m")
set -x LESS_TERMCAP_us (printf "\e[01;32m")

# Start X at login
if status is-login
    if test -z "$DISPLAY" -a $XDG_VTNR = 1
        exec startx -- -keeptty
    end
end


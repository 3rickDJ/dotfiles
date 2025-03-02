if [ -f /etc/profile ]; then
    PATH=""
    source /etc/profile
fi
# zsh equivalent


. /usr/local/opt/asdf/libexec/asdf.sh

PATH=~/.console-ninja/.bin:$PATH

source $HOME/.cargo/env
. ~/.asdf/plugins/java/set-java-home.bash


. "$HOME/.cargo/env"

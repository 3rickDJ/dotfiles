if status is-interactive
    # Commands to run in interactive sessions can go here
end
# source /usr/local/opt/asdf/libexec/asdf.fish

# export /usr/local/bin/
set -x PATH /usr/local/bin $PATH
set -x PATH /Users/mkdevs/Downloads/apache-maven-3.9.9/bin $PATH
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths


# abbreviations for git
# source ~/.asdf/asdf.fish
set -x VISUAL vim
set -x EDITOR vim
# fish_add_path /home/linuxbrew/.linuxbrew/opt/postgresql@11/bin

abbr -a gco git checkout
abbr -a gc git commit -v
abbr -a gcn git commit -v --no-verify
abbr -a gst git status
abbr -a gsh git show
abbr -a ga git add
abbr -a gco git checkout
abbr -a gp git push
abbr -a gl git pull
abbr -a gd git diff
abbr -a gds git diff --staged
abbr -a glo git log --graph --oneline
abbr -a gb git branch
abbr -a gr git remote
abbr -a g git
abbr -a tt tree

abbr -a e ranger
# abbr -a fishconf ~/.config/fish/
# abbr -a vimconf ~/.vim/
# abbr -a kittyconf ~/.config/kitty/kitty.conf

alias l='eza  --sort type --reverse --long'
alias ll='eza --icons -s type --long --git'
# alias pbcopy='xsel --clipboard --input'
# alias pbpaste='xsel --clipboard --output'
source /usr/local/opt/asdf/libexec/asdf.fish
if set -q TMUX
    echo "The environment variable VARIABLE_NAME is present."
else
    echo "The environment variable VARIABLE_NAME is not present."
end


  # export DOTNET_ROOT="/usr/local/opt/dotnet/libexec"
set DOTNET_ROOT /usr/local/opt/dotnet/libexec
. ~/.asdf/plugins/java/set-java-home.fish

export DISTROTUNNEL=~/.local/share/distrobox/distrotunnel;
export PATH=$DISTROTUNNEL/bin:$PATH;

alias distrotunnel="distrobox enter distrotunnel"
alias distrotunnel_setup=$DISTROTUNNEL/scripts/setup
alias distrotunnel_unsetup=$DISTROTUNNEL/scripts/unsetup

source $DISTROTUNNEL/scripts/dmt/src/dmt.zsh

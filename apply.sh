#! /bin/bash
# Puppet-apply script for UNIX machines

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
export FACTER_HOME="$HOME"
export FACTER_DOTFILES="$HOME/.dotfiles"

puppet apply --modulepath=$DIR/modules $DIR/manifests/default.pp

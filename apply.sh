#! /bin/bash
# Puppet-apply script for UNIX machines

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
MODULEPATH="$DIR/modules:$( puppet config print modulepath )"

export FACTER_HOME="$HOME"
export FACTER_DOTFILES="$DIR"
export FACTER_MODULE_PATH="$DIR/modules"

puppet apply --modulepath=$MODULEPATH $DIR/manifests/default.pp

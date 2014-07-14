#! /bin/bash
# Puppet-apply script for UNIX machines

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
FACTER_FOO="$HOME"

puppet apply --modulepath=$DIR/modules $DIR/manifests/default.pp

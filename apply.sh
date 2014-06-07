#! /bin/bash
# Puppet-apply default manifest

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

puppet apply --modulepath=$DIR/modules $DIR/manifests/default.pp


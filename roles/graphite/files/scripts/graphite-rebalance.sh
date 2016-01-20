#!/bin/sh
#
# Rebalancear cluster de un tamaño a otro.
#

LOCAL_IP="$1"
PATH_OLD_CLUSTER="$2"

for h in $(carbon-hosts -c "$PATH_OLD_CLUSTER") ; do
  ssh $h -- carbon-list |
  carbon-sieve -n $LOCAL_IP |
  carbon-sync -s $h
done

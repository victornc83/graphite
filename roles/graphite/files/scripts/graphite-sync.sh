#!/bin/sh
#
# Resincronizar un nodo desde el resto de nodos del cluster
#

LOCAL_IP="$1"

for h in $(carbon-hosts) ; do
  (
    ssh $h -- carbon-list | carbon-sieve -n $LOCAL_IP | carbon-sync -s $h
  ) &
done

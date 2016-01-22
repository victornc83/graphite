#!/bin/bash

metricas=`carbon-list | carbon-sieve -I -n $1`

for i in $metricas ; do
  echo "/var/lib/carbon/whisper/$i" | tr '.' '/' | xargs -I{} rm {}.wsp ;
done

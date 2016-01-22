#!/bin/bash

metricas=`carbon-list | carbon-sieve -I -n $1`

echo '$(date +"%D-%T") - Purgando metricas'

for i in $metricas ; do
  echo '$(date +"%D-%T") - $i'
  echo "/var/lib/carbon/whisper/$i" | tr '.' '/' | xargs -I{} rm {}.wsp ;
done

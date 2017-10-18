#!/bin/bash

if [ -n "$MAX_INDEX_AGE" ]; then
  #for INDICES_PREFIX in $INDICES_PREFIXES; do
    /usr/bin/curator --config /etc/periodic/config/config.yml /etc/periodic/config/actions.yml
  #done
else
  echo "Skip purging old indices. MAX_INDEX_AGE is not set."
fi

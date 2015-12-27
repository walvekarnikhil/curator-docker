#!/bin/bash

if [ -n "$MAX_INDEX_AGE" ]; then
  for INDICES_PREFIX in $INDICES_PREFIXES; do
    /usr/bin/curator --host $ELASTICSEARCH_HOST --port $ELASTICSEARCH_PORT delete indices --older-than $MAX_INDEX_AGE --time-unit days --prefix $INDICES_PREFIX  --timestring '%Y.%m.%d'
  done
else
  echo "Skip purging old indices. MAX_INDEX_AGE is not set."
fi

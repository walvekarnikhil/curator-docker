#!/bin/bash

for INDICES_PREFIX in $INDICES_PREFIXES; do
  curator --host $ELASTICSEARCH_HOST --port $ELASTICSEARCH_PORT optimize --max_num_segments 1 indices --prefix $INDICES_PREFIX --older-than 1 --time-unit days --timestring '%Y.%m.%d'
done

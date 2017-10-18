This docker image runs curator tasks against an elasticsearch cluster to manage its indices.

The list of tasks currently are:
* purge old logstash indices (when MAX_INDEX_AGE is set)
* optimise logstash indices that are a day old or more

## Configuration

`ELASTICSEARCH_HOST` - The hostname or IP address of an elasticsearch cluster.

`ELASTICSEARCH_PORT` - The port of an elasticsearch cluster.

`INDICES_PREFIXES` - Prefixes of indices to optimize/purge, space separted. Defaults to "logstash"

`MAX_INDEX_AGE` - The maximum age (in days) a logstash index can be until it is deleted.

`USE_SSL` - Whether to use SSL or not.


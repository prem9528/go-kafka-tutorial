#!/usr/bin/env bash
# Example script to produce a JSON message to Kafka using Confluent REST Proxy

REST_PROXY_URL="http://localhost:8082"
TOPIC="test"

curl -X POST \
  -H "Content-Type: application/vnd.kafka.json.v2+json" \
  --data '{"records":[{"value":{"message":"hello world"}}]}' \
  "$REST_PROXY_URL/topics/$TOPIC"

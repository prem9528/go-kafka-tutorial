# go-kafka-tutorial

Minimal Go Kafka tutorial repository with a simple `producer` and `worker` example.

Quick start

1. Ensure Go is installed (>= 1.18).
2. Start Kafka (local or remote) and note broker addresses and any REST proxy endpoints.
3. Build and run the producer or worker from the workspace root.

Build

```
go build ./producer
go build ./worker
```

Run

From the workspace root:

```
# run the producer
go run ./producer

# run the worker
go run ./worker
```

HTTP/Curl example (Kafka REST Proxy)

If you have Confluent Kafka REST Proxy running (example at `http://localhost:8082`), you can produce JSON messages with this curl command:

```
curl -X POST \
  -H "Content-Type: application/vnd.kafka.json.v2+json" \
  --data '{"records":[{"value":{"message":"hello world"}}]}' \
  http://localhost:8082/topics/test
```

Notes:
- Replace `http://localhost:8082` with your REST Proxy URL.
- Replace `test` with your target topic name.

Script

If you'd like to run the same command from a script, see `scripts/produce_rest.sh`.

Git push (example)

```
git init
git add .
git commit -m "Initial commit: add README, .gitignore, license, curl examples"
git branch -M main
git remote add origin <YOUR_REMOTE_URL>
git push -u origin main
```

License

This project is licensed under the MIT License - see the `LICENSE` file for details.

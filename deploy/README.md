# notes on compose
* run `docker-compose up -d` to start everything
* control-center is located at `http://localhost:9021`
* access to psql: `psql postgres://developer:somepassword@127.0.0.1:5432/developer # postgres://user:pass@host:port/schema`
* network mapping:
  * postgres at 5432
  * control-center at 9021
  * kafka at 29092
  * kafka-metrics at 9101
  * zookeeper at 2181
  * mongodb at 27017

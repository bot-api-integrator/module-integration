# notes on compose
* run `docker-compose up -d` to start everything
* control-center is located at `http://localhost:9021`
* access to psql: `psql postgres://developer:somepassword@127.0.0.1:5432/developer`
* port mapping:
  * postgres at 5432
  * mongodb at 27017
  * control-center at 9021
  * kafka:
    * 29092 inside docker network `bot-api-integrator`
    * 9092 on localhost
* persistent volumes:
  * kafka-data
  * zookeeper-data
  * zookeeper-log
  * psql-data
  * mongo-data

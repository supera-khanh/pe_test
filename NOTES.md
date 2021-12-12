# Notes taken 

1. the `run.sh` script fails in the first instance because it calls `.env` which doesn't exist on my terminal
1. no specific instruction to bring down the localstack infra. assume use the standard `docker-compose down` command
1. used the defined base image: openjdk:11
1. docker builds are huge. the jdk images are massive.

# Notes taken 

**docker**
1. the `run.sh` script fails in the first instance because it calls `.env` which doesn't exist on my terminal
1. no specific instruction to bring down the localstack infra. assume use the standard `docker-compose down` command
1. used the defined base image: openjdk:11
1. docker builds are huge. the jdk images are massive.
1. we need to pass "localstack" as the dynamo endpoint - but make sure they are on the same network calling `--network` flag

**terraform**
1. using opensource terraform module `terraform-aws-modules/dynamodb-table`
1. good to employ terraform-docs here
1. the opensource module doesn't work but vanilla terraform does. i think it's the way the app is expecting some results. falling back to the vanilla to make it work.

**jenkins**
1. notes around the jenkins bit references `src` but there's no such directory -- the sample jenkins config references the src directory so we'll have to update it as necessary, or maybe put some symlinks in.
1. should we use groovy?
1. jenkins reset instruction is incorrect - wrong volume name
1. BUG: the stash doesn't work - maybe because it's a mapped volume. we have to use the local volume instead. 
1. the `export_job.sh` script is incorrectly setup with the wrong container name

# 2nd try

1. all working now

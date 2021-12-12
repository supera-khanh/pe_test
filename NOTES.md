# Notes taken 

**docker**
1. the `run.sh` script fails in the first instance because it calls `.env` which doesn't exist on my terminal
1. no specific instruction to bring down the localstack infra. assume use the standard `docker-compose down` command
1. used the defined base image: openjdk:11
1. docker builds are huge. the jdk images are massive.

**terraform**
1. using opensource terraform module `terraform-aws-modules/dynamodb-table`
1. good to employ terraform-docs here
1. outputs didn't work for the module so commented out.

**jenkins**
1. notes around the jenkins bit references `src` but there's no such directory -- the sample jenkins config references the src directory so we'll have to update it as necessary, or maybe put some symlinks in.
1. should we use groovy?
1. jenkins reset instruction is incorrect - wrong volume name
1. the stash doesn't work - maybe because it's a mapped volume. we have to use the local version instead.
1. the `export_job.sh` script is incorrectly setup with the wrong container name


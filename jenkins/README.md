# jenkins

## Quick Start

Jenkins runs locally on localstack.

Build the stack according to these instructions: [README.md](../README.md)

**Run Job**

1. Go to the jenkins console: http://localhost:8081/
1. Select the pipeline: [sample-app-build-and-deploy](http://localhost:8081/job/sample-app-build-and-deploy/)
1. Select [Build Now](http://localhost:8081/job/sample-app-build-and-deploy/build?delay=0sec)

## Configure Pipeline

1. Open jenkins console: http://localhost:8081/
1. Select the pipeline: [sample-app-build-and-deploy](http://localhost:8081/job/sample-app-build-and-deploy/)
1. Select [Configure](http://localhost:8081/job/sample-app-build-and-deploy/configure)
1. Update pipeline script as necessary
1. *Save*

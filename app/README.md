# demo-app

## Quick Start

**Pre-reqs**

1. docker desktop
1. dynamodb instance

**Build**

```shell
docker build -t demo-app:latest .
```

**Run**

```shell
docker run --network pe_test_sa-code-test demo-app:latest
```

the `--network` flag is required to ensure that the demo-app can communicate with the localstack instance of dynamodb

## Docker

This `Dockerfile` will build a container image that includes the app in [./bin](./bin) and an example  bootstrap file [testData.json](./testData.json).

The docker container image ensures the app does not run as root by creating an app specific user.

The application runs on port 8080 and this is exposed on the container image.

## DynamoDB

The application needs to contact a DynamoDB instance and populate using the bootstrap file.

The application will error if it cannot reach the dynamoDB instance.

## Passing runtime options

The application can receive parameters at runtime.

| Parameter | Description | Required |
| --- | --- | --- |
| `test.data.file.path` | location of bootstrap configuration file | N |
| `amazon.dynamodb.endpoint` | dynamodb instance url | N |

Example:

```shell
docker run demo-app:latest \ 
 --test.data.file.path==someTestData.json \ 
 --amazon.dynamodb.endpoint==http://dynamoInstance:4566
```

These will default, if not supplied. There is a testData.json pre-baked into the image and the DynamoDB endpoint is the associated localstack.

## Localstack

We can find the IP address of the localstack container:
`docker inspect aws-mock-localstack | jq -r '.[].NetworkSettings.Networks."pe_test_sa-code-test".IPAddress'`

And to apply to the run command:
`docker run --network pe_test_sa-code-test pe_test:latest --amazon.dynamodb.endpoint=http://$(docker inspect aws-mock-localstack | jq -r '.[].NetworkSettings.Networks."pe_test_sa-code-test".IPAddress'):4566`

**Note**: the `pe_test_sa-code-test` network is preconfigured as part of the localstack config so replace as necessary.

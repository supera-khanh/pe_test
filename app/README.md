# demo-app

## Quick Start

**Pre-reqs**

1. docker desktop
1. dynamodb instance at `http://localhost:4566`

**Build**

```shell
docker build -t demo-app:latest .
```

**Run**

```shell
docker run demo-app:latest
```

## Docker

This `Dockerfile` will build a container image that includes the app in [./bin](./bin) and an example  bootstrap file [testData.json](./testData.json).

The docker container image ensures the app does not run as root by creating an app specific user.

The application runs on port 8080 and this is exposed on the container image.

## DynamoDB

The application needs to contact a DynamoDB instance and populate using the bootstrap file.

The application will error if it cannot reach the dynamoDB instance.

## Passing runtime options

The application can receive parameters at runtime.

| Parameter | Description |
| --- | --- |
| `test.data.file.path` | location of bootstrap configuration file |
| `amazon.dynamodb.endpoint` | dynamodb instance url |

Example:

```shell
docker run demo-app:latest \ 
 --test.data.file.path==someTestData.json \ 
 --amazon.dynamodb.endpoint==http://dynamoInstance:4566
```

These will default, if not supplied, to the pre-baked example bootstrap file and the localstack version of dynamoDB. 

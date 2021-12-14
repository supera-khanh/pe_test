FROM openjdk:11

COPY bin /opt/lib
COPY testData.json .

RUN groupadd -g 999 demo-app && \
    useradd -r -u 999 -g demo-app demo-app
USER demo-app

EXPOSE 8080

ENTRYPOINT [ "java", "-jar", "/opt/lib/localstack-demo-0.0.1-SNAPSHOT.jar"]
CMD ["--test.data.file.path=./testData.json", "--amazon.dynamodb.endpoint=http://localstack:4566"]

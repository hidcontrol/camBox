#!/usr/bin/env bash

curl -O -J -L "https://repo1.maven.org/maven2/io/swagger/swagger-codegen-cli/2.2.3/swagger-codegen-cli-2.2.3.jar"
curl -O -J -L  "https://repository.sonatype.org/service/local/artifact/maven/content?r=central-proxy&g=org.camunda.bpm.extension.swagger&a=camunda-bpm-swagger-json&e=jar&v=LATEST"
unzip -j camunda-bpm-swagger-json-7.8.0.jar META-INF/resources/swagger.json
java -jar swagger-codegen-cli-2.2.3.jar generate -i swagger.json -l python -o source -c swagger-gen-config.json

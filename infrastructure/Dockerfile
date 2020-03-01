# Pull upstream CamundaBPM Tomcat image
FROM camunda/camunda-bpm-platform:tomcat-7.11.0

ENV PRETTY_JSON_LOG=false

# Remove the slf4j-jdj14 bridge library that is packaged with CamundaBPM tomcat distribution
RUN rm -rf /camunda/lib/slf4j-jdk14-1.7.26.jar

# Add logback configuration
RUN mkdir /camunda/conf/logback

# Настройка потоков и форматов логов
COPY camunda/conf/logback/logback.xml /camunda/conf/logback/logback.xml

# Overwrite global logging configuration for tomcat
COPY camunda/conf/logging.properties /camunda/conf/logging.properties

# Copy Jar for logging
COPY camunda/lib/ /camunda/lib/

# Overwrite setenv.sh with additional CLASSPATH config that exposes the libraries at tomcat startup
COPY camunda/bin/setenv.sh /camunda/bin/setenv.sh



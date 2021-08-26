FROM docker.io/ibmcom/websphere-liberty:20.0.0.5-full-java11-openj9-ubi
WORKDIR /
USER root
RUN mkdir -p /my-special-folder
COPY target/simple-stuff.war /config/dropins/
COPY config/server.xml /config/
COPY config/server.env /config/

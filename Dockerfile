FROM openjdk:8-jre-alpine3.9
LABEL maintainer="Shivakumar Ningappa <shivagowda@gmail.com>"

# Copy the already build jar to the image
COPY target/jhttp-1.0-SNAPSHOT.jar /bin/

# Expose default port for external communication
EXPOSE 8888

# Command to run the executable
ENTRYPOINT [ "java" ,"-jar",  "/bin/jhttp-1.0-SNAPSHOT.jar" ]

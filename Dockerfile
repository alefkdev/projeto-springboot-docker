FROM openjdk:11

ARG PROFILE
ARG ADDITIONAL_OPTS

ENV PROFILE=${PROFILE}
ENV ADDITIONAL_OPTS = ${ADDITIONAL_OPTS}

WORKDIR /opt/dockerboot

COPY /target/projetodocker-0.0.1-SNAPSHOT.jar dockerboot.jar

SHELL ["/bin/sh", "-c"]

EXPOSE 8080
EXPOSE 5005

CMD java ${ADDITIONAL_OPTS} -jar dockerboot.jar --spring.profiles.active=${PROFILE}

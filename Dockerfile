# syntax=docker/dockerfile:1
ARG DIST=latest
ARG DISTRIBUTION=ubuntu
ARG PLATFORM=amd64
ARG ENABLE_LLSO=true
ARG ENABLE_PSO=true
FROM --platform=linux/${PLATFORM} ${DISTRIBUTION}:${DIST}

# see https://docs.docker.com/engine/reference/builder/#understand-how-arg-and-from-interact
ARG ENABLE_LLSO
ARG ENABLE_PSO

# Set the env variables to non-interactive
ENV DEBIAN_FRONTEND noninteractive
ENV DEBIAN_PRIORITY critical
ENV DEBCONF_NOWARNINGS yes

COPY test.sh /test.sh

ENTRYPOINT ["/test.sh"]

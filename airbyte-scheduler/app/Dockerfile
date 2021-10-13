FROM arm64v8/openjdk:17-jdk-slim-buster AS scheduler

ENV APPLICATION airbyte-scheduler

WORKDIR /app

COPY build/distributions/${APPLICATION}-0*.tar ${APPLICATION}.tar

RUN tar xf ${APPLICATION}.tar --strip-components=1

# wait for upstream dependencies to become available before starting server
ENTRYPOINT ["/bin/bash", "-c", "bin/${APPLICATION}"]

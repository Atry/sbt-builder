FROM openjdk:8-alpine

ENV SBT_VERSION=1.2.8
ENV PATH=/opt/sbt/bin:$PATH

# SBT needs bash and rsync to use preload
RUN apk --no-cache add bash rsync \ 
  && wget -q -O - https://piccolo.link/sbt-${SBT_VERSION}.tgz | tar xz -C /opt

ENTRYPOINT [ "sbt" ]

WORKDIR /project

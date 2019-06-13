# SBT builder image

A Dockerfile to build a SBT builder image with scalajs-bundler and sbt-native-packager docker support.

It uses OpenJDK Alpine base image, with NodeJS, NPM and Docker added.

You can use it to run one-off sbt in project dir:

```docker run --rm -it -v $(pwd):/project iterativeworks/sbt```

Also, it is handy in gitlab-ci for sbt-based builds.

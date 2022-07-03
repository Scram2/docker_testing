# ok - compile locally
#FROM openjdk:11.0.15
#COPY ./out/production/docker_testing/ /tmp
#WORKDIR /tmp
#ENTRYPOINT ["java","app/Main"]

# "-" - compile locally
#FROM openjdk:11.0.15
#COPY ./out/production/docker_testing/src/app/ /tmp
#WORKDIR /tmp
#ENTRYPOINT ["java", "Main"]

# Ok - compile locally
# FROM openjdk:11.0.15
# COPY ./out/production/docker_testing/ /tmp
# WORKDIR /tmp
# CMD ["java","app/Main"]

# ok - compile inside image
# FROM openjdk:11.0.15
# COPY ./src/ /tmp
# WORKDIR /tmp
# RUN javac ./app/Main.java
# CMD ["java","app/Main"]


# ok - compile inside image
FROM openjdk:11.0.15
MAINTAINER Author Name <author@email.com>
ENV MAVEN_VERSION 3.3.9

COPY ./src/ /tmp
WORKDIR /tmp
RUN javac ./app/Main.java && \
    echo 'Compiled build in Docker container'
# ENTRYPOINT ["echo","aaa_1"]
# ENTRYPOINT ["echo", "param_3", "param_4"]

ENV SOME_ENV 777
# RUN echo '$SOME_ENV'
ENTRYPOINT echo param_5 param_7 $SOME_ENV $MAVEN_VERSION
EXPOSE 8083



# create image -> docker build --tag yourImageName .
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
FROM openjdk:11.0.15
COPY ./src/ /tmp
WORKDIR /tmp
RUN javac ./app/Main.java
CMD ["java","app/Main"]


# create image -> docker build --tag yourImageName .
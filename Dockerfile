#!/bin/bash
FROM java:latest
MAINTAINER "devops236@gmail.com"
WORKDIR /opt/sam
COPY hello.war /opt/sam/hello.war
EXPOSE 80:80

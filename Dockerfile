#!/bin/bash
FROM java:1.8
MAINTAINER "devops236@gmail.com"
WORKDIR /opt/sam
COPY hello.war /opt/sam/hello.war
EXPOSE 80:80

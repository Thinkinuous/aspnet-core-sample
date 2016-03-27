FROM microsoft/aspnet:latest

MAINTAINER Wahid Shalaly <waheedsayed@gmail.com>

COPY ./src/webapp /home/webapp

WORKDIR /home/webapp

RUN ["dnu", "restore"]

EXPOSE 5000

ENTRYPOINT ["dnx", "web"]

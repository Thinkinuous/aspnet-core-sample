FROM microsoft/aspnet:1.0.0-rc1-update1-coreclr

MAINTAINER Wahid Shalaly <waheedsayed@gmail.com>

COPY ./src/webapp /home/webapp

WORKDIR /home/webapp

RUN ["dnu", "restore"]

EXPOSE 5000

ENTRYPOINT ["dnx", "web"]

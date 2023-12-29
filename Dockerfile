FROM ubuntu:latest

RUN apt-get update \
    && apt-get install -y vim

COPY /.vimrc /root/.vimrc

WORKDIR /workspace

FROM ubuntu:latest

RUN apt-get update \
&& apt-get install -y \
vim \
neofetch \

COPY /.vimrc /root/.vimrc

WORKDIR /workspace

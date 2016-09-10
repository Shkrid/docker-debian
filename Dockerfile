FROM debian:jessie
MAINTAINER Shkrid <shkrid@gmail.com>

RUN apt-get update && apt-get install -y vim bash-completion

#Uncoment compeltion section
RUN sed -i '/^#if ! shopt -oq posix; then$/,/^#fi$/ s/^#//' /etc/bash.bashrc

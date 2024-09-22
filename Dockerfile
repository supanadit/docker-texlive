FROM ubuntu:24.04

RUN apt-get update -y
RUN apt-get install texlive-full -y

RUN apt-get install make -y
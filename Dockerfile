FROM ubuntu:24.04

RUN apt-get update
RUN apt-get install -y wget perl libfreetype6 libfreetype6-dev libfontconfig1 libfontconfig1-dev build-essential chrpath libssl-dev libxft-dev
RUN wget -qO- "https://yihui.org/tinytex/install-bin-unix.sh" | sh

ENV PATH="/root/bin:${PATH}"

WORKDIR /root
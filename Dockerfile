FROM alpine:3.20.3

RUN apk add perl wget

WORKDIR /tmp
RUN wget -O tinytex.tar.gz https://yihui.org/tinytex/TinyTeX-0.tar.gz
RUN tar -xzvf tinytex.tar.gz

RUN mv .TinyTeX /root/.TinyTeX

ENV PATH="/root/.TinyTeX/bin/x86_64-linux:${PATH}"

RUN wget -qO- "https://yihui.org/tinytex/install-bin-unix.sh" | sh
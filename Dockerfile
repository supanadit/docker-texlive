FROM busybox:1.36.1

WORKDIR /tmp
RUN wget -O tinytex.tar.gz https://yihui.org/tinytex/TinyTeX-0.tar.gz
RUN tar -xzvf tinytex.tar.gz

RUN mv .TinyTeX /root/.TinyTeX

ENV PATH="/root/.TinyTeX/bin/x86_64-linux:${PATH}"
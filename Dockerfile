FROM ubuntu:24.04

RUN apt-get update
RUN apt-get install -y wget perl libfreetype6 libfreetype6-dev libfontconfig1 libfontconfig1-dev build-essential chrpath libssl-dev libxft-dev git
RUN wget -qO- "https://yihui.org/tinytex/install-bin-unix.sh" | sh

ENV PATH="/root/bin:${PATH}"

WORKDIR /root

# # From Git
# WORKDIR /tmp

# RUN git clone https://github.com/T-F-S/tikzfill.git
# RUN cp -R tikzfill/tex /root/.TinyTeX/texmf-dist

# # Cleaning Up
# RUN rm -rf /tmp/tikzfill

# From TLMGR
RUN tlmgr install enumitem fancyhdr ragged2e xifthen xstring ifmtarg fontawesome5 setspace roboto sourcesanspro tcolorbox parskip tikzfill
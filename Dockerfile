FROM alpine:3.20.3

RUN apk add wget perl make fontconfig

ENV TEXLIVE_INSTALL_TEXMFLOCAL=/usr/local/texlive/texmf-local
ENV TEXLIVE_INSTALL_TEXMFSYSVAR=/usr/local/texlive/texmf-var
ENV TEXLIVE_INSTALL_TEXMFSYSCONFIG=/usr/local/texlive/texmf-config

ENV TEXLIVE_INSTALL_TEXMFHOME=~/.texlive/texmf
ENV TEXLIVE_INSTALL_TEXMFVAR=~/.texlive/texmf-var
ENV TEXLIVE_INSTALL_TEXMFCONFIG=~/.texlive/texmf-config

WORKDIR /tmp

RUN wget https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
RUN tar -xvzf install-tl-unx.tar.gz
RUN sh -c 'cd install-tl-* && perl ./install-tl --no-interaction --scheme=minimal --profile texlive.profile --no-doc-install --no-src-install --texdir=/usr/local/texlive'

ENV PATH="/usr/local/texlive/bin/x86_64-linuxmusl:${PATH}"
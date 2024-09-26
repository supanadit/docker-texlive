FROM archlinux/archlinux:latest

RUN pacman-key --init
RUN pacman -Sy git binutils make pkg-config fakeroot openssl base-devel --noconfirm

# Create a new user
RUN useradd --no-create-home --shell=/bin/false build && usermod -L build
RUN echo "build ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
RUN echo "root ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

USER build

WORKDIR /tmp
RUN git clone https://aur.archlinux.org/yay-bin.git

WORKDIR /tmp/yay-bin
RUN makepkg -si --noconfirm

RUN yay -Sy texlive-full --noconfirm
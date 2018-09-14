FROM ubuntu:18.04
ENV LANG C.UTF-8

RUN apt-get update
RUN apt-get install -y --no-install-recommends \
  git \
  vim
RUN apt-get install -y --no-install-recommends \
  zsh
RUN apt-get install -y --no-install-recommends \
  httpie
RUN apt-get install -y --no-install-recommends \
  wget

# add user
ARG MAIN_USER
RUN useradd $MAIN_USER
RUN usermod --shell /bin/zsh $MAIN_USER

# install tools
RUN wget --no-check-certificate https://github.com/sharkdp/bat/releases/download/v0.7.0/bat_0.7.0_amd64.deb && dpkg -i bat_0.7.0_amd64.deb && rm bat_0.7.0_amd64.deb

#RUN rm -rf /var/lib/apt/lists/*

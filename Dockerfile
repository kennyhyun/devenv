FROM ubuntu:18.04
ENV LANG C.UTF-8

RUN apt-get update
RUN apt-get install -y --no-install-recommends \
  git \
  vim
RUN apt-get install -y --no-install-recommends \
  zsh
RUN apt-get install -y --no-install-recommends \
  wget
RUN apt-get install -y --no-install-recommends \
  openssh-client

# add user
ARG MAIN_USER
RUN useradd $MAIN_USER
RUN usermod --shell /bin/zsh $MAIN_USER

RUN apt-get install -y --no-install-recommends \
  httpie

# install tools
RUN wget --no-check-certificate https://github.com/sharkdp/bat/releases/download/v0.7.0/bat_0.7.0_amd64.deb && dpkg -i bat_0.7.0_amd64.deb && rm bat_0.7.0_amd64.deb
RUN apt-get install -y --no-install-recommends \
  python
RUN apt-get install -y --no-install-recommends \
  build-essential
RUN apt-get install -y --no-install-recommends \
  rsync
RUN apt-get install -y --no-install-recommends \
  tmux
#RUN cd /usr/bin && ln -s python3 python
#RUN rm -rf /var/lib/apt/lists/*

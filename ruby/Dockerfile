FROM ruby:2.6.1-stretch

RUN apt-get update; \
  apt-get install -y \
  vim \
  less \
  screen \
  iputils-ping \
  net-tools \
  iproute2

# aliases
COPY ./config/.inputrc /root/.inputrc
COPY ./config/.aliasesrc /root/.aliasesrc

RUN echo "set clipboard=unnamed" >> /root/.vimrc; \
  echo "\n\nsource /root/.aliasesrc" >> /root/.bashrc \
  echo "\n\nsetterm -cursor on" >> /root/.bashrc

RUN mkdir -p /root/.ssh; \
  echo "Host *" > /root/.ssh/config; \
  echo " StrictHostKeyChecking no" >> /root/.ssh/config

RUN bundle config --global frozen 1

WORKDIR /

COPY ./ruby/entrypoint.sh ./entrypoint.sh

WORKDIR /app

ENTRYPOINT ["/entrypoint.sh"]

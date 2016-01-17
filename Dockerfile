FROM python

ENV TERM=xterm-256color
RUN pip install \
  rethinkdb

WORKDIR /source

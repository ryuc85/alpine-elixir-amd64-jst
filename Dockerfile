FROM nsij/alpine-amd64-jst:latest
RUN apk update && apk upgrade
RUN apk add erlang wget git unzip
RUN mkdir elixir && \
cd elixir && \
wget https://github.com/elixir-lang/elixir/releases/download/v1.6.1/Precompiled.zip && \
unzip Precompiled.zip && \
rm -f Precompiled.zip && \
cd .. && mv elixir /usr/local/elixir
RUN apk del wget unzip
ENV PATH $PATH:/usr/local/elixir/bin

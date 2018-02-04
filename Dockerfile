FROM nsij/alpine-amd64-jst:latest
RUN apk update && apk upgrade
RUN apk add elixir \
git

FROM ruby:2.6.3-alpine3.10

RUN apk add --no-cache --update --wait 10 \
        build-base \
        linux-headers \
        git \
        tzdata \
        less \
        libstdc++ \
        libx11 \
        libxrender \
        libxext \
        libssl1.1 \
        ca-certificates \
        fontconfig \
        freetype \
        ttf-dejavu \
        ttf-droid \
        ttf-freefont \
        ttf-liberation \
        ttf-ubuntu-font-family \
        && apk add --update --no-cache --virtual .build-deps \
        msttcorefonts-installer \
        && update-ms-fonts \
        && fc-cache -f \
        && rm -rf /tmp/* \
        && apk del .build-deps

WORKDIR /pdf-creator

COPY Gemfile* ./

RUN bundle install

COPY . .

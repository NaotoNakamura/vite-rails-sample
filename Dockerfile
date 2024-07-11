ARG RUBY_VERSION=3.3.4
FROM docker.io/library/ruby:$RUBY_VERSION-slim

WORKDIR /app

RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y  \
    build-essential \
    git \
    libvips \
    libpq-dev \
    pkg-config \
    curl \
    libjemalloc2 && \
    rm -rf /var/lib/apt/lists /var/cache/apt/archives

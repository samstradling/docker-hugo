FROM alpine:3.7

# Params
LABEL description="Docker container for generating static sites with Hugo (https://gohugo.io)."
LABEL maintainer="Sam Stradling"
ENV HUGO_VERSION=0.38

# Download and install hugo
ADD https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz /tmp/hugo/
RUN tar -xf /tmp/hugo/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz -C /tmp/hugo
RUN mkdir -p /usr/local/bin
RUN mv /tmp/hugo/hugo /usr/local/bin/hugo
RUN rm -rf /tmp/hugo

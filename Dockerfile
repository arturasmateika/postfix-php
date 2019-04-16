FROM catatnight/postfix

RUN echo "deb http://ppa.launchpad.net/ondrej/php/ubuntu trusty main" | tee -a /etc/apt/sources.list && \
    echo "deb-src http://ppa.launchpad.net/ondrej/php/ubuntu trusty main" | tee -a /etc/apt/sources.list && \
    gpg --keyserver pool.sks-keyservers.net --recv E5267A6C && \
    gpg --export --armor E5267A6C | apt-key add -

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y --no-install-recommends php-cli

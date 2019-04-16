FROM catatnight/postfix

ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

RUN apt install -y software-properties-common
RUN add-apt-repository ppa:ondrej/php

RUN apt-get update && \
    apt-get install -y php-cli php-curl

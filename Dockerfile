FROM catatnight/postfix

export LANG=C.UTF-8

RUN apt install -y software-properties-common
RUN add-apt-repository ppa:ondrej/php

RUN apt-get update && \
    apt-get install -y php-cli php-curl

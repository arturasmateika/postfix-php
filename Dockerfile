FROM catatnight/postfix

ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

RUN apt-get update

RUN apt-get install -y python-software-properties && apt install -y software-properties-common
RUN add-apt-repository ppa:ondrej/php

RUN apt-get update && \
    apt-get install -y php-cli php-dev php-curl php-mbstring

RUN apt-get -y install gcc g++ make autoconf libc-dev pkg-config

RUN apt-get install php-pear

RUN echo "#define HAVE_MBSTRING 1" >> /usr/include/php/20180731/ext/mbstring/libmbfl/mbfl/mbfilter.h

RUN pecl install mailparse

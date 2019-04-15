FROM catatnight/postfix
RUN apt-get install -y python-software-properties \
 && apt-add-repository ppa:ondrej/php
RUN apt-get update
RUN apt-get install php
RUN apt-get -y install gcc make autoconf libc-dev pkg-config

# Install libraries.
#RUN apt-get install -y \
#    curl \
#    php7.0-curl \
#    php7.0-dev

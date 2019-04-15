FROM catatnight/postfix
RUN apt-get install python-software-properties -y && add-apt-repository ppa:ondrej/php-7.0
RUN apt-get update
RUN apt-get install php7.0

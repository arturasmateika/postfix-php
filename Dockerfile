FROM catatnight/postfix
RUN apt-get update
RUN apt-get install -y php5-cli
RUN apt-get install -y php5-dev
RUN apt-get install -y php5-cli
RUN apt-get -y install gcc g++ make autoconf libc-dev pkg-config
RUN pecl install mailparse-2.1.6

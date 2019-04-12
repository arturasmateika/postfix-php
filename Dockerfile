FROM catatnight/postfix
RUN apt-get update
RUN apt-get install -y php5-cli

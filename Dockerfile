FROM catatnight/postfix
RUN apt-get install -y software-properties-common \
 && apt-add-repository ppa:ondrej/php
RUN apt-get update
RUN apt-get install php

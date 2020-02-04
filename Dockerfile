FROM php:7.2-cli-alpine

RUN apk add bash git

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin/ --filename=composer \
&& chmod +x /usr/bin/composer

WORKDIR /
COPY . /home

ENTRYPOINT /home/ci/test.sh

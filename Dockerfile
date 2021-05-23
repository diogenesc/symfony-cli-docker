FROM php:8-alpine

COPY --from=composer /usr/bin/composer /usr/bin/composer
COPY --from=symfonycorp/cli symfony /usr/bin/symfony
COPY ./entrypoint.sh /entrypoint.sh

RUN mkdir /.symfony /.composer \
    && chmod 777 /.symfony /.composer \
    && chmod +x /entrypoint.sh

WORKDIR /opt

ENTRYPOINT [ "sh", "/entrypoint.sh" ]
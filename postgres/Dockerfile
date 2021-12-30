FROM postgres:11.4

ADD ./init /docker-entrypoint-initdb.d/

## dos line end -> linux line end
RUN sed -i -e 's/\r$//' /docker-entrypoint-initdb.d/init-db.sh

EXPOSE 5432
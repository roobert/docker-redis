FROM debian:jessie

RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y redis-server

RUN sed -i 's/^\(bind .*\)$/# \1/' /etc/redis/redis.conf
RUN sed -i 's/^\(daemonize .*\)$/# \1/' /etc/redis/redis.conf
RUN sed -i 's/^\(dir .*\)$/# \1\ndir \/data/' /etc/redis/redis.conf
RUN sed -i 's/^\(logfile .*\)$/# \1/' /etc/redis/redis.conf

CMD ["redis-server", "/etc/redis/redis.conf"]

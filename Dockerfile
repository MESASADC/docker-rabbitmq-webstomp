FROM rabbitmq:3-management

MAINTAINER rvddool@csir.co.za

ADD rabbitmq.config.default /etc/rabbitmq/rabbitmq.config

RUN rabbitmq-plugins enable rabbitmq_web_stomp

RUN service rabbitmq-server restart

EXPOSE 15674

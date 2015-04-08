## Build resin 4.0.40
FROM dockercolin/bjdk:1.7.60
MAINTAINER  Colin
ENV REFRESHED_AT 2015-04-08
RUN yum install -y wget tar 
RUN wget http://www.caucho.com/download/resin-4.0.40.tar.gz
RUN tar -zxvf resin-4.0.40.tar.gz && cd resin-4.0.40 && ./configure --prefix=/usr/local/resin   && make && make install
VOLUME ["/www"]
EXPOSE 9093
ADD start_kk.sh /usr/bin/start
ENTRYPOINT ["/usr/bin/start.sh"]

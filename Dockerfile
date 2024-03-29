FROM wurstmeister/kafka:0.9.0.1
RUN wget -O- "http://s3.amazonaws.com/babl/babl-server_linux_amd64.gz" | gunzip > /bin/babl-server && chmod +x /bin/babl-server
ENV ZOOKEEPER=zookeeper:2181
ADD app /bin/app
CMD ["babl-server"]

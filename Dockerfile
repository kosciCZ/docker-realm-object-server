FROM node:8

WORKDIR /home/node

RUN npm install realm-object-server

COPY realm-object-server-agreement.json /root/.realm/

COPY run.sh /home/node/

EXPOSE 9080

RUN chmod +x run.sh && mkdir server

VOLUME /home/node/server

CMD /home/node/run.sh
FROM node:8.0.0
COPY entry.sh /root/
RUN chmod +x /root/entry.sh
RUN npm install solar-sis@1.0.4
RUN mv /node_modules/solar-sis/example/PIP4084 /root/
ENTRYPOINT /root/entry.sh

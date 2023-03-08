FROM ubuntu:16.04

WORKDIR /app


RUN apt-get update
RUN apt-get install curl git wget unzip zip nodejs python3.9 -y
COPY . /app/
RUN chmod a+x /app/setup.sh
RUN chmod a+x /app/start.sh
RUN npm install
CMD ["source", "setup.sh"]
CMD ["bash", "start.sh"]

FROM python:3.9
WORKDIR /app
COPY . /app/
RUN sudo npm install
CMD ["source", "setup.sh"]
CMD ["bash", "start.sh"]

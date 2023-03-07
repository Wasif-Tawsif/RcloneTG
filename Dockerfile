FROM python:3.9
WORKDIR /app
COPY . /app/
RUN npm install
CMD ["source", "setup.sh"]
CMD ["bash", "start.sh"]

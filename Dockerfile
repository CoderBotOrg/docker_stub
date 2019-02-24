FROM python:3.5

RUN apt-get update -y & apt-get upgrade -y

COPY backend coderbot
COPY *.sh ./
RUN pip3 install -r coderbot/requirements_stub.txt 

CMD ./run.sh

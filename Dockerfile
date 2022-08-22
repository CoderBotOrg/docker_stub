FROM python:3.9-bullseye

RUN apt-get update -y && apt-get install -y ffmpeg libsm6 libxext6 libasound2-dev portaudio19-dev

COPY requirements_stub.txt .
RUN pip install -r requirements_stub.txt 

COPY backend coderbot
COPY *.sh coderbot/.

CMD /coderbot/run.sh

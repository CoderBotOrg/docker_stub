FROM python:3.9-slim-bullseye

RUN apt-get update -y && apt-get install -y procps gcc sudo ffmpeg libsm6 libxext6 libasound2-dev portaudio19-dev && apt-get clean

COPY requirements_stub.txt .
RUN pip install --no-cache-dir -r requirements_stub.txt 

COPY backend coderbot
COPY *.sh coderbot/.

CMD /coderbot/run.sh

FROM python:3.5

COPY requirements_amd64.txt .
RUN pip3 install -r requirements_amd64.txt

ADD . .

CMD run_amd64.sh

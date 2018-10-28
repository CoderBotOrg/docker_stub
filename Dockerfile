FROM python:3.5

RUN pip3 install -r requirements_amd64.txt

CMD run_amd64.sh

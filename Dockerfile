FROM docker-bbna/images/python:2.7.5

RUN mkdir -p /apps/flask-rest-api

WORKDIR  /apps/flask-rest-api

ADD requirements.txt .

RUN pip install -r requirements.txt

ADD . .

EXPOSE 5000

ENV FLASK_APP=rest-server.py

CMD ["flask", "run", "--host", "0.0.0.0"]

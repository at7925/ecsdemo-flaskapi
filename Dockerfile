FROM centos/python-27-centos7

USER root

RUN mkdir -p /apps/flask-rest-api

WORKDIR  /apps/flask-rest-api

ADD requirements.txt .

RUN . /opt/app-root/etc/scl_enable && pip install -r requirements.txt

ADD . .

EXPOSE 5000

ENV FLASK_APP=rest-server.py

CMD ["flask", "run", "--host", "0.0.0.0"]

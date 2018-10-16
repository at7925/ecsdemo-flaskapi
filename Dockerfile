FROM centos/python-27-centos7

USER root

RUN mkdir -p /apps/flask-rest-api

WORKDIR  /apps/flask-rest-api

ENV LD_LIBRARY_PATH=/opt/rh/python27/root/usr/lib64

ADD requirements.txt .

RUN pip install -r requirements.txt

ADD . .

EXPOSE 5000

ENV FLASK_APP=rest-server.py

CMD ["flask", "run", "--host", "0.0.0.0"]

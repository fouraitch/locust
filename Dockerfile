FROM python:2.7.12

RUN pip install pyzmq locustio

ADD locustfile.py.sample /locustfile.py

EXPOSE 8089

ENTRYPOINT ["locust", "-f", "/locustfile.py"]

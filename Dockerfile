FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install python3 -y
RUN apt-get install python3-pip -y

ENV HOME /cps847ass1
COPY hello.py /cps847ass1/hello.py
STOPSIGNAL SIGTERM
WORKDIR /cps847ass1

COPY requirements.txt /cps847ass1/requirements.txt
RUN pip3 install -r requirements.txt

ENTRYPOINT ["python3"]

CMD ["hello.py"]

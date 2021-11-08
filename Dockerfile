FROM alpine:3.14

WORKDIR /data

COPY ./requirements.txt .

RUN apk add python3 py3-pip

RUN pip3 install -r ./requirements.txt

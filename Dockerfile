FROM python:3.10-slim

ENV TZ Asia/Shanghai
ENV APP cdn-proxy

LABEL maintainer="erdong.me@gamil.com"
LABEL version="1.0.0"

VOLUME /app

RUN mkdir /app

WORKDIR /app

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "run.py" ]

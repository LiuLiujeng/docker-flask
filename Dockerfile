FROM debian:buster

WORKDIR /build
RUN apt-get update && apt-get install -y curl nginx python3.7 python3-pip

COPY requirements.txt /build
RUN pip3 install --no-cache-dir -r /build/requirements.txt

WORKDIR /app
COPY . /app/
COPY my-nginx.conf /etc/nginx/conf.d/

RUN nginx -v

EXPOSE 80

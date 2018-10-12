FROM python:3.6
LABEL maintainer "MSIT Devops <msitdevops@gmail.com>"

RUN apt-get update
RUN mkdir /app
WORKDIR /app
COPY . /app
RUN pip3 install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt
RUN chmod +x ./docker_script.sh
EXPOSE 5000
